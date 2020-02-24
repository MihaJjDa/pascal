program ex12pIsPrime(input, output);

function divs(n: integer): integer;
  function divs1(k : integer): integer;
    begin
      if k > n div 2 then
        divs1 := 0
      else
        divs1 := ord(n mod k = 0) + divs1(k + 1);
         end;
  begin
    divs := ord(divs1(2) = 0);
  end;

var
  n: integer;
begin
  writeln('_________________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.IsPrime');
  writeln('_________________________________________');
  read(n);
  writeln(divs(n));
  readln;readln;
end.