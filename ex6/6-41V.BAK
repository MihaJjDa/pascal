program ex6p41v (input, output);
var
  h: char;
  s, k: integer;
  o: boolean;
begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.41v');
  writeln('_____________________________________');
  writeln('Enter a text with a point at the end:');

  read(h);
  s := 0;
  o := true;
  while (h <> '.') and o do
    begin
      s := s + ord(h) - ord ('0');
      k := ord (h) - ord('0');
      if (h < '0') or (h > '9') then
        o := false;
      read(h);
    end;

   if o then
     if (s mod 3 <> 0) or (k mod 2 <> 0) then
       o := false;

   writeln('This text is decimal notation of number which is six-fold: ', o);

   readln;readln;
end.