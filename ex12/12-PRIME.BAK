program ex12pIsPrime(input, output);

function isprime(n: integer): boolean;
  function divs1(k : integer): integer;
    begin
      if sqr(k) > n then
        divs1 := 0
      else
        divs1 := ord(n mod k = 0) + divs1(k + 1);
         end;
  begin
    isprime := divs1(2) = 0;
  end;

var
  n: integer;
begin
  writeln('_________________________________________');
  writeln('Mikhalyov Danila, group 112, ex12-IsPrime');
  writeln('_________________________________________');
  writeln('Enter an integer:');
  read(n);
  writeln('This mumber is prime: ', isprime(n));
  readln;readln;
end.