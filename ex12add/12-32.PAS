program ex12p32(input, output);

procedure finish(var a: boolean; b: char; var c: char);
  begin
    a := a and (c = b);
  end;

function elem(var c: char): boolean; forward;

function text(var c: char): boolean;
  var
    a: boolean;
  begin
    read(c);
    repeat
      a := elem(c);
    until not a or (c = '.') or (c = ']') or (c = '}') or (c = ')');
    text := a;
  end;

function elem;
  var
    a: boolean;
  begin
    case c of
      '[': begin a := text(c); finish(a, ']', c); end;
      '{': begin a := text(c); finish(a, '}', c); end;
      '(': begin a := text(c); finish(a, ')', c); end;
      '.', 'a', 'b': a := true;
    else
      a := false;
    end;
    elem := a;
    if c <> '.' then
      read(c);
  end;

function readtext: boolean;
  var
    c: char;
    a: boolean;
  begin
    read(c);
    repeat
      a := elem(c);
    until not a or (c = '.');
    readtext := a;
  end;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.32');
  writeln('____________________________________');
  writeln('Enter a text with the point at the end:');
  writeln('It factually is a text: ', readtext);
  readln;readln;
end.