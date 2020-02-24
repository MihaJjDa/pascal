program ex5p42 (input, output);
var
  n, i: integer;
  x, y, r: real;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 5.42');
  writeln('____________________________________');
  writeln('Enter a number of points');
  read(n);
  r := 0;
  writeln('Enter coordinates of points');
  for i := 1 to n do
    begin
      read(x);
      read(y);
      if sqr(x) + sqr(y) > sqr(r) then
        r := sqrt(sqr(x) + sqr(y));
    end;
  writeln('The smallest radius of the circle with this points: ', r:1:5);
  readln;readln;
end.