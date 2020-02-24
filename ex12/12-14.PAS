program ex12p14(input, output);
{$R+,B+}

function max: integer;
  var
    n, d: integer;
  begin
    read(n);
    if n = 0 then
      max := 0
    else
      begin
        d := max;
        if d > n then
          max := d
        else
          max := n;
      end;
  end;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.14');
  writeln('____________________________________');
  writeln('Enter a sequence of integers with zero at the end:');
  writeln('The maximum number: ', max);
  readln;readln;
end.