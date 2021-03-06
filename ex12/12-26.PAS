program ex12p26(input, output);

function max(x, y: integer): integer;
  begin
    if x > y then
      max := x
    else
      max := y;
  end;

function min(x, y: integer): integer;
  begin
    if x < y then
      min := x
    else
      min := y;
  end;

function formula: integer;
  var
    c, op: char;
    x, y: integer;
  begin
    read(c);
    if (c >= '0') and (c <= '9') then
      formula := ord(c) - ord('0')
    else
      begin
        read(op);
        x := formula;
        read(op);
        y := formula;
        if c = 'M' then
          formula := max(x, y)
        else
          formula := min(x, y);
        read(op);
      end;
  end;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.26');
  writeln('____________________________________');
  writeln('Enter a formula M(a,b) or m(a,b), where a,b - digits or the formula');
  writeln(formula);
  readln;readln;
end.