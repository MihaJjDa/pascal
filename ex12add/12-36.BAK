program ex12p36 (input, output);
{$R+,B+}

const
  n = 5;

type
  vector = array [1..n] of integer;

var
  a: vector;
  s: integer;

procedure inputdata(var a: vector; var s: integer);
  var
    i: integer;
  begin
    writeln('Enter ', n, ' integers:');
    for i := 1 to n do
      read(a[i]);
    writeln('Enter an integer:');
    read(s);
  end;

function combin(var a: vector; s: integer): boolean;
  var
    i, j, k, l : integer;
    c: vector;
    ok: boolean;
  begin
    ok := false;
    if s > 0 then
      begin
        for i := 1 to n do
          begin
            if (a[i] > s) then
              a[i] := 0;
            c[i] := a[i];
          end;

        i := n;
        while not ok and (i > 0) do
          begin
            if a[i] > 0 then
              if s = a[i] then
                begin
                  ok := true;
                  for j := 1 to i - 1 do
                    a[j] := 0;
                end
              else
                begin
                  l := i;
                  while not ok and (l > 0) do
                    begin
                      j := a[i];
                      k := s - a[i];
                      a[i] := 0;
                      ok := combin(a, k);
                      if ok then
                        a[i] := j;
                      l := l - 1;
                    end;
                end;
            i := i - 1;
          end;
      end;
    combin := ok;
  end;

procedure outputdata(var a: vector; s: integer);
  var
    i: integer;
  begin
    if combin(a, s) then
      begin
        write('The sum of ');
        for i := 1 to n do
          if a[i] > 0 then
            write(a[i], ', ');
        write('is ', s);
      end
    else
      writeln('There is no combination of numbers which sum is ', s);
  end;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12-36');
  writeln('____________________________________');
  inputdata(a, s);
  outputdata(a, s);
  readln;readln;
end.