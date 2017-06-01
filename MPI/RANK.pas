program sort;
const n=10;
var
  a,b:array[1..n] of integer;
  i,j,m:integer;
  l:spinlock;
begin
   writeln('please enter 10 number to sort');
   for i:=1 to n do
        readln(a[i]);
   forall i:=1 to n do
      begin
        lock(l);
          m:=1;
          forall j:=1 to n do
            if a[i]>a[j] then
                m:=m+1
            else if (a[i]=a[j]) and (i>j) then
                m:=m+1;
          b[m]:=a[i];
        unlock(l);
      end;
   for m:=1 to n do
      writeln('sorted number:',b[m]);
end.
