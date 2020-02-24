program ex17n2 (output);

type
  tree = ^root;
  root = record
           cell: char;
           left, right: tree;
         end;

var
  form1, form2: text;
  t, t1: tree;

procedure createtree(var t: tree; var f: text);
  var
    p: tree;
    c: char;
  begin
    read(f, c);
    new(p);
    if c = '(' then
      begin
        createtree(p^.left, f);
        read(f, p^.cell);
        createtree(p^.right, f);
        read(f, c);
      end
    else
      begin
        p^.cell := c;
        p^.left := nil;
        p^.right := nil;
      end;
    t := p;
  end;

procedure writeform(t: tree; var f: text); forward;
  procedure writeform1(q: tree; var l: text);
    begin
      with q^ do
        begin
          writeform(left, l);
          write(l, cell);
          writeform(right, l);
        end;
    end;
  procedure writeform;
    var
      p: tree;
    begin
      p := t;
      if p <> nil then
        if p^.cell in ['+', '-', '*'] then
          begin
            write(f, '(');
            writeform1(p, f);
            write(f, ')');
          end
        else
          writeform1(p, f);
     end;

function copytree(r: tree): tree;
  var
    q: tree;
  begin
    new(q);
    if r <> nil then
      begin
        q^.cell := r^.cell;
        q^.left := copytree(r^.left);
        q^.right := copytree(r^.right);
      end
    else
      q := nil;
    copytree := q;
  end;

function derivate(td: tree): tree; forward;
  function addderivate(w: tree): tree;
    var
      q: tree;
    begin
      q := w;
      with q^ do
        begin
          left := derivate(left);
          right := derivate(right);
        end;
      addderivate := q;
    end;
  function mpderivate(r: tree): tree;
    var
      e: tree;
    begin
      new(e);
      with e^ do
        begin
          left := r;
          cell := '+';
          right := copytree(r);
          left^.left := derivate(left^.left);
          right^.right := derivate(right^.right);
        end;
      mpderivate := e;
    end;
  function derivate;
    var
      p: tree;
    begin
      p := td;
      case p^.cell of
        '*': p := mpderivate(p);
        '+', '-': p := addderivate(p);
        'X', 'x': p^.cell := '1'
      else
        p ^.cell := '0';
      end;
      derivate := p;
    end;

procedure deltree(var t: tree);
  begin
    if t <> nil then
      begin
        with t^ do
          begin
            deltree(left);
            deltree(right);
          end;
        dispose(t);
        t := nil;
      end;
  end;

function performform(t: tree): tree;
  var
    tl, tr, tt: tree;
  begin
    tt := t;
    if tt^.cell in ['+', '-', '*'] then
      begin
        tt^.left := performform(tt^.left);
        tt^.right := performform(tt^.right);
        tl := tt^.left;
        tr := tt^.right;
        if (tt^.cell = '+') and (tl^.cell = '0') or
           (tt^.cell = '*') and (tl^.cell = '1') then
          begin
            dispose(tl);
            dispose(tt);
            tt := tr;
          end
        else
          if (tt^.cell in ['+', '-']) and (tr^.cell = '0') or
             (tt^.cell = '*') and (tr^.cell = '1') then
            begin
              dispose(tr);
              dispose(tt);
              tt := tl;
            end
          else
            if (tt^.cell = '*') and
               ((tl^.cell = '0') or (tr^.cell = '0')) then
              begin
                deltree(tt^.left);
                deltree(tt^.right);
                tt^.cell := '0';
              end;
      end;
    performform := tt;
  end;

procedure outputtree(t: tree);
  begin
    if t <> nil then
      begin
        outputtree(t^.left);
        write(t^.cell);
        outputtree(t^.right);
      end;
  end;

begin
  writeln('___________________________________');
  writeln('Mikhalyov Danila, group 112, ex17n2');
  writeln('___________________________________');
  assign(form1, 'FORM1.TXT');
  assign(form2, 'FORM2.TXT');
  reset(form1);
  rewrite(form2);
  while not eof(form1) do
    if not eoln(form1) then
      begin
        createtree(t, form1);
        readln(form1);
        writeform(t, form2);
        writeln(form2);
        t1 := copytree(t);
        t1 := derivate(t1);
        writeform(t1, form2);
        writeln(form2);
        t1 := performform(t1);
        writeform(t1, form2);
        writeln(form2);
        writeln(form2);
        deltree(t);
        deltree(t1);
      end
    else
      readln(form1);
  close(form1);
  close(form2);
  writeln('Input file: FORM1.TXT');
  writeln('Output file: FORM2.TXT');
  writeln('Press ENTER to exit');
  readln;
end.