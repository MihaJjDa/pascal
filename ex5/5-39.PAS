program ex5p39 (input, output);
var
  a, b, c, f: boolean;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 5-39');
  writeln('____________________________________');
  writeln('-----------------------');
  writeln('  A     B     C     F  ');
  writeln('-----------------------');
  for a := true downto false do
    for b := true downto false do
      for c := true downto false do
        begin
          f := (a and b) or not (b or c);
          writeln(a:5, ' ', b:5, ' ', c:5, ' ', f:5, ' ');
        end;
  readln;
end.