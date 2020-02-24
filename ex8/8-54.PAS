program ex8p54(input, output);
{$R+,B+}

const
  n = 3;

var
  l, m: array [1..n] of integer;
  min, i, j: integer;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.54');
  writeln('___________________________________');
  writeln('Enter the first sequence of integer ', '(Members: ', n, '):');
    for i := 1 to n do
      read(l[i]);
  writeln('Enter the second sequence of integer ', '(Members: ', n, '):');
    for i := 1 to n do
      read(m[i]);

  min := maxint;
  for i := 1 to n do
    begin
      j := 1;
      while (l[i] <> m[j]) and (j <= n) do
        begin
          j := j + 1;
        end;
      if j = n + 1 then
        if l[i] < min then
          min := l[i];
    end;

  writeln('The minimum: ', min);
  readln;readln;
end.