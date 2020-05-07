program cub;
var 
x, n: integer;
a, b: string;
begin
  while true do begin
    write('please enter integer value' + a + #10 + 'N = ');  
    x := 1;
    a := '';
    readln(b);
    if integer.TryParse(b, n) and (n > 0) then begin
      for x:=1 to (n-1) do begin
          print(x*x*x);
      end;
      break;
    end;  
    if not integer.TryParse(b, n) then begin
      write('error: "' + b + '" is not integer' + #10);
      a := ' again';
    end  
    else    
      write('error: "' + n + '" <= 0' + #10);
      a := ' again';
  end  
end.