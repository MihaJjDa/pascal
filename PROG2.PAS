program ex12pForm(input, output);

var
  c: char;
  a: boolean;

function formula: boolean;
  begin
    read(c);
    formula := false;
    if c in ['a'..'g'] + ['0'..'9'] then
        begin
          if c in ['a'..'g'] then
            repeat
              read(c);
            until not(c in ['a'..'g'] + ['0'..'9'])
          else
            repeat
              read(c);
            until not(c in ['0'..'9']);
          formula := true;
        end
      else
        if c = '(' then
          if formula then
            begin
              if c in ['+', '-', '*'] then
                if formula then
                  begin
                    if c = ')' then
                      formula := true;
                    read(c);
                  end;
            end;
  end;

begin
  writeln('________________________________________________');
  writeln('Mikhalyov Danila, group 112, ex12-Formula(14-39)');
  writeln('________________________________________________');
  writeln('Enter a formula with the point at the end:');
  a := formula;
  write('This text factually is a formula: ', a and (c = '.'));
  readln;readln;
end.