program ex11p27(input, output);
{$R+,B+}

const
  n = 3;

type
  matrix = array [1..n, 1..n] of real;

procedure inputmatrix(var a: matrix);
  var
    i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        read(a[i,j]);
  end;

procedure zeromatrix(var a: matrix);
  var
    i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        a[i,j] := 0;
  end;

procedure multiplymatrix(var a: matrix; x, y: matrix);
  var
    i, j, k: integer;
  begin
    zeromatrix(a);
    for i := 1 to n do
      for j := 1 to n do
        for k := 1 to n do
          a[i,j] := x[i,k] * y[k,j] + a[i,j];
  end;

function trace(a: matrix): real;
  var
    s: real;
    i, j: integer;
  begin
    s := 0;
    for i := 1 to n do
      s := s + a[i,i];
    trace := s;
  end;

procedure outputmatrix(a: matrix);
  var
    i, j: integer;
  begin
    writeln('Square of matrix with the least trace:');
    for i :=  1 to n do
      begin
        for j := 1 to n do
          write(a[i,j]:3:1, ' ');
        writeln;
      end;
  end;

var
  x, y, a, b: matrix;
  k, m: real;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Daniel, group 112, ex11.27');
  writeln('____________________________________');
  writeln('Enter two matrix (Size: ', n, 'x', n, '):');
  inputmatrix(x);
  inputmatrix(y);
  multiplymatrix(a, x, x);
  multiplymatrix(b, y, y);
  k := trace(a);
  m := trace(b);
  if k < m then
    outputmatrix(a)
  else
    outputmatrix(b);
  readln;readln;
end.