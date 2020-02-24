program ex6p26v (input, output);
var
  a, c, h: char;
  k: integer;
begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.26v');
  writeln('_____________________________________');
  writeln('Enter a text:');

  k := 0;
  read(c);
  while c <> '.' do
    begin
      a := c;
      while (c <> ',') and (c <> '.') do
        begin
          h := c;
          read(c);
        end;
      if a = h then
        k := k + 1;
      if c <> '.' then
        read(c);
    end;

  writeln('The number of words with the same begin and end: ', k);
  readln;readln;
end.