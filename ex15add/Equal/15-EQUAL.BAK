program ex15p;

var
  f1, f2: text;
  a: boolean;
  c1, c2: char;

begin
  writeln('____________________________________________');
  writeln('Mikhalyov Danila, group 112, ex15pEqualFiles');
  writeln('____________________________________________');
  assign(f1, 'F1.TXT');
  assign(f2, 'F2.TXT');
  reset(f1);
  reset(f2);
    a := true;
    while a and not eof(f1) and not eof(f2) do
      begin
        while a and not eoln(f1) and not eoln(f2) do
          begin
            read(f1, c1);
            read(f2, c2);
            a := c1 = c2;
          end;
        a := a and eoln(f1) and eoln(f2);
        readln(f1);
        readln(f2);
      end;
      a := a and eof(f1) and eof(f2);
  close(f1);
  close(f2);
  writeln('The files are equal: ', a);
  readln;
end.