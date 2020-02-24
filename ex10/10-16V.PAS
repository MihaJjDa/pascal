program ex10p16v (input, output);
{$R+,B+}

const
  N = 30; {MaxNumber of words}
  K = 5;  {MaxLength of words}
  ES = '     '; {K spaces}

var
  text: packed array [1..n, 1..k] of char; {Array for words}
  c: char;
  i, j, numw: integer;
  o: boolean;

begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex10.16v');
  writeln('_____________________________________');
  for i := 1 to N do
    text[i] := ES;


  writeln('Enter a text (MaxNumWords: ', n, '), (MaxLenWords: ', k, '):');
  read(c);
  numw := 1;
  while    c <> '.' do
    begin
      j := 1;
      while (c <> ',') and (c <> '.') do
        begin
          text[numw,j] := c;
          j := j + 1;
          read(c);
        end;
      if c = ',' then
        read(c);
      numw := numw + 1;
    end;


  for i := 1 to numw - 1 do
    for j := i + 1 to numw - 1 do
      if text[i] = text[j] then
        text[j] := ES;

  for i := 1 to numw - 1 do
    begin
      if text[i] <> ES then
        writeln(text[i]);
    end;

  readln;readln;
end.