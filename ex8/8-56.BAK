program ex8p56 (input, output);
{$R+,B+}

var
  l: array ['a'..'z'] of boolean;
  k: char;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.56');
  writeln('___________________________________');

  for k := 'a' to 'z' do
    l[k] := false;

  writeln('Enter a text with the point at the end: ');
  read(k);
  writeln('The result: ');
  while k <> '.' do
    begin
      l[k] := true;
      read(k);
    end;

  for k := 'a' to 'z' do
    if l[k] then
      write(k);

  readln;readln;
end.