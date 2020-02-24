program ex5p24 (input, output);
const
  eps = 1E-4;
var
  a, b, x: real;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 5-24');
  writeln('____________________________________');
  a := -100;
  b := 100;
  repeat
    x := (a+b)/2;
    if pi*x*x*x - exp(1)*sqr(x) + (2*exp(1)+1)*x + sqr(pi) > 0 then
      b := x
    else
      a := x;
  until abs(pi*x*x*x - exp(1)*sqr(x) + (2*exp(1)+1)*x + sqr(pi)) < eps;
  writeln(x:1:5);
  readln;
end.