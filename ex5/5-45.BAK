program ex5p45 (input, output);
var
  a, b, c, d: integer;
begin
  writeln('_________________________________');
  writeln('Mikhalyov Danila, group 112, 5-45');
  writeln('_________________________________');
  writeln('Enter a sequence of integers followed by 0');
  a := 0;
  b := 0;
  c := 0;
  read(d);
  while d <> 0 do
    begin
      if d > a then
        if d > b then
          begin
            if d > c then
                begin
                  a := b;
                  b := c;
                  c := d;
                end
              else
                begin
                  a := b;
                  b := d;
                end;
          end
        else
          a := d;
      read(d);
    end;
  writeln('The three maximum numbers from the sequation: ', a, ' ', b, ' ', c, ' ');
  readln;readln;
end.