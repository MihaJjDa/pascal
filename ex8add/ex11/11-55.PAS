program ex11p55(input, output);
{$R+,B+}

const
  m = 2;

function primeinteger(n: integer): boolean;
  var
    j: integer;
    o: boolean;
  begin
    primeinteger := true;
    j := 2;
    while sqr(j) <= n do
        begin
          if n mod j = 0 then
            primeinteger := false;
          j := j + 1;
        end;
  end;

procedure primepairs(n: integer);
 var
   i, a: integer;
 begin
   writeln('Pairs of prime integers with the difference equal to ', m);
   a := 2;
   for i := 3 to n do
     if primeinteger(i) then
       begin
         if i - a = 2 then
           writeln(i - m, ' ', i);
         a := i;
       end;
 end;

var
  n: integer;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex11.55');
  writeln('____________________________________');
  writeln('Enter an integer:');
  read(n);
  primepairs(n);
  readln;readln;
end.