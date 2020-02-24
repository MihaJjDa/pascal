program ex10p14 (input, output);
{$R+,B+}

const
  I = 'I   ';
  II = 'II  ';
  III = 'III ';
  IV = 'IV  ';
  V = 'V   ';
  VI = 'VI  ';
  VII = 'VII ';
  VIII = 'VIII';
  IX = 'IX  ';

var
  digits: array [1..9] of packed array [1..4] of char; {Array for digits}
  j, n: integer;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex10.14');
  writeln('____________________________________');

  digits[1] := I;
  digits[2] := II;
  digits[3] := III;
  digits[4] := IV;
  digits[5] := V;
  digits[6] := VI;
  digits[7] := VII;
  digits[8] := VIII;
  digits[9] := IX;

  writeln('Enter an integer from 1 to 39:');
  read(n);

  for j := 1 to n div 10 do
    write('X');
  if n mod 10 <> 0 then
    write(digits[n mod 10]);

  readln;readln;
end.