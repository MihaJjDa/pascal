program ex5p54 (input, output);
var
  n, i, j: integer;
  o: boolean;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 5.54');
  writeln('____________________________________');
  writeln('Enter a positive integer');
  read(n);
  writeln('Primes less n:');
  for i := 2 to n do
    begin
      j := 2;
      o := true;
      while sqr(j) < i do
        begin
          if i mod j = 0 then
            o := false;
          j := j + 1;
        end;
      if o then
      write(i, ' ');
    end;
 readln;readln;
end.