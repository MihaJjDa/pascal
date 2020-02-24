program ex10p19 (input, output);
{$R+,B+}

const
  n = 20;

var
  l, m: packed array [1..n] of char;
  a: packed array [1..52] of char;
  i, j: integer;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex10.19');
  writeln('____________________________________');
  a := 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz'; {Length = 52}

  writeln('Enter a text (Length: ', n, '):');
  for j := 1 to n do
    begin
      read(l[j]);
      m[j] := ' ';
    end;

  for j := 1 to n do
    begin
      i := 1;
      while (m[j] = ' ') and (i < 53) do
        begin
          if l[j] = a[i] then
            m[j] := '-';
          i := i + 1;
        end;
    end;

  writeln(l);
  writeln(m);
  readln;readln;
end.