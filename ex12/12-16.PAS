program ex12p16(input, output);
{$R+,B+}

procedure print;
  var
    n: char;
  begin
    read(n);
    if n <> '.' then
      begin
        print;
        write(n);
      end;
  end;

begin
  writeln('____________________________________');
  writeln('Mikhalyov Danila, group 112, ex12.16');
  writeln('____________________________________');
  writeln('Enter a text with the point at the end:');
  print;
  readln;readln;
end.