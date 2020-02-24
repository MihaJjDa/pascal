program ex9p32 (input, output);
{$R+,B+}

const
  n = 5; {Matrix dimension}

var
  pairs: array ['a'..'z', 'a'..'z'] of 0..MaxInt;
  i, j, c, fs, ls: char;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex9.32');
  writeln('___________________________________');

  for i := 'a' to 'z' do
    for j := 'a' to 'z' do
      pairs[i,j] := 0;

  writeln('Enter a text:');
  read(fs);
  ls := fs;
  while c <> '.' do
    begin
      while (c <> ' ') and (c <> '.') do
        begin
          ls := c;
          read(c);
        end;
      if c = ' ' then
        begin
          read(c);
          fs := c;
        end;
      pairs[fs,ls] := pairs[fs,ls] + 1;
    end;

  fs := 'a';
  ls := 'a';
  for i := 'a' to 'z' do
    for j := 'a' to 'z' do
      if pairs[i,j] > pairs[fs,ls] then
        begin
          fs := i;
          ls := j;
        end;

  writeln('The most frequent pair: ', fs, ',', ls);
  readln;readln;
end.