program ex9p32 (input, output);
{$R+,B+}
const
  n = 5;

var
  l: array [1..n, 1..n] of integer;
  i, j: integer;
  o: boolean;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex9.32');
  writeln('___________________________________');

  writeln('Enter a matrix ', n, 'x', n, ':');
  for i := 1 to n do
    for j := 1 to n do
      read(l[i,j]);

  o := true;
  i := 1;
  while o and (i < n + 1) do
    begin
      j := 1;
      while o and (j < n + 1) do
        begin
          o := l[i,j] = l[j,i];
          j := j + 1;
        end;
      i := i + 1;
    end;

  write('This matrix is simmetric about the main diagonal: ', o);
  readln;readln;
end.
