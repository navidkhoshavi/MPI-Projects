program matrixmultiplication;
Type
  T=array[1..4] of integer;
  G=array[1..4,1..4] of integer;
Var
  a,b,c:G;              
  sum,n:integer;                         
  i,j,k:integer;
  l,ll:spinlock;
Procedure multiplicate(i,j:integer);
Var
  k,n,m:integer;
  s:T;
Begin
  forall k:=1 to 4 do
     s[k]:=s[k]+a[i,k]*b[k,j];
  n:=4;
  m:=n div 2;
  while(n>1) do
    begin
       forall k := 1 to m do
          s[k]:=s[k]+s[m+k];
       n:=n div 2;
       m:=n div 2;
    end;
  c[i,j]:=s[1];
End;
Begin
  writeln('Please Enter matix A:');
  for i := 1 to 4 do
    begin
      for j := 1 to 4 do
        read(a[i,j]);
      readln;
    end;
  writeln('*******************************************************');
  writeln('Please Enter matrix B:');
  for i := 1 to 4 do
    begin
      for j := 1 to 4 do
        read(b[i,j]);
      readln;
    end;
  forall i := 1 to 4 do
    forall j := 1 to 4 do
      multiplicate(i,j);
  writeln('this is the resault:');
  for i := 1 to 4 do
    begin
      for j := 1 to 4 do
      write(c[i,j]:4);
      writeln;
    end;
end.
