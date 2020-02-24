program life (input,output);
{$R+,B+}
uses
  crt;

const
  size = 10;

type
  plane = array [1..size, 1..size] of integer;

procedure keyboardinput(var field: plane);
  var
    i, j: integer;
  begin
    writeln('Enter a initial state for field ', size, 'x', size, 'as a table');
    writeln('Live cells is "1"');
    writeln('Dead cells is "0"');
    for i := 1 to size do
      for j := 1 to size do
        read(field[i,j]);
  end;

procedure randominput(var field: plane);
  var
    i, j: integer;
  begin
    randomize;
    for i := 1 to size do
      for j := 1 to size do
        field[i,j] := random(2);
  end;

procedure boat(var field: plane);
  var
    i, j: integer;
  begin
    for i := 1 to size do
      for j := 1 to size do
        field[i, j] := 0;
    field[3,3] := 1;
    field[3,4] := 1;
    field[4,3] := 1;
    field[5,4] := 1;
    field[6,5] := 1;
    field[7,6] := 1;
    field[8,7] := 1;
    field[8,8] := 1;
    field[7,8] := 1;
    field[6,7] := 1;
    field[5,6] := 1;
    field[4,5] := 1;
  end;

procedure fumarola(var field: plane);
  var
    i, j: integer;
  begin
    for i := 1 to size do
      for j := 1 to size do
        field[i,j] := 0;
    field[3,5] := 1;
    field[3,6] := 1;
    field[4,3] := 1;
    field[4,4] := 1;
    field[4,7] := 1;
    field[4,8] := 1;
    field[5,8] := 1;
    field[5,3] := 1;
    field[6,4] := 1;
    field[6,7] := 1;
    field[7,4] := 1;
    field[7,7] := 1;
    field[8,8] := 1;
    field[8,9] := 1;
    field[7,9] := 1;
    field[7,2] := 1;
    field[8,2] := 1;
    field[8,3] := 1;
    field[8,3] := 1;
  end;

procedure glider(var field: plane);
  var
    i, j: integer;
  begin
    for i := 1 to size do
      for j := 1 to size do
        field[i,j] := 0;
    field[1,2] := 1;
    field[2,3] := 1;
    field[3,3] := 1;
    field[3,2] := 1;
    field[3,1] := 1;
  end;

procedure hello(var field: plane);
  var
    choice: char;
  begin
    writeln('LIFE');
    writeln('Change a type of input');
    writeln('Enter:');
    writeln('"P" for input patterns');
    writeln('"K" for keyboard input');
    writeln('"B" for boat input');
    writeln('"G" for glider input');
    writeln('"F" for fumarola input');
    read(choice);
    case choice of
      'K', 'k': keyboardinput(field);
      'R', 'r': randominput(field);
      'B', 'b': boat(field);
      'G', 'g': glider(field);
      'F', 'f': fumarola(field);
    else
      begin
        clrscr;
        writeln('Wrong input');
        hello(field);
      end;
    end;
  end;

procedure outputdata(var field: plane);
  var
    i, j: integer;
  begin
    clrscr;
    for i := 1 to size do
      begin
        for j := 1 to size do
          write(field[i,j]:2);
        writeln;
      end;
  end;

procedure inputdata(var field: plane);
  begin
    clrscr;
    hello(field);
    outputdata(field);
  end;

function comparison(g, h: integer): integer;
  begin
    if g + h = 0 then
      comparison := size
    else
      if g + h = size + 1 then
        comparison := 1
      else
        comparison := g + h;
  end;

procedure sum(field: plane; i, j: integer; var  s: integer);
  var
    l, k, a, b: integer;
  begin
    s := 0;
    for l := -1 to 1 do
      for k := -1 to 1 do
        begin
          if not((l = 0) and (k = 0)) then
            begin
              a := comparison(i, l);
              b := comparison(j, k);
              s := s + field[a,b];
            end;
        end;
  end;

procedure performing(var field: plane);
  var
    i, j, s: integer;
    addfield: plane;
  begin
    for i := 1 to size do
      for j := 1 to size do
        addfield[i,j] := 0;
    for i := 1 to size do
      for j := 1 to size do
        begin
          sum(field, i, j, s);
          if field[i,j] = 0 then
            begin
              if s = 3 then
                addfield[i,j] := 1;
            end
          else
            if (s <> 2) and (s <> 3) then
              addfield[i,j] := 0
            else
              addfield[i,j] := 1;
      end;
    field := addfield;
  end;

procedure game(field: plane);
  var
    num, i: integer;
    o: boolean;
  begin
    writeln('Enter a number of steps for performing the game (enter "0" for end):');
    readln(num);
    for i := 1 to num do
      performing(field);
    if num > 0 then
      begin
        outputdata(field);
        game(field);
      end;
  end;

var
  field: plane;
begin
  inputdata(field);
  game(field);
end.