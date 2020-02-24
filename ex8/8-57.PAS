program ex8p57 (input, output);
{$R+,B+}

const
  n = 10;

var
  l: array [1..n] of char;
  b: array [1..n] of boolean;
  k, j: integer;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.57');
  writeln('___________________________________');

  writeln('Enter a text (Length: ', n, '):');
    for k := 1 to n do
      begin
        read(l[k]);
        b[k] := true;
      end;

  for k := n downto 2 do
    begin
      j := k - 1;
      while b[k] and (j > 0) do
        begin
          b[k] := not(l[k] = l[j]);
          j := j - 1;
        end;
    end;

  for k := 1 to n do
    begin
      if b[k] then
        write(l[k]);
    end;

  readln;readln;
end.