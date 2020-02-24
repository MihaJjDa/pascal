program ex11p26(input, output);
{$R+,B+}

const
  n = 4;

type
  vec = array [1..n] of real;

procedure inputvector(var a: vec);
  var
    i: integer;
  begin
    for i := 1 to n do
      read(a[i]);
  end;

procedure inputdata(var x, y, z: vec);
  begin
    writeln('Enter three vectors (Length: ', n, ')');
    inputvector(x);
    inputvector(y);
    inputvector(z);
  end;

function indmin(a: vec): integer;
  var
    i: integer;
    m: real;
  begin
    m  := a[1];
    indmin := 1;
    for i := 2 to n do
      if a[i] < m then
        begin
          indmin := i;
          m := a[i];
        end;
  end;

function max(a, b:real): real;
  begin
    if a > b then
      max := a
    else
      max := b;
  end;

function skpro(a, b: vec): real;
  var
    i: integer;
    s: real;
  begin
    s := 0;
    for i := 1 to n do
      s := s + a[i] * b[i];
    skpro := s;
  end;

function min(a: vec): real;
  begin
    min := a[indmin(a)];
  end;

function func(l, m, k: vec): real;
  begin
    func := skpro(l, l) - skpro(m, k);
  end;

function process(a, b, c: vec): real;
  begin
    if max(max(min(a), min(b)), min(c)) = min(a) then
      process := func(a, b, c)
    else
      if max(max(min(a), min(b)), min(c)) = min(b) then
        process := func(b, a, c)
      else
        process := func(c, a, b);
  end;

var
  x, y, z: vec;
  k: real;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Daniel, group 112, ex11.26');
  writeln('____________________________________');
  inputdata(x, y, z);
  k := process(x, y, z);
  writeln('The result: ', k:3:1);
  readln;readln;
end.