program ex17p13(input, output);

type
  tree =^root;
  root = record
           cell: char;
           left, right: tree;
         end;

var
  tr: tree;

procedure del(var t: tree);
  begin
    if t <> nil then
      begin
        del(t^.left);
        del(t^.right);
        dispose(t);
        t := nil;
      end;
  end;

begin
  new(tr);
  tr := nil;
  del(tr);
end.