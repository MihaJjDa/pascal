program ex6p34 (input, output);
var
  c, h: char;
  sign, s: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.34');
  writeln('____________________________________');
  c := '+';
  s := 0;
  writeln('Enter the sequence of digits: a+-b+-c+-..+-n.');
  repeat
      if c = '+' then
        sign := 1;
      if c = '-' then
        sign := -1;
      read(h);
      read(c);
      s := s + sign * (ord(h) - ord('0'));
  until c = '.';
  writeln('Result: ', s);
  readln;readln;
end.