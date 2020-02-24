program ex12p27(input, output);

function formula: boolean;
  var
    c: char;

  function conjunction(x: boolean): boolean;
    var
      y: boolean;
    begin
      y := formula;
      read(c);
      if c = ',' then
        conjunction := x and y and conjunction(x and y)
      else
        conjunction := x and y;
    end;

  function disjunction(x: boolean): boolean;
    var
      y: boolean;
    begin
      y := formula;
      read(c);
      if c = ',' then
        disjunction := x or y or disjunction(x or y)
      else
        disjunction := x or y;
    end;

  var
    op: char;
    x: boolean;
    i: integer;
  begin
    read(c);
    if (c = 't') or (c = 'f') then
      begin
        if c = 't' then
          begin
            formula := true;
            for i := 1 to 3 do
              read(op);
          end
        else
          begin
            formula := false;
            for i := 1 to 4 do
              read(op);
          end;
      end
    else
      begin
        if c = 'a' then
          begin
            for i := 1 to 2 do
              read(op);
            read(op);
            x := formula;
            read(op);
            formula := conjunction(x);
          end;
        if c = 'o' then
          begin
            read(op);
            read(op);
            x := formula;
            read(op);
            formula := disjunction(x);
          end;
        if c = 'n' then
          begin
            for i := 1 to 2 do
              read(op);
            read(op);
            x := formula;
            formula := not(x);
            read(op);
          end;
      end;
  end;



begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.27');
  writeln('____________________________________');
  writeln('Enter a logical expression in the prefix form:');
  writeln('The value of this expression: ', formula);
  readln;readln;
end.