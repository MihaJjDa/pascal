program ex17pCourse;

type
  str = packed array [1..10] of char;
  stud = record
           fn: record
                 fam, name: str;
               end;
           sex: (M, W);
           marks: array [1..5] of 2..5;
         end;
  tree = ^root;
  root = record
           cell: stud;
           left, right: tree;
         end;

var
  course: file of stud;
  answer: text;
  current: stud;
  l: tree;
  i: integer;

function check(var current: stud): boolean;
  var
    a: boolean;
  begin
    a := false;
    with current do
      if sex = M then
        begin
          i := 1;
          while not a and (i <= 5) do
            begin
              a := marks[i] = 2;
              i := i + 1;
            end;
      end;
    check := a;
  end;

procedure ins(var l: tree; var current: stud);
  begin
    if l = nil then
      begin
        new(l);
        with l^ do
          begin
            cell := current;
            left := nil;
            right := nil;
          end;
      end
    else
      if current.fn.fam > l^.cell.fn.fam then
        ins(l^.right, current)
      else
        ins(l^.left, current);
  end;

procedure writetree(l: tree; var f: text);
  begin
    if l <> nil then
      begin
        writetree(l^.left, f);
        with l^.cell do
          begin
            with fn do
              write(f, fam, name);
            for i := 1 to 5 do
              write(f, marks[i],' ');
            writeln(f);
          end;
        writetree(l^.right, f);
      end;
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

begin
  writeln('________________________________________');
  writeln('Mikhalyov Danila, group 112, ex17pCourse');
  writeln('________________________________________');
  assign(course, 'COURSE.REC');
    reset(course);
    l := nil;
    while not eof(course) do
      begin
        read(course, current);
        if check(current) then
          ins(l, current);
      end;
  close(course);

  assign(answer, 'ANS.TXT');
  rewrite(answer);
    writetree(l, answer);
  close(answer);
  deltree(l);
  writeln('The output data: ANS.TXT');
  readln;
end.
