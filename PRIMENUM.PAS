program primenum(input, output);

var
  a: boolean;
  i, n: integer;

begin
  writeln('Enter an integer:');
  readln(n);

  {������ �������}
  {-----------------------------}
  {�������訬 ����⥫�� ��⠢���� �᫠ ����� ���� ������(������ 1)}
  {�������訬 ����⥫��, ����� ���� �஢�����, ���� 楫�� ���� �� ���� �⮣� �᫠}
  {��祬� �� ���� �஢����� ��⠫�� � 㦥 ����᭨� ��}
  a := true;
  for i := 2 to trunc(sqrt(n)) do
    a := a and (n mod i <> 0);
  {-----------------------------}

  {������ �������(�ࠢ��쭥�, ��� ��� ��譨� 蠣�� 横��)}
  {�᫨ ��襫�� ����⥫�, � � �⠭������ ࠢ��� false � 横� �����蠥� ࠡ���}
  {-----------------------------------}
  a := true;
  i := 2;
  while a and (i <= trunc(sqrt(n))) do
    begin
      a := a and (n mod i <> 0);
      i := i + 1;
    end;
  {----------------------------------}

  writeln(n, ' is a prime number: ', a);
  readln;readln;
end.