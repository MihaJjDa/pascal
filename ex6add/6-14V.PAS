program ex6p14v (input, output);
var
  c, h: char;
begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.14v');
  writeln('_____________________________________');
  for c := '0' to '9' do
    begin
      for h := '0' to '9' do
        begin
          write(chr(ord('0') + (ord(c) + ord(h) - 2 * ord('0')) mod 10));
        end;
      writeln;
    end;
  readln;
end.