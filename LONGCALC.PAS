program longcalc(input, output, numbers, result);
{$R+,B+}

const
  sizenum = 256 {���ᨬ��쭠� ����� �᫠, �᫨ ���� - 㢥��稢����}

type
  longnum = array [1..sizenum] of integer; {������ 楫��᫥��� ⨯}
  tablemul = array [1..sizenum, 1..sizenum div 2] of integer; {⠡��� ��� 㬭������, � � ��� � ����室��� �࠭��� �஬������ १����� 㬭������(�ᯮ��� 㬭������ � �⮫���, �� ����� � ��� �� 㬭������ �⮡� ��⮬ �㬬�஢��� �� ��� १����)}
  {sizenum div 2 - ��⮬� �� ������ ���� ⠡���� �� �����������, ��� ���� �ਤ���� 㢥��稢��� ����� �᫠(����� �� �ᯮ��� 㬭������ � �⮫���)}
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
        k := 0;{�� ���⮪, ���室�騩 � ᫥���騩 ࠧ��}
        for l := 1 to sizenum do
          if m[l] <> 0 then
            begin
              n[i+l] := n[i+l] + n[i] * m[l] + k;
              k := n[i+l] div 10;
              int[i] := int[i] mod 10;
            end;
      end;
  end;