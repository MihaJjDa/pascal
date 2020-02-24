program ex16n3(output);

type
  chrlist = ^chrnode;
  chrnode = record
              cell: char;
              next: chrlist;
            end;
  list = ^node;
  node = record
           cell: chrlist;
           next: list;
         end;

var
  words: text;
  l: list;

procedure readstr(var c: chrlist; var f: text; var n: integer);
  var
    q, p: chrlist;
  begin
    q := nil;
    n := 0;
    while not eoln(f) do
      begin
        if q = nil then
          begin
            new(q);
            read(f, q^.cell);
            p := q;
          end
        else
          begin
            new(p^.next);
            p := p^.next;
            read(f, p^.cell);
          end;
        n := n + 1;
      end;
    if q <> nil then
      p^.next := nil;
    readln(f);
    c := q;
  end;

procedure delchrlist(var c: chrlist);
  var
    q: chrlist;
  begin
    while c <> nil do
      begin
        q := c;
        c := c^.next;
        dispose(q);
      end;
  end;

procedure dellist(var t: list);
  var
      q: list;
  begin
    while t <> nil do
      begin
        q := t;
        t := t^.next;
        delchrlist(q^.cell);
        dispose(q);
      end;
  end;

procedure insword(var t: list; c: chrlist);
  var
    p: list;
  begin
    if t <> nil then
      begin
        p := t;
        while p^.next <> nil do
          p := p^.next;
        new(p^.next);
        p^.next^.cell := c;
        p^.next^.next := nil;
      end
    else
      begin
        new(t);
        t^.cell := c;
        t^.next := nil;
      end;
  end;

procedure outputchrlist(c: chrlist);
  var
    p: chrlist;
  begin
    p := c;
    while p <> nil do
      begin
        write(p^.cell);
        p := p^.next;
      end;
    writeln;
  end;

procedure outputlist(t: list);
  var
    p: list;
  begin
    p := t;
    while p <> nil do
      begin
        outputchrlist(p^.cell);
        p := p^.next;
      end;
  end;

function writelist(var f: text): list;
  var
    maxlen, len: integer;
    t: list;
    c: chrlist;
  begin
    t := nil;
    maxlen := 0;
    while not eof(f) do
      begin
        readstr(c, f, len);
        if len > maxlen then
          begin
            maxlen := len;
            dellist(t);
            insword(t, c);
          end
        else
          if len = maxlen then
            insword(t, c);
      end;
    writelist := t;
  end;


begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex16n3');
  writeln('___________________________________');
  assign(words, 'WORDS.TXT');
  reset(words);
    l := writelist(words);
  close(words);
  writeln('There are words with the maximum length from file WORDS.TXT:');
  outputlist(l);
  dellist(l);
  readln;
end.