program ex8p59 (input, output);
{$R+,B+}
var
  l: array ['a'..'z'] of integer;
  w: array ['a'..'z'] of boolean;
  c, a: char;
  max: integer;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.59');
  writeln('___________________________________');
  writeln('Enter a text with the point at the end:');

  for c := 'a' to 'z' do
    begin
      l[c] := 0;
      w[c] := false;
    end;

  read(c);
  while c <> '.' do
    begin
      while (c <> ',') and (c <> '.') do
        begin
          w[c] := true;
          read(c);
        end;
      for a := 'a' to 'z' do
        if w[a] then
          begin
            l[a] := l[a] + 1;
            w[a] := false;
          end;
      if c <> '.' then
        read(c);
    end;

  max := 0;
  for c := 'a' to 'z' do
    if l[c] > max then
      begin
        max := l[c];
        a := c;
      end;

  writeln('The most occuring letter: ', a);
  readln;readln;
end.