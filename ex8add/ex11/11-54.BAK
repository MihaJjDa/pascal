program ex11p54 (input, output);
{$R+,B+}

procedure inputdata(var a, b, c, d: integer);
  begin
    writeln('Enter four integers:');
    read(a, b, c, d);
  end;

function gsdbin(a, b: integer): integer;
  var
    x, y: integer;
  begin
    x := a;
    y := b;
    while x <> y do
      if x > y then
        x := x - y
      else
        y := y - x;
    gsdbin := x;
  end;

function lcm(a, b: integer): integer;
  var
    x, y: integer;
  begin
    x := a;
    y := b;
    lcm := (x * y) div gsdbin(x, y);
  end;

var
  a, b, c, d, abcd: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex11.54');
  writeln('____________________________________');
  inputdata(a, b, c, d);
  abcd := lcm(lcm(lcm(a,b), c), d);
  writeln('LCM of these numbers: ', abcd);
  readln;readln;
end.