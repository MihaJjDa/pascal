program ex6p23g (input, output);
var
  c, h: char;
begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.23g');
  writeln('_____________________________________');

  writeln('Enter a text:');
  read(h,c);
  writeln('The result:');
  while (c <> '.') do
    begin
      if (h = 'p') and (c = 'h') then
        h := 'f'
      else
        begin
          write(h);
          h := c;
        end;
      read(c);
    end;
  write(h);

  readln;readln;
end.