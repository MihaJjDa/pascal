program ex5p51 (input, output);
var
  x, y, i, ld, rd: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 5.51');
  writeln('____________________________________');
  writeln('Enter a positive integer:');
  read(x);
  i := 1;
  while x div i > 9 do
    i := i * 10;
  ld := 0;
  rd := 0;
  while (ld = rd) and (x > 9) do
    begin
      ld := x div i;
      rd := x mod 10;
      x := x mod i    div 10;
      i := i div 100;
    end;
  if (ld = rd) then
    writeln('This number is the palindrom')
  else
    writeln('This number is not the palindrom');
  readln;readln;
end.