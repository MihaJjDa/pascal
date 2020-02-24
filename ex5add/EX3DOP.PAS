program ex3dop;

var
  a, t, max: integer;

begin
  writeln('_____________________________________________');
  writeln('Mikhalyov Danila, gruppa 112, zadacha 1 (dop)');
  writeln('_____________________________________________');
  write('Enter an integer not less than 10: ');
  read(a);
  t := 1;
  max := 0;
  while a div t <> 0 do
    begin
      if max < (a mod t) + (a div (t * 10)) * t then
        max := (a mod t) + (a div (t * 10)) * t;
      t := t * 10;
    end;
  writeln('The result: ',max);
  readln;readln;
end.