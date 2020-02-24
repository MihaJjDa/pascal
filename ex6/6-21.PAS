program ex6p21 (input, output);
var
  a, b, c: char;
  k: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.21');
  writeln('____________________________________');
  writeln('Enter a text with the point in the end:');

  k := 0;
  a := '.';
  b := '.';
  read(c);
  while c <> '.' do
    begin
      if (a = 'a') and (b = 'b') and (c = 'c') then
        k := k + 1;
      a := b;
      b := c;
      read(c);
    end;

  writeln('The number of subsequations abc in the text: ', k);
  readln;readln;
end.