program ex8p53 (input, output);
{$R+,B+}

const
  n = 10;

var
  l, m: array [1..n] of integer;
  max, i, j, a, b: integer;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.53');
  writeln('___________________________________');
  writeln('Enter coordinates of points ', '(Points: ', n, '):');

  for i := 1 to n do
    begin
      read(l[i]);
      read(m[i]);
    end;

  a:= 1;
  b := 2;
  max := 0;
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      begin
        if sqr(l[i] - l[j]) + sqr(m[i] - m[j]) > max then
          begin
            max := sqr(l[i] - l[j]) + sqr(m[i] - m[j]);
            a := i;
            b := j;
          end;
      end;

  writeln('Numbers of points with the largest distance: ', a, ', ', b);
  readln;readln;
end.
