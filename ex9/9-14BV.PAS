program ex9p14bv (input, output);
{$R+,B+}

var
  l: array [1..10, 1..10] of integer;
  i, j: integer;

begin
  writeln('_____________________________________');
  writeln('Mikhalyov Danila, group 112, ex9.14bv');
  writeln('_____________________________________');

  for i := 0 to 9 do
    for j := 1 to 10 do
      l[i+1,j] := i * 10 + j;

  for i := 1 to 10 do
    begin
      for j := 1 to 10 do
        write(l[i,j]:4);
      writeln;
    end;


  writeln('________________________________________');

  for i := 1 to 10 do
    for j := i to 10 do
      begin
        l[j,i] := 0;
        l[i,j] := j - i + 1;
      end;

  for i := 1 to 10 do
    begin
      for j := 1 to 10 do
        write(l[i,j]:4);
      writeln;
    end;

  readln;
end.