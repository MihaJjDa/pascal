program ex5p46 (input, output);
var
  x, y, d, n, i: integer;
  o: boolean;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 5.46');
  writeln('____________________________________');
  writeln('Enter a number of members of a sequence');
  readln(n);
  writeln('Enter a sequation of integers: ');
  read(x);
  d := 1;
  for i := 2 to n do
    begin
      read(y);
      if x < y then
        begin
          x := y;
          d := d + 1;
        end;
    end;
  writeln('The number of different members of the sequation: ', d);
  readln;readln;
end.