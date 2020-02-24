program ex12p33(input, output);

procedure move(n: integer; a, b, c: char);
  begin
    if n > 1 then
      move(n - 1, a, c, b);
    writeln(n, ': ', a, ' -> ', b);
    if n > 1 then
      move(n - 1, c, b, a);
  end;

var
  n: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.33');
  writeln('____________________________________');
  writeln('Enter a number of disks:');
  read(n);
  writeln('The steps:');
  move(n, '1', '2', '3');
  readln;readln;
end.