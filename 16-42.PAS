program ex16p42(output);

const
  len = 10;

type
  str = packed array [1..len] of char;
  list = ^link;
  link = record
           cell: str;
           next: list;
         end;

var
  friends: text;
  cirlist: list;
  n: integer;

procedure readstr(var f: text; var s: str);
  var
    i: integer;
  begin
    i := 1;
    while not eoln(friends) and (i <= 10) do
      begin
        read(friends, s[i]);
        i := i + 1;
      end;
    for i := i to 10 do
      s[i] := ' ';
  end;

function createcirlist(var f: text): list;
  var
    l, p: list;
  begin
    n := 0;
    l := nil;
    while not eof(f) do
      begin
        if l = nil then
          begin
            new(l);
            readstr(f, l^.cell);
            p := l;
          end
        else
          begin
            new(p^.next);
            p := p^.next;
            readstr(f, p^.cell);
          end;
        readln(f);
        n := n + 1;
      end;
    if l <> nil then
      p^.next := l;
    createcirlist := l;
    writeln('Number of persons: ', n);
  end;

procedure del(var p: list);
  var
    q: list;
  begin
    q := p;
    p := p^.next;
    dispose(q);
  end;

procedure counting(cl: list);
  var
    k, i: integer;
    p: list;
  begin
    writeln('Enter a step of the count:');
    readln(k);
    writeln('There are people in the order of going out from froup:');
    p := cl^.next;
    while p^.next <> cl do
      p := p^.next;
    while n <> 0 do
      begin
        i := k;
        while i > n do
          i := i - n;
        for i := 1 to i - 1 do
          p := p^.next;
        with p^ do
          begin
            writeln(next^.cell);
            del(next);
          end;
        n := n - 1;
      end;
  end;

begin
  writeln('__________________________________');
  writeln('Mikhalyov Danila, group 112, 16.42');
  writeln('__________________________________');
  assign(friends, 'FRIENDS.TXT');
  reset(friends);
    cirlist := createcirlist(friends);
  close(friends);
  counting(cirlist);
  readln;
end.
{110 - ƒ‹“›…!!!!!!}
{’‚Ÿ ƒ“€ - 111!!}
{ŒŸ ƒ“€ - 112!!!}