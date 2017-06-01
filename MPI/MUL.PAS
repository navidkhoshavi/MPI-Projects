program mul_matris;
var
   m,n,i,j,k:integer;
   a:array [1..3,1..2] of integer;
   b:array [1..2,1..3] of integer;
   c:array [1..3,1..3] of integer;
procedure vector(m,n:integer);
var k:integer;
begin
        c[m,n]:=0;
	for k:=1 to 2 do
          c[m,n]:=c[m,n]+a[m,k]*b[k,n];
end;

begin
  writeln ('pleas enter 1 matris by format 3*2');
  for i:=1 to 3 do
        for j:=1 to 2 do
	 begin
	   a[i,j]:=0;
           read(a[i,j]);
	 end;
  writeln('pleas enter 1 matris by format 2*3');
  for i:=1 to 2 do
	for j:=1 to 3 do
	 begin
	   b[i,j]:=0;
           read(b[i,j]);
	 end;
  forall i:=1 to 3 do
     forall j:=1 to 3 do
         vector(i,j); 
writeln('*******************************************************');
for i:=1 to 3 do
   begin
    writeln;
    for j:=1 to 3 do
	write(c[i,j]:4);
   end;
readln;
end.
