program ex12p25(input, output);
{$R+,B+}

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
        x := formula;
        read(op);
        y := formula;
        case op of
          '+': formula := x + y;
          '-': formula := x - y;
          '*': formula := x * y;
        end;
        read(c);
      end;
  end;

begin
  writeln(formula);
  readln;readln;
end.