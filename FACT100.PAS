program fact100(output);
{$R+,B+}

const
  sizenum = 256;{длина длинного числа}
{number(англ.) - число}{size(англ.) - размер}
type
  longnum = array [1..sizenum] of integer;{длинный целочисленный тип}
{long(англ.) - длинный}
var
  n: longnum;
  i: integer;
{assign(англ.) - присвоить}
procedure assignone(var k: longnum);{приравнивает длинном числу n единицу}
  var
    j: integer;
  begin
    k[1] := 1;
    for j := 2 to 100 do
      k[j] := 0;
  end;   {получается массив 00000...0000001}
{multiply(англ.) - умножить}
procedure multiply(var m: longnum; f: integer);
  var
    j, k: integer;
  begin
    k := 0; {остаток от умножения, который переходит в следующий разряд}
    for j := 1 to sizenum do {сделано по умножению в столбик, если не понимаешь - умножь на бумажке 999 на 99}
      begin
        m[j] := m[j] * f + k;
        k := m[j] div 10;
        m[j] := m[j] mod 10;
      end;
  end;
{length(англ.) - длина}
function lengthnum(var k: longnum): integer;
  var
    i: integer;
    a: boolean;
  begin
    i := sizenum;
    a := true;
    while (i > 0) and a do    {проверяет, с конца массива, когда нули кончатся => находит длину числа}
      begin
        a := a and (k[i] = 0);
        i := i - 1;
      end;
    lengthnum := i + 1;
  end;

begin
  assignone(n);
  for i := 2 to 100 do {вместе 100 пишешь другое число, если нужен другой факториал}
    multiply(n, i);
  i := lengthnum(n);
  for i := i downto 1 do
    begin
      write(n[i]);
      if (i + 1) mod 10 = 0 then
        writeln;
    end;
  writeln;
  readln;
end.