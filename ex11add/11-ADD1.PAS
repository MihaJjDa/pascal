program ex11add1(input, output);
{$R+,B+}

const
  size = 200;
  deg = 500;
  numfac = 100;
  fdeg = 2;

type
  long = array [1..size] of integer;

procedure one(var int: long);
  var
    i: integer;
  begin
    for i := 2 to size do
      int[i] := 0;
    int[1] := 1;
  end;

procedure multiply(var int: long; m: integer);
  var
    i, k: integer;
  begin
    k := 0;
    for i := 1 to size do
      begin
        int[i] := int[i] * m + k;
        k := int[i] div 10;
        int[i] := int[i] mod 10;
      end;
  end;

procedure degree(var int: long);
  var
    i: integer;
  begin
    one(int);
    for i := 1 to deg do
      multiply(int, fdeg);
  end;

procedure adding(var int: long; fac: long);
  var
    i, k: integer;
  begin
    k := 0;
    for i := 1 to size do
      begin
        int[i] := int[i] + fac[i] + k;
        k := int[i] div 10;
        int[i] := int[i] mod 10;
      end;
  end;

procedure sumfact(var int: long);
  var
    i: integer;
    fac: long;
  begin
    for i := 1 to size do
      int[i] := 0;
    one(fac);
    for i := 1 to numfac do
      begin
        multiply(fac, i);
        adding(int, fac);
      end;
  end;

procedure outputdata(int: long);
  var
    i, j, k: integer;
  begin
    i := size;
    while int[i] = 0 do
      i := i - 1;
    k := 0;
    for j := i downto 1 do
      begin
        write(int[j]);
        k := k + 1;
        if k = 25 then
          begin
            writeln;
            k := 0;
          end;
      end;
    writeln;
    writeln('_________________________');
  end;

var
  int: long;
begin
  writeln('______________________________________');
  writeln('Mikhalyov Danila, group 112, ex11.add1');
  writeln('______________________________________');
  degree(int);
  outputdata(int);
  sumfact(int);
  outputdata(int);
  readln;
end.