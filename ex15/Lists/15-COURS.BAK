program ex15pCourse;

type
  str = packed array [1..10] of char;
  stud = record
           fn: record
                 fam, name: str;
               end;
           sex: (M, W);
           marks: array [1..5] of 2..5;
         end;
  list = ^link;
  link = record
           cell: stud;
           next: list;
         end;

var
  course: file of stud;
  answer: text;
  current: stud;
  l: list;
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

procedure ins(var l: list; var current: stud);
  var
    p: list;
  begin
    if l = nil then
      begin
        new(l);
        with l^ do
          begin
            cell := current;
            next := nil;
          end;
      end
    else
      if current.fn.fam > l^.cell.fn.fam then
        ins(l^.next, current)
      else
        begin
          new(p);
          with p^ do
            begin
              cell := current;
              next := l;
            end;
          l := p;
        end;
  end;

begin
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
    while l <> nil do
      with l^ do
        begin
          with cell do
            begin
              with fn do
                write(answer, fam, name);
              for i := 1 to 5 do
                write(answer, marks[i],' ');
              writeln(answer);
            end;
          l := next;
        end;
  close(answer);
  readln;
end.
