program ex5p7d (input, output);
var
  x, max, k : integer;
begin
  writeln('_________________________________');
  writeln('Mikhalyov Danila, group 112, 5-7d');
  writeln('_________________________________');
  k := 1;
  writeln('Enter a sequence of natural numbers followed by 0');
  read(x);
  while x <> 0 do
    begin
      if x > max then
        begin
          k := 0;
          max := x;
        end;
      if x = max then
        k := k + 1;
      read(x);
    end;
  writeln('The number of repetitions of the maximum number: ', k);
  readln;readln;
end.