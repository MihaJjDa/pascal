program ex8p28zh (input, output);
{$R+,B+}

const
  n = 10;

var
  l: array [1..n] of real;
  i, j: integer;
  k: real;

begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.28zh');
  writeln('_____________________________________');

  writeln('Enter a sequence of numbers (Members: ', n, '):');
  for i := 1 to n do
    read(l[i]);

  j := 1;
  for i := 1 to n do
    if l[i] <> 0 then
      begin
        k := l[i];
        l[i] := l[j];
        l[j] := k;
        j := j + 1;
      end;

  writeln('This sequence with 0 at the end:');
  for i := 1 to n do
    write(l[i]:3:1, ' ');

  readln;readln;
end.