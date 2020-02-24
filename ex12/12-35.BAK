program ex15p35(input, output);
{$R+,B+}

const
  first = 1;
  last = 10;
  n = 10;


type
  cities = array [1..n,1..n] of boolean;
  waypointsb = array [1..n] of boolean;
  waypoints = array [1..n] of integer;

procedure inputdata(var p: cities);
  var
    i, j: integer;
  begin
    for i := 1 to n do
      for j := 1 to n do
        p[i,j] := false;
    writeln('Enter cities linked by roads as the pairs a b, where a, b <= ', n);
    writeln('"0 0" is the end of enter');
    read(i, j);
    while (i <> 0) and (j <> 0) do
      begin
        p[i,j] := true;
        p[j,i] := true;
        read(i, j);
      end;
  end;

function work(var p: cities; var way: waypoints; var length: integer): boolean;
  var
    visited: waypointsb;
    l: integer;

  function path(i, j: integer): boolean;
    var
      k: integer;
      ok: boolean;
    begin
      if i = j then
        path := true
      else
        begin
          k := 0;
          ok := false;
          repeat
            k := k + 1;
            if p[i,k] and not visited[k] then
              begin
                visited[k] := true;
                length := length + 1;
                way[length] := k;
                if path(k, j) then
                  ok := true
                else
                  length := length - 1;
              end;
          until ok or (k = last);
          path := ok;
        end;
    end;

  begin
    for l := 1 to n do
      visited[l] := false;
    visited[first] := true;
    length := 1;
    way[length] := first;
    work := path(first, last);
  end;

procedure outputdata(ok: boolean; var way: waypoints; length: integer);
  var
    k: integer;
  begin
    if ok then
      begin
        writeln('The way from ', first, ' to ', last, ' :');
        for k := 1 to length do
          write(way[k], ' ');
      end
    else
      writeln('There is no way from ', first, ' to ', last);
  end;

var
  p: cities;
  way: waypoints;
  length: integer;
  ok: boolean;
begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.35');
  writeln('____________________________________');
  inputdata(p);
  ok := work(p, way, length);
  outputdata(ok, way, length);
  readln;readln;
end.