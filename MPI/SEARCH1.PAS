program seqsearch;
const
  n=10;
var
  i,j,l:integer;
  a:array[1..n] of integer;
begin
  writeln('please enetr your Array by format integer:');
  for i:=1 to n do
    readln(a[i]);
  repeat
    writeln('enter a number to search:','             ','(enter 0 to exit)');
    readln(j);
    l:=0;
    forall i:=1 to n do
      if j=a[i] then
        begin
          writeln('position of key:',i);
          l:=1;
        end;
      if l=0 then
        writeln('your key is not found');
  until j=0;
end.
