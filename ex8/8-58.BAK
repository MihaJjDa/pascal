program ex8p58 (input, output);
{R+,B+}

const
  n = 10;

var
  l: array [1..n] of char;
  b: array [1..n] of boolean;
  m, k, j: integer;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.58');
  writeln('___________________________________');

  writeln('Enter a text with the point at the end (MaxLength: ', n, '):');
  k := 1;
  read(l[k]);
  b[k] := true;
  while (l[k] <> '.') do
    begin
      k := k + 1;
      read(l[k]);
      b[k] := true;
    end;
  b[k] := false;

  for j := k - 1 downto 2 do
    begin
      m := j - 1;
      while b[j] and (m > 0) do
        begin
          b[j] := not(l[j] = l[m]);
          m := m - 1;
        end;
    end;

  m := 0;
  for j := 1 to k - 1 do
    if b[j] then
      m := m + 1;

  writeln('The number of different symbols: ', m);
  readln;readln;
end.