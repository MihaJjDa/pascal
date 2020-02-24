program ex11p60(input, output);
{$R+,B+}

const
  m = 5;
  n = 3;

type
  matrix = array [1..m, 1..n] of integer;

procedure inputmatrix(var a: matrix);
  var
    i, j: integer;
  begin
    writeln('Enter a matrix:');
    for i := 1 to m do
      for j := 1 to n do
        read(a[i,j]);
    writeln('End of enter');
    writeln('____________');
  end;

procedure inputdata(var a, b, c: matrix);
  begin
    writeln('Enter three matrix (Size: ', m, 'x', n, '):');
    inputmatrix(a);
    inputmatrix(b);
    inputmatrix(c);
  end;

function numzerstr(a: matrix): integer;
  var
    i, j, k: integer;
    zero: boolean;
  begin
    k := 0;
    for i := 1 to m do
      begin
        j := 1;
        zero := true;
        while (j <= n) and zero do
          begin
            zero := a[i,j] = 0;
            j := j + 1;
          end;
        if zero and (j > n) then
          k := k + 1;
      end;
    numzerstr := k;
  end;

function max(a, b: integer): integer;
  begin
    if a > b then
      max := a
    else
      max := b;
  end;

function maxnumzerostr(a, b, c: matrix): integer;
  begin
    maxnumzerostr := max(max(numzerstr(a), numzerstr(b)), numzerstr(c));
  end;

procedure outputmatrix(a: matrix);
  var
    i, j: integer;
  begin
    for i := 1 to m do
      begin
        for j := 1 to n do
          write(a[i,j], ' ');
         writeln;
      end;
  end;

procedure chooseoutput(x, y, z: matrix);
  begin
    if maxnumzerostr(x, y, z) = numzerstr(x) then
      begin
        outputmatrix(x);
        writeln('____________');
      end;
  end;

var
  x, y, z: matrix;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex11.60');
  writeln('____________________________________');
  inputdata(x, y, z);
  writeln('Matrix with the highest number of zero strings:');
  chooseoutput(x, y, z);
  chooseoutput(y, x, z);
  chooseoutput(z, x, y);
  readln;readln;
end.