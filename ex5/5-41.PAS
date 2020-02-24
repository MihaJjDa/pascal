program ex5p41 (input, output);
var
  x, y, k : integer;
begin
  writeln('_________________________________');
  writeln('Mikhalyov Danila, group 112, 5-41');
  writeln('_________________________________');
  k := 0;
  writeln('Enter a sequence of integers followed by 0');
  read(x);
  read(y);
  while y <> 0 do
    begin
      if (x > 0) <> (y > 0) then
        k := k + 1;
      x := y;
      read(y);
    end;
  writeln('The number of changes of a sign: ', k);
  readln;readln;
end.