program ex17p19;

const
  emptystr = '         ';
  upcaseint = ord('A') - ord('a');

type
  str = packed array [1..9] of char;

  identcell = record
                nameident: str;
                timesmet: integer;
                strmet: set of 1..100;
              end;

  identtree = ^identroot;
  identroot = record
                cell: identcell;
                left, right: identtree;
              end;

var
  prog1, prog2, ident1, ident2: text;

procedure skipsym(var prog: text; var c: char);
  begin
    if not eoln(prog) then
      read(prog, c);
    while not (c in ['a'..'z', 'A'..'Z']) and not eoln(prog) do
      begin
        if c in ['0'..'9'] then
          begin
            while c in ['0'..'9'] do
              begin
                read(prog, c);
              end;
            if (c = 'e') or (c = 'E') then
              read(prog, c);
          end;
        if c = '{' then
          while c <> '}' do
            read(prog, c);
        if c = '''' then
          begin
            read(prog, c);
            while c <> '''' do
              read(prog, c);
          end;
        if not eoln(prog) then
          read(prog, c);
      end;
  end;

function upcase(c: char): char;
  begin
    if c in ['a'..'z'] then
      upcase := chr(ord(c) + upcaseint)
    else
      upcase := c;
  end;

procedure readstr(var prog: text; var s: str; var c: char);
  var
    i: integer;
  begin
    i := 1;
    while (c in ['a'..'z', 'A'..'Z', '0'..'9']) and not eoln(prog) do
      begin
        s[i] := upcase(c);
        read(prog, c);
        i := i + 1;
      end;
    if i < 10 then
    if eoln(prog) and (c in ['a'..'z', 'A'..'Z', '0'..'9']) then
      s[i] := upcase(c)
    else
      s[i] := ' ';
    for i := i + 1 to 9 do
      s[i] := ' ';
  end;

procedure strintree(s: str; var searchtr: identtree; numberstr: integer);
  begin
    if searchtr = nil then
      begin
        new(searchtr);
        with searchtr^ do
          begin
            with cell do
              begin
                nameident := s;
                timesmet := 1;
                strmet := [numberstr];
              end;
            left := nil;
            right := nil;
          end;
      end
    else
      with searchtr^ do
        if s > cell.nameident then
          strintree(s, right, numberstr)
        else
          if s < cell.nameident then
            strintree(s, left, numberstr)
          else
            if s = cell.nameident then
            with cell do
              begin
                timesmet := timesmet + 1;
                strmet := strmet + [numberstr];
              end;
  end;

procedure readfile(var prog: text; var searchtr: identtree);
  var
    c: char;
    s: str;
    numberstr: integer;
  begin
    numberstr := 1;
    while not eof(prog) do
      begin
        while not eoln(prog) do
          begin
            skipsym(prog, c);
            if c in ['a'..'z', 'A'..'Z'] then
              begin
                readstr(prog, s, c);
                strintree(s, searchtr, numberstr);
              end;
          end;
        readln(prog);
        numberstr := numberstr + 1;
      end;
  end;

procedure writecell(var ident: text; var cell:identcell);
  var
    i: integer;
  begin
    with cell do
      begin
        write(ident, nameident, ' ');
        write(ident, timesmet, '  ');
        for i := 1 to 100 do
          if i in strmet then
            write(ident, i, ' ');
      end;
    writeln(ident);
  end;

procedure writefile(var ident: text; searchtr: identtree);
  begin
    if searchtr <> nil then
      with searchtr^ do
        begin
          writefile(ident, left);
          writecell(ident, cell);
          writefile(ident, right);
        end;
  end;

procedure deltree(var tr: identtree);
  begin
    if tr <> nil then
      begin
        with tr^ do
          begin
            deltree(left);
            deltree(right);
          end;
        dispose(tr);
        tr := nil;
      end;
  end;

procedure wrident(var prog, ident: text);
  var
    searchtr: identtree;
  begin
    searchtr := nil;
    reset(prog);
      readfile(prog, searchtr);
    close(prog);
    rewrite(ident);
      writefile(ident, searchtr);
    close(ident);
    deltree(searchtr);
  end;

begin
  writeln('__________________________________');
  writeln('Mikhalyov Danila, group 112, 17.19');
  writeln('__________________________________');
  assign(prog1, 'PROG1.PAS');
  assign(ident1, 'IDENT1.TXT');
  wrident(prog1, ident1);

  assign(prog2, 'PROG2.PAS');
  assign(ident2, 'IDENT2.TXT');
  wrident(prog2, ident2);

  writeln('Input files: PROG1.PAS, PROG2.PAS');
  writeln('Output files: IDENT1.TXT, IDENT2.TXT');
  readln;
end.