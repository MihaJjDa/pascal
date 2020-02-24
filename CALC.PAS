var
  a: integer;
  s: longint;
begin
  s := 0;
  read(a);
  while a <> 0 do
    begin
      s := s + a;
      read(a);
    end;
  writeln(s);
  readln;readln;
end.
