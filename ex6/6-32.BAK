program ex6p32 (input, output);
var
  c: char;
  t, max: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.32');
  writeln('____________________________________');
  writeln('Enter a sequence of numbers in the sevenfold notation:');

  max := 0;
  read(c);
  while c <> '.' do
    begin
      t := 0;
      while (c <> ' ') and (c <> '.') do
        begin
          t := t * 7 + ord(c) - ord('0');
          read(c);
        end;
      if t > max then
        max := t;
      if c <> '.' then
        read(c);
    end;
  writeln('The maximum number in the decimal notation: ', max);
  readln;readln;
end.