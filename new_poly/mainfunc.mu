mainfunc := proc(f1,f2,lg,p,a)
begin
    f3 := rem_calc(f1,f2,lg,p,a);
    if(f3 <> p) then
        print("gcd is");
        print(f3);
    end_if
end