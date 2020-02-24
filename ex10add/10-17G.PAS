program ex10p17g (input, output);
{$R+,B+}

const
  n = 50;
  k = 8;

var
  l: packed array [1..n, 1..k] of char;
  a: packed array [1..26] of char;
  c: char;
  i, j, m: integer;
  o: boolean;

begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex10.17g');
  writeln('_____________________________________');
  a := 'abcdefghijklmnopqrstuvwxyz'; {Length = 26}
  for i := 1 to n do
    l[i] := '        ';


  writeln('Enter a text (MaxNumWords: ', n, '), (MaxLenWords: ', k, '):');
  read(c);
  m := 1;
  while c <> '.' do
    begin
      j := 1;
      while (c <> ' ') and (c <> '.') do
        begin
          l[m,j] := c;
          j := j + 1;
          read(c);
        end;
      while (c = ' ') do
        read(c);
      m := m + 1;
    end;

  writeln('Words are the begining of alphabet:');
  for i := 1 to m - 2 do
    begin
      j := 1;
      o := true;
      while o and (l[i,j] <> ' ') do
        begin
          o := l[i,j] = a[j];
          j := j + 1;
        end;
      if o and (l[i] <> l[m - 1]) then
        writeln(l[i]);
    end;

  readln;readln;
end.