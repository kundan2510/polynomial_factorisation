g := (x,m) -> x^m - 1;
h := (x,y,a) -> x^2 + y^2 - 2*x*y - a;


invr := proc(f5,f6,p)
begin
    res := gcdex(f5,f6);
    gc := res[1];
    if (gc = poly(1,[y],IntMod(p))) then
        inval := res[2];
        [inval,gc]
    else
        print("Inverse doesn't exist");
        [0,gc]
    end_if
end_proc

