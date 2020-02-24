program ex11p36(input, output);
{$R+,B+}

const
  n = 6;
  empstr = '      '; {N spaces}

type
  str = packed array [1..6] of char;

procedure readword(var a: str; var c: char);
  var
    i, j: integer;
  begin
    i := 1;
    while (c <> ',') and (c <> '.') do
      begin
        a[i] := c;
        i := i + 1;
        read(c);
      end;
    for j := i to n do
      a[i] := ' ';
    if c <> '.' then
      read(c);
  end;

procedure readtext;
  var
    a, b, c: str;
    sym: char;
  begin
    a := empstr;
    b := empstr;
    c := empstr;
    read(sym);
    writeln('The words between same words:');
    while sym <> '.' do
      begin
        readword(c, sym);
        if a = c then
          writeln(b);
        a := b;
        b := c;
      end;
  end;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Daniel, group 112, ex11.36');
  writeln('____________________________________');
  writeln('Enter a text with the point at the end');
  readtext;
  readln;readln;
end.