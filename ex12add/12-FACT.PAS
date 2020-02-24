program ex12pFactorial(input, output);

function f(n: integer): integer;
  function divs1(k, n : integer): integer;
    begin
      if n = 1 then
          divs1 := 1
      else
        if n mod k = 0 then
             divs1 := 1 + divs1(k + 1, n div k)
        else
          divs1 := 1 - k;
    end;
  begin
    f := divs1(2, n);
  end;

var
  n: integer;
begin
  writeln('___________________________________________');
  writeln('Mikhalyov Danila, group 112, ex12-Factorial');
  writeln('___________________________________________');
  writeln('Enter an integer:');
  read(n);
  writeln('This number is a factorial of: ', f(n));
  readln;readln;
end.