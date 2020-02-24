program ex9p26 (input, output);
{$R+,B+}
const
  m = 3;

var
  l, q, w: array [1..m, 1..m] of integer;
  i, j, p, k, n: integer;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex9.26');
  writeln('___________________________________');

  writeln('Enter a matrix ', m, 'x', m, ':');
  for i := 1 to m do
    for j := 1 to m do
      read(l[i,j]);
  writeln('Enter a power:');
  read(n);

  for i := 1 to m do
    for j := 1 to m do
      if i = j then
        q[i,j] := 1
      else
        q[i,j] := 0;


  for i := 1 to m do
    for j := 1 to m do
      w[i,j] := 0;
  for p := 1 to n do
    begin
      for i := 1 to m do
        for j := 1 to m do
          for k := 1 to m do
            w[i,j] := q[i,k] * l[k,j] + w[i,j];
      q := w;
      for i := 1 to m do
        for j := 1 to m do
          w[i,j] := 0;
    end;

  for i := 1 to m do
    begin
      for j := 1 to m do
        write(q[i,j]:4);
      writeln;
    end;

  readln;readln;
end.
