program ex12p38 (input, output);

const
  n = 3;

type
  vector = array [1..n] of integer;

var
  a: vector;
  k: integer;

procedure fillarray(var a: vector);
  var
    i: integer;
  begin
    for i := 1 to n do
      a[i] := i;
  end;

procedure outputarray(var a: vector);
  var
    i: integer;
  begin
    for i := 1 to n do
      write(a[i], ' ');
    writeln;
  end;

procedure generate(k: integer);
  var
    i, j: integer;
  begin
    if k = 1 then
      outputarray(a)
    else
      begin
        generate(k-1);
        for i := k - 1 downto 1 do
          begin
            j := a[k];
            a[k] := a[i];
            a[i] := j;
            generate(k-1);
          end;
      end;
  end;

begin
  writeln('__________________________________');
  writeln('Mikhalyov Danila, group 112, 12.38');
  writeln('__________________________________');
  fillarray(a);
  generate(n);
  readln;
end.