program cub;
var 
x, n: int64;
a, b: string;
t: boolean;
begin
  while true do begin
    write('please enter integer value [1; 2097152]' + a + #10 + 'N = ');  
    x := 1;
    t := false;
    a := '';
    readln(b);
    if int64.TryParse(b, n) and (n > 0) then begin
      if n > 2097152 then begin
        write('error: "' + b + '" > 2097152' + #10);
        a := ' again';
        t := true;
      end  
      else begin
        for x:=1 to n do begin
            print(x*x*x);
        end;
      break;
      end
    end;
    if not int64.TryParse(b, n) then begin
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