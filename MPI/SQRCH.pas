program sqr;
type
  chanel=channel of integer;
var
  c:chanel;
  i:integer;
procedure p1;
 var
  j:integer;
procedure p2;
 begin
  j:=sqr(j);
  writeln('your number:',i);
  writeln('sqr of number:',j);
 end;
begin
  c:=i;
  j:=c;
  p2;
end;
begin
  writeln('please enter a number:');
  readln(i);
  p1;
end.
