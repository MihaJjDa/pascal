program ex6p41e (input, output);
var
  h: char;
  s, k: integer;
  o: boolean;
begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.41e');
  writeln('_____________________________________');
  writeln('Enter a text:');

  o := true;
  s := 0;
  read(h);
  if (h >= '1') or (h <= '9') then
    s := ord(h) - ord('0')
  else
    o := false;

  k := -1;
  while (h <> '.') do
    begin
      read(h);
      k := k + 1;
    end;

  if k <> s then
    o := false;

  writeln('The number of letters and the number from text are equally: ', o);

  readln;readln;
end.