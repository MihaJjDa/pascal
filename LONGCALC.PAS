program longcalc(input, output, numbers, result);
{$R+,B+}

const
  sizenum = 256 {максимальная длина числа, если мало - увеличиваешь}

type
  longnum = array [1..sizenum] of integer; {длинный целочисленный тип}
  tablemul = array [1..sizenum, 1..sizenum div 2] of integer; {таблица для умножения, т к где то необходимо хранить промежуточные результаты умножения(вспомни умножение в столбик, ты пишешь в ней все умножения чтобы потом суммировать их для результата)}
  {sizenum div 2 - потому что большая высота таблицы не понадобится, ибо иначе придется увеличивать длину числа(опять же вспомни умножение в столбик)}
var
  n, m: longnum;

function lengthnum(var k: longnum): integer;
  var
    i: integer;
    a: boolean;
  begin
    i := sizenum;
    a := true;
    while (i > 0) and a do
      begin
        a := a and (k[i] = 0);
        i := i - 1;
      end;
    lengthnum := i + 1;
  end;

procedure multiply(var n, m: longnum);
  var
    l1, l2: integer;
  begin
    l1 := lengthnum(n);
    l2 := lengthnum(m);
    for i := 1 to sizenum do
      begin
        k := 0;{это остаток, переходящий в следующий разряд}
        for l := 1 to sizenum do
          if m[l] <> 0 then
            begin
              n[i+l] := n[i+l] + n[i] * m[l] + k;
              k := n[i+l] div 10;
              int[i] := int[i] mod 10;
            end;
      end;
  end;