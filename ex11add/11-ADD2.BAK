program ex11add2(input, output);
{$R+,B+}

const
  n = 5;
  m = 4;

type
  matrix = array [1..n,1..m] of integer;

procedure inputdata(var mtrx: matrix);
  var
    i, j: integer;
  begin
    writeln('Enter a matrix ', n, 'x', m, ' :');
    for i := 1 to n do
      for j := 1 to m do
        read(mtrx[i,j]);
        end;

function work(mtrx: matrix): boolean;
  var
    i, j, k: integer;
    eqstr, eqsym: boolean;
  begin
    eqstr := false;
    i := 1;
    while not eqstr and (i <= n - 1) do
      begin
        j := i + 1;
        while not eqstr and (j <= n) do
          begin
            k := 1;
            eqsym := mtrx[i,1] = mtrx[j,1];
            while eqsym and (k <= m) do
              begin
                eqsym:= mtrx[i,k] = mtrx[j,k];
                k := k + 1
              end;
            eqstr := (k = m + 1) and eqsym;
            j := j + 1;
          end;
        i := i + 1;
      end;
    work := eqstr;
  end;

var
  mtrx: matrix;
  eqln: boolean;
begin
  writeln('______________________________________');
  writeln('Mikhalyov Danila, group 112, ex11.add2');
  writeln('______________________________________');
  inputdata(mtrx);
  eqln := work(mtrx);
  writeln('There are equal lines in the matrix: ', eqln);
  readln;readln;
end.