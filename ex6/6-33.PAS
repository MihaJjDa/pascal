program ex6p33 (input, output);
var
  c: char;
  t, l: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.33');
  writeln('____________________________________');
  writeln('Enter a number in the eightfold notation with a space at the end:');

  read(c);
  write('This number in the fivefold notation: ');
  while c <> ' ' do
    begin
      t := t * 8 + ord(c) - ord('0');
      read(c);
    end;

  l := 1;
  while t div l > 4 do
    l := l * 5;
  while l > 0 do
    begin
      write(chr(ord('0') + t div l));
      t := t mod l;
      l := l div 5;
    end;

  readln;readln;
end.