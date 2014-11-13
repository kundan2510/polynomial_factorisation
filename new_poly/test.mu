myFunc := proc(p,a,lg)
begin
    s := calcs(p,lg);
    print("s is");
    print(s);
    f1 := p^s - 1;
    print(f1);
    f2 := poly(h(x,y,a),[x]);
    print(f2);
    k := g(y,lg);
    mainfunc(f1,f2,k,p,a);
end_proc