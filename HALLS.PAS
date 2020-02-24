program ex15p34(input, output);
{$R+,B+}

const
  n = 10;

type
  labyrinth = array [1..n,1..n] of boolean;

function path(var L: labyrinth; first, last: integer): boolean;
  var
    visited: array [1..n] of boolean;
    k, i: integer;
    way: array [1..n] of integer;

  function path1(r1, r2: integer): boolean;
    var
      r: integer;
      ok: boolean;
    begin
      if r1 = r2 then
        path1 := true
      else
        begin
          r := 0;
          ok := false;
          repeat
            r := r + 1;
            if l[r1,r] and not visited[r] then
              begin
                visited[r] := true;
                k := k + 1;
                way[k] := r;
                if path1(r, r2) then
                  ok := true
                else
                  k := k - 1;
              end;
          until ok or (r = n);
          path1 := ok;
        end;
    end;

  begin
    for i := 1 to n do
      visited[i] := false;
    visited[first] := true;
    k := 1;
    way[k] := first;
    if path1(first, last) then
      begin
        for i := 1 to k do
          write(way[i], ' ');
        path := true;
      end
    else
      path := false;
  end;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.35');
  writeln('____________________________________');
  writeln('Enter cities linked by roads ("0 0" is the end of enter)');
end.