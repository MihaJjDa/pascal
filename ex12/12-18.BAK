program ex12p18 (input, output);
{$R+,B+}

procedure inputdata(var a, b: integer);
  begin
    writeln('Enter two integers:');
    read(a);
    read(b);
  end;

function gsdeu(a, b: integer): integer;
  var
    x, y: integer;
  begin
    x := a;
    y := b;
    if (x = 0) or (y = 0) then
      gsdeu := x + y
    else
      begin
        if x > y then
          x := x mod y
        else
          y := y mod x;
        gsdeu := gsdeu(x, y);
      end;
  end;

function gsdbin(a, b: integer): integer;
  var
    x, y: integer;
  begin
    x := a;
    y := b;
    if x = y then
      gsdbin := x
    else
      begin
        if x > y then
          x := x - y
        else
          y := y - x;
        gsdbin := gsdbin(x, y);
      end;
  end;

procedure outputdata(eu, bin: integer);
  begin
    writeln('GSD : ', eu);
    writeln('GSD : ', bin);
  end;

var
  a, b, eu, bin: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.18');
  writeln('____________________________________');
  inputdata(a, b);
  eu := gsdeu(a, b);
  bin := gsdbin(a, b);
  outputdata(eu, bin);
  readln;readln;
end.