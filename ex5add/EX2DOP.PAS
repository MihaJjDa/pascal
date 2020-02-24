program ex2dop;
var
  a,t: integer;
begin
  writeln('_____________________________________________');
  writeln('Mikhalyov Danila, gruppa 112, zadacha 1 (dop)');
  writeln('_____________________________________________');
  write('Enter a positive integer: ');
  read(a);
  t := 1;
  while a div t <> 0 do
    if ((a mod (t * 10)) - (a mod t)) div t = 3 then
      a := (a mod t + (a div (t * 10)) * t)
    else
      t := t * 10;
  writeln('The result: ', a);
  readln;readln;
end.