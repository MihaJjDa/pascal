program ex6p41k (input, output);
var
  h: char;
  s, k: integer;
  o: boolean;
begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.41k');
  writeln('_____________________________________');
  writeln('Enter a text:');

  read(h);
  o := (h >= '0') and (h <= '9');
  if o then
    begin
      s := ord(h);
      read(h);
    end;

  while (h <> '.') and o do
    begin
      k := ord(h);
      o := (s + 1 = k);
      s := k;
      read(h);
    end;

  writeln('This text if subsequation of 0123456789: ', o);
  readln;readln;
end.