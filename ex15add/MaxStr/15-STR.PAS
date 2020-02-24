program ex15pStringFile;

var
  f3: text;
  k, i: integer;
  c: char;

function lengthline(var f: text): integer;
  var
    n: integer;
    c: char;
  begin
    n := 0;
    while not eoln(f) do
      begin
        read(f, c);
        n := n + 1;
      end;
    lengthline := n;
  end;

function maxlenline(var f: text): integer;
  var
    maxl, curl, maxi, curi: integer;
  begin
    maxl := 0;
    curl := 0;
    maxi := 1;
    curi := 1;
    while not eof(f) do
      begin
        curl := lengthline(f);
        readln(f);
        if maxl < curl then
          begin
            maxi := curi;
            maxl := curl;
          end;
        curi := curi + 1;
      end;
    maxlenline := maxi;
  end;

procedure skiplines(var f: text; k: integer);
  var
    i: integer;
  begin
    for i := 1 to k do
      readln(f);
  end;

procedure outputline(var f: text);
  var
    c: char;
  begin
    while not eoln(f3) do
      begin
        read(f, c);
        write(c);
      end;
  end;

begin
  writeln('____________________________________________');
  writeln('Mikhalyov Danila, group 112, ex15-MaxStrFile');
  writeln('____________________________________________');
  assign(f3, 'F3.TXT');
  reset(f3);
    k := maxlenline(f3);
  close(f3);
  reset(f3);
    skiplines(f3, k - 1);
    outputline(f3);
  close(f3);
  readln;
end.