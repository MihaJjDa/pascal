program ex15pTextSets;

var
  d: text;
  c: char;
  b, s: set of char;
begin
  assign(d, 'D1.TXT');
  reset(d);
  b := ['�', '�', '�', '�', '�', '�', '�', '�', '�', '�'];
  while not eof(d) do
    begin
      s := [];
      while not eoln(d) do
        begin
          read(d, c);
          s := s + [c];
        end;
      b := b * s;
      readln(d);
    end;
  b := ['�', '�', '�', '�', '�', '�', '�', '�', '�', '�'] - b;
  close(d);
  for c :=  chr(0) to chr(255) do
    if c in b then
      begin
        write(c);
        b := b - [c];
      end;
  readln;
end.