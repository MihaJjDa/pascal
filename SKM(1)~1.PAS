program sortirov;
const n=10;
type mas=array[1..n] of integer;
var  a:mas;
     i:integer;
procedure sort(var a:mas);
  var min,j,z,i:integer;
  begin
    for i:=1 to n-1 do
     begin
       min := i;
       for j:=i to n do
        if a[j]<a[min] then
          min := j;
       z := a[i];
       a[i] := a[min];
       a[min] := z;
     end;
  end;

begin
  for i:=1 to n do read(a[i]);
  sort(a);
  for i:=1 to n do write(a[i]);
  writeln;
  readln;readln
end.
