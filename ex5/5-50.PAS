program ex5p50 (input, output);
var
  x, s, y: real;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 5.50');
  writeln('____________________________________');
  writeln('Enter a sequence of numbers:');
  read(x);
  y := 0;
  s := 0;
  while x > 0 do
    begin
      y := y + x;
      s := s + y;
      read(x);
    end;
  writeln(s:1:5);
  readln;readln;
end.