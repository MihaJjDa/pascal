program ex6p31 (input, output);
var
  l, s, k, i: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.31');
  writeln('____________________________________');
  writeln('Enter an integer:');
  read(k);
  writeln('The numbers in threefold notation from 0 to ', k, ':');
  for i := 0 to k do
    begin
      s := i;
      l := 1;
      while s div l > 2 do
        l := l * 3;
      while l > 0 do
        begin
          write(chr(ord('0') + s div l));
          s := s mod l;
          l := l div 3;
        end;
      writeln;
    end;

  readln;readln;
end.