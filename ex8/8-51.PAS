program ex8p51 (input, output);
{$R+,B+}

const
  n = 10;

var
  l: array [1..n] of integer;
  s, max, min, i, a, b: integer;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.51');
  writeln('___________________________________');
  writeln('Enter a sequence of integers ', '(', n, '): ');
  for i := 1 to n do
    read(l[i]);

  max := l[1];
  min := l[1];
  a := 1;
  b := 1;
  for i := 2 to n do
    begin
      if l[i] < min then
        begin
          min := l[i];
          a := i;
        end;
      if l[i] > max then
        begin
          max := l[i];
          b := i;
        end;
    end;

  s := 0;
  if a < b then
    for i := a to b do
      s := s + l[i]
  else
    for i := b to a do
      s := s + l[i];

  writeln('The sum from min to max: ', s);
  readln;readln;
end.