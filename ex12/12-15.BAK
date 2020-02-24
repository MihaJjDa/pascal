program ex12p15(input, output);
{$R+,B+}

function digits: integer;
  var
    n: char;
    d: integer;
  begin
    read(n);
    if n = '.' then
      digits := 0
    else
      begin
        d := digits;
        if (n >= '0') and (n <= '9') then
          digits := d + 1
        else
          digits := d;
      end;
  end;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.15');
  writeln('____________________________________');
  writeln('Enter a sequence of symbols with the point at the end:');
  writeln('The number of digits: ', digits);
  readln;readln;
end.