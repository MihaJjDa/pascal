program ex6p41b (input, output);
var
  h: char;
  s: integer;
  o: boolean;
begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.41b');
  writeln('_____________________________________');
  writeln('Enter a text with a point at the end:');

  read(h);
  s := 0;
  o := true;
  while (h <> '.') and o do
    begin
      s := s + ord(h) - ord ('0');
      if (h < '0') or (h > '7') then
        o := false;
      read(h);
    end;

   if o then
     if s mod 2 <> 0 then
       o := false;

   writeln('This text is sevenfold notation of number which is even: ', o);

   readln;readln;
end.