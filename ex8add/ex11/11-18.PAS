program ex11p18 (input, output);
{$R+,B+}

procedure inputdata(var a, b, c: integer);
  begin
    writeln('Enter three integers:');
    read(a);
    read(b);
    read(c);
  end;

function gsdeu(a, b: integer): integer;
  var
    x, y: integer;
  begin
    x := a;
    y := b;
    while (x <> 0) and (y <> 0) do
      if x > y then
        x := x mod y
      else
        y := y mod x;
    if x = 0 then
      gsdeu := y
    else
      gsdeu := x;
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

procedure outputdata(eu, bin: integer);
  begin
    writeln('GSD : ', eu);
    writeln('GSD : ', bin);
  end;

var
  a, b, c, eu, bin: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex11.18');
  writeln('____________________________________');
  inputdata(a, b, c);
  eu := gsdeu(gsdeu(a, b), c);
  bin := gsdbin(gsdbin(a, b), c);
  outputdata(eu, bin);
  readln;readln;
end.