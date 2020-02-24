program ex8p52 (input, output);
{$R+,B+}

const
  n = 9;

var
  l: array [1..n] of integer;
  i, a: integer;
  s, b, min: real;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.52');
  writeln('___________________________________');
  writeln('Enter a sequence of integers ', '(', n, '):');
  for i := 1 to n do
    read(l[i]);

  s := 0;
  for i := 1 to n do
    s := s + l[i];

  a := 0;
  s := s / n;
  min := maxint;
  for i := 1 to n do
    if abs(l[i] - s) < min then
      begin
        a := i;
        min := abs(l[i] - s);
      end;

  writeln('The number: ', a);
  write('The integer: ', l[a]);
  readln;readln;
end.