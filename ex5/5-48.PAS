program ex5p48 (input, output);
var
  x, max, d, n, i: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 5.48');
  writeln('____________________________________');
  writeln('Enter a number of members of a sequence');
  readln(n);
  writeln('Enter a sequation of integers: ');
  d := 0;
  max := 0;
  for i := 1 to n do
    begin
      read(x);
      if x = 0 then
        begin
          d := d + 1;
        end
      else
        if d <> 0 then
          begin
            if max < d then
              max := d;
            d := 0;
          end;
    end;
  if max < d then
    max := d;
  writeln(max);
  readln;readln;
end.