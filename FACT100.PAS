program fact100(output);
{$R+,B+}

const
  sizenum = 256;{����� �������� �᫠}
{number(����.) - �᫮}{size(����.) - ࠧ���}
type
  longnum = array [1..sizenum] of integer;{������ 楫��᫥��� ⨯}
{long(����.) - ������}
var
  n: longnum;
  i: integer;
{assign(����.) - ��᢮���}
procedure assignone(var k: longnum);{��ࠢ������ ������� ��� n �������}
  var
    j: integer;
  begin
    k[1] := 1;
    for j := 2 to 100 do
      k[j] := 0;
  end;   {����砥��� ���ᨢ 00000...0000001}
{multiply(����.) - 㬭�����}
procedure multiply(var m: longnum; f: integer);
  var
    j, k: integer;
  begin
    k := 0; {���⮪ �� 㬭������, ����� ���室�� � ᫥���騩 ࠧ��}
    for j := 1 to sizenum do {ᤥ���� �� 㬭������ � �⮫���, �᫨ �� ��������� - 㬭��� �� �㬠��� 999 �� 99}
      begin
        m[j] := m[j] * f + k;
        k := m[j] div 10;
        m[j] := m[j] mod 10;
      end;
  end;
{length(����.) - �����}
function lengthnum(var k: longnum): integer;
  var
    i: integer;
    a: boolean;
  begin
    i := sizenum;
    a := true;
    while (i > 0) and a do    {�஢����, � ���� ���ᨢ�, ����� �㫨 ������� => ��室�� ����� �᫠}
      begin
        a := a and (k[i] = 0);
        i := i - 1;
      end;
    lengthnum := i + 1;
  end;

begin
  assignone(n);
  for i := 2 to 100 do {����� 100 ����� ��㣮� �᫮, �᫨ �㦥� ��㣮� 䠪�ਠ�}
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