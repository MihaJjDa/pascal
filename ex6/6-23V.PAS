program ex6p23v (input, output);
var
  c, h: char;
begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.23v');
  writeln('_____________________________________');
  writeln('Enter a text:');

  h := '.';
  read(c);
  writeln('The result:');
  while c <> '.' do
    begin
      if not((h = 'c') and (c = 'b')) then
        write(c);
      h := c;
      read(c);
    end;

  readln;readln;
end.