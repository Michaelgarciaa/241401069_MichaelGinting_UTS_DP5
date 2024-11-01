program Fibonacci;

var
  n, i, first, second, next, total: integer;

begin
  write('Masukkan nilai n: ');
  readln(n);

  first := 0;
  second := 1;
  total := 0;

  write('Sequence = ');
  if n >= 1 then
  begin
    write(first);
    total := total + first;
  end;
  if n >= 2 then
  begin
    write(', ', second);
    total := total + second;
  end;

  for i := 3 to n do
  begin
    next := first + second;
    write(', ', next);
    total := total + next;
    first := second;
    second := next;
  end;

  writeln;
  writeln('Total =',total);
end.
