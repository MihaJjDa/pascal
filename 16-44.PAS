program ex16p44;

type
  twodirlist = ^link;
  link = record
           cell: char;
           last, next: twodirlist;
         end;
var
  t1, t2: text;
  tdl, p: twodirlist;

function createtwodirlist(var f: text):twodirlist;
  var
    l, p: twodirlist;
  begin
    new(l);
    l^.next := nil;
    if not eoln(f) then
      begin
        with l^ do
          begin
            new(next);
            with next^ do
              begin
                read(f, cell);
                last := nil;
              end;
            p := next;
          end;
        while not eoln(f) do
          begin
            new(p^.next);
            p^.next^.last := p;
            p := p^.next;
            read(f, p^.cell);
          end;
      end;
    if l^.next <> nil then
      begin
        p^.next := nil;
        l^.last := p;
      end
    else
      l^.last := nil;
    createtwodirlist := l;
    readln(f);
  end;

procedure delsharp(var p: twodirlist);
  var
    q: twodirlist;
  begin
    q := p;
    p^.last^.next := p^.next;
    p := p^.last;
    dispose(q);
    if p^.cell = '#' then
      delsharp(p);
    q := p;
    if p^.last^.next <> nil then
      begin
        p^.last^.next := p^.next;
        p := p^.last;
      end;
    dispose(q);
  end;

procedure perfomtdltostr(tdl: twodirlist);
  var
    p, q: twodirlist;
    i: integer;
  begin
    p := tdl^.next;
    while p <> nil do
      begin
        if p^.cell = '#' then
          begin
            q := p;
            if p^.last^.last <> nil then
              begin
                p^.last^.last^.next := p^.next;
                p^.next^.last := p^.last^.last;
                p := p^.next;
              end
            else
              begin
                tdl^.next := p^.next;
                p := p^.next;
                p^.last := nil;
              end;
            dispose(q^.last);
            dispose(q);
          end
        else
          p := p^.next;
      end;
    p := tdl^.next;
    while p^.next <> nil do
      p := p^.next;
    tdl^.last := p;
  end;

procedure writetdl(tdl: twodirlist; var f: text);
  var
    p: twodirlist;
  begin
    p := tdl^.next;
    if p <> nil then
      begin
        while p <> nil do
          begin
            write(f, p^.cell);
            p := p^.next;
          end;
        writeln(f);
      end;
  end;

procedure deltdl(var tdl: twodirlist);
  var
    p, q: twodirlist;
  begin
    p := tdl^.next;
    while p <> nil do
      begin
        q := p;
        p := p^.next;
        dispose(q);
      end;
    dispose(tdl);
  end;
var i: integer;
begin
  writeln('__________________________________');
  writeln('Mikhalyov Danila, group 112, 16.44');
  writeln('__________________________________');
  assign(t1, 'T1.TXT');
  assign(t2, 'T2.TXT');
  reset(t1);
  rewrite(t2);
  i := 0;
    while not eof(t1) do
      begin
        tdl := createtwodirlist(t1);
        perfomtdltostr(tdl);
        writetdl(tdl, t2);
        deltdl(tdl);
      {i:=i+1;writeln(i);}
      end;
  close(t1);
  close(t2);
  writeln('Input file: T1.TXT');
  writeln('Output file: T2.TXT');
  writeln('Press ENTER to exit');
  readln;
end.