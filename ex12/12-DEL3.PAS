program ex12delete3(input, output);

function check(n: integer): integer;
  begin
    if n = 3 then
      check := 0
    else
      check := n;
  end;

function delete3(n: integer): integer;
  var
    x: integer;
  begin
    x := n;
    if x < 10 then
      delete3 := check(x)
    else
      if x mod 10 = 3 then
        delete3 := delete3(x div 10)
      else
        delete3 := x mod 10 + delete3(x div 10) * 10;
  end;

var
  n: integer;
begin
  writeln('_________________________________________');
  writeln('Mikhalyov Danila, group 112, ex12-delete3');
  writeln('_________________________________________');
  writeln('Enter an integer:');
  readln(n);
  writeln('The result: ', delete3(n));
  readln;readln;
end.