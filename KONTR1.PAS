PROGRAM KONTR1;

type mas=array[1..30] of char;

var a:mas;
    i:integer;
    d:boolean;

function Prov(a:mas):boolean;
 var j:integer;
     t:boolean;
 begin
   j:=0;
   t:=False;
   repeat
     j := j + 1;
     t := a[j] in ['A'..'Z'];
   until (j = 30) or t or (a[j] = '.');
   Prov:=t;
 end;

procedure vvod(var a:mas);
begin
  i := 0;
  repeat
    i := i + 1;
    read(a[i]);
  until (i = 30) or (a[i] = '.');
end;

BEGIN
  writeln('������ ⥪�� � �窮� � ����: (�� ����� 30 ᨬ�����)');
  vvod(a);
  IF Prov(a)=false then writeln('� ���ᨢ� ��� ������ ��⨭᪨� �㪢')
             else writeln('� ���ᨢ� ���� ����訥 ��⨭᪨� �㪢�');
  readln;readln;
END.