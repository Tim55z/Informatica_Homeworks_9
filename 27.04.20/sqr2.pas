﻿program cub;
var 
x, n: longint;
a, b: string;
t: boolean;
begin
  while true do begin
    write('please enter integer value [1; 2147483647]' + a + #10 + 'N = ');  
    x := 1;
    t := false;
    a := '';
    readln(b);
    if longint.TryParse(b, n) and (n > 0) then begin
      if n > 2147483647 then begin
        write('error: "' + b + '" > 2147483647' + #10);
        a := ' again';
        t := true;
      end  
      else begin
        while x < n do begin
            print(sqr(x));
            x := x + 1;
        end;
      break;
      end
    end;
    if not longint.TryParse(b, n) then begin
      write('error: "' + b + '" is not integer' + #10);
      a := ' again';
      t := true;
    end;
    if t = false then begin    
      write('error: "' + n + '" < 1' + #10);
      a := ' again';
    end  
  end  
end.