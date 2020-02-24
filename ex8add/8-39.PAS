program ex8p39 (input, output);
{$R+,B+}
const
  n = 10;
  k = 11;
var
  l: array [1..n] of 1..k;
  y, a, b, x: 1..k;
begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex8.39');
  writeln('___________________________________');

  writeln('Enter a number from 1 to 11:');
  read(y);
  a := 1;
  x := 1;
  repeat
    if a <> y then
      begin
        l[x] := a;
        x := x + 1;
      end;
    a := a + 1;
  until a = 11;
  if y <> 11 then
    l[10] := a;
  writeln('Array: ');
  for b := 1 to 10 do
    writeln(l[b]);


  write('There is not number in the sequation: ');
  if l[1] = 2 then
    write(1)
  else
    if l[10] = 10 then
      write(11)
    else
      begin
        a := 1;
        b := n;
        repeat
          x := (a + b) div 2;
          if l[x] = x then
            a := x
          else
          b := x;
        until (l[a]+2 = l[b]) and (a + 1 = b);
        write(b);
      end;
  readln;readln;
end.