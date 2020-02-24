program AVERKINA(input, output);

var
  a, b, c, d: integer;

procedure translate(var a: integer; prosh, nov: integer);  {chto, iz kakoj, v kakuyu}
  var
    razryad, ostatok, dopchis: integer;
  begin
    razryad := 1;
    dopchis := 0;
    while a > 0 do
      begin
        dopchis := dopchis + a mod nov * razryad;
        a := a div nov;
        razryad := razryad * prosh;
      end;
    a := dopchis;
  end;

function plus(sl1, sl2, sist: integer): integer; {slagaemoe, slagaamoe, sistema schisleniya}
  var
    n: integer;
  begin
    translate(sl1, sist, 10);
    translate(sl2, sist, 10);
    n := sl1 + sl2;
    translate(n, 10, sist);
    plus := n;
  end;

function minus(sl1, sl2, sist: integer): integer; {slagaemoe, slagaamoe, sistema schisleniya}
  var
    n: integer;
  begin
    translate(sl1, sist, 10);
    translate(sl2, sist, 10);
    n := sl1 - sl2;
    translate(n, 10, sist);
    minus := n;
  end;

function umnozh(sl1, sl2, sist: integer): integer; {slagaemoe, slagaamoe, sistema schisleniya}
  var
    n: integer;
  begin
    translate(sl1, sist, 10);
    translate(sl2, sist, 10);
    n := sl1 * sl2;
    translate(n, 10, sist);
    umnozh := n;
  end;

function stepen(sl, step, sist: integer): integer; {slagaemoe, slagaamoe, sistema schisleniya}
  var
    n, i: integer;
  begin
    translate(sl, sist, 10);
    n := 1;
    for i := 1 to step do
      n := n * sl;
    translate(n, 10, sist);
    stepen := n;
  end;

var
  x, y: integer;

begin
  writeln('Enter an integer');
  readln(x);
  translate(x, 10, 4);
  writeln(x);
  translate(x, 4, 10);
  writeln(x);
  a := plus(12, 12, 4);
  b := minus(23, 12, 4);
  c := umnozh(2, 2, 4);
  d := stepen(100, 2, 4);
  translate(a, 4, 10);
  translate(b, 4, 10);
  translate(c, 4, 10);
  translate(d, 4, 10);
  writeln(a);
  writeln(b);
  writeln(c);
  writeln(d);
  readln;readln;
end.