program ex10p17zh (input, output);
{$R+,B+}

const
  n = 50;
  k = 8;

var
  l: packed array [1..n, 1..k] of char;
  c: char;
  i, j, m, p: integer;
  o: boolean;

begin
  writeln('______________________________________');
  writeln('Mikhalyov Danila, group 112, ex10.17zh');
  writeln('______________________________________');
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

  writeln('Words cosist of different letters:');
  for i := 1 to m - 2 do
    begin
      j := 1;
      o := true;
      while (l[i,j] <> ' ') and o do
        begin
          p := j + 1;
          while (l[i,p] <> ' ') and o do
            begin
              o := l[i,j] <> l[i,p];
              p := p + 1;
            end;
          j := j + 1;
        end;
      if o and (l[i] <> l[m - 1]) then
        writeln(l[i]);
    end;

  readln;readln;
end.