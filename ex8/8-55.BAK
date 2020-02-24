program ex8p55 (input, output);
{$R+,B+}

const
  n = 10;

var
  l: array [1..n] of integer;
  k, i, j: integer;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.55');
  writeln('___________________________________');

  writeln('Enter sequence of integers (Members: ', n, '):');
  for i := 1 to n do
    read(l[i]);

  k := 0;
  for i := 1 to n-1 do
    for j := i + 1 to n do
      begin
        if l[i] > l[j] then
          k := k + 1;
      end;

  writeln('The number of inversions: ', k);
  readln;readln;
end.