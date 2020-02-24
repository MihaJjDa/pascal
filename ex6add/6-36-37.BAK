program ex6p36p37 (input, output);
var
  h: char;
  s, i: integer;
  t, k: real;
begin
  writeln('_______________________________________');
  writeln('Mikhalyov Danila, group 112, ex 6.36+37');
  writeln('_______________________________________');

  writeln('Enter a number:');

  read(h);
  if h = '-' then
    begin
      k := -1;
      read(h);
    end
  else
    k := 1;

  t := 0;
  repeat
    t := t * 10 + ord(h) - ord('0');
    read(h);
  until (h = ' ') or (h = '.') or (h = 'E') or (h = 'e');

  if (h = '.') then
    begin
      s := 1;
      read(h);
      repeat
        s := s * 10;
        t := t + (ord(h) - ord('0')){/s};
        read(h);
      until (h = ' ') or (h = 'E') or (h = 'e');
    end;
  t := t * k;

  if (h = 'e') or (h = 'E') then
    begin
      read(h);
      s := 1;
      if h = '-' then
        begin
          s := -1;
          read(h);
        end;
      if h = '+' then
        read(h);
      k := 0;
      repeat
        k := k * 10 + ord(h) - ord('0');
        read(h);
      until h = ' ';
      k := k * s;
      t := t * exp(k * ln(10));
    end;

  writeln('Result: ', t);
  writeln('_______');
  write('Result: ');

  if t < 0 then
    begin
      write('-');
      t := abs(t);
    end
  else
    write('+');
  write('0');

  write('.');

  s := 0;
  while t > 1 do
    begin
      t := t / 10;
      s := s + 1;
    end;


  for i := 1 to 9 do
    begin
      t := t * 10;
      h := chr(ord(trunc(t)) + ord('0'));
      t := t - trunc(t);
      write(h);
    end;

  if (s >= 0) then
    write('E+')
  else
    write('E-');

  if abs(s) < 10 then
    write('0', abs(s))
  else
    write(abs(s));

  readln;readln;
end.