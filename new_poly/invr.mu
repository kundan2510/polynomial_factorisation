g := (x,m) -> x^m - 1;
h := (x,y,a) -> y^2 - 2*x*y - a;
l := (x,y,a) -> (x + y + y^2)^2 - a;

invr := proc(f5,f6,p)
begin
    print("Calculating inverse of");
    print(f5);
    print("modulo ");
    print(f6);
    res := gcdex(f5,f6);
    gc := res[1];
    gc2 := res[2];
    gc := divide(gc,f6,Rem);
    gc2 := divide(gc,f6,Rem);
    print(gc);
    if (degree(gc,y) = 0 ) then
        inval := res[2];
        [inval,gc]
    else
        print("Inverse doesn't exist");
        [0,gc]
    end_if
end_proc

