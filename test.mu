
myFunc := proc(p,a,lg)
begin
    f1 := poly(g(x,(p-1)/2),[x]);
    f2 := poly(h(x,y,a),[x]);
    k := g(y,lg);
    mainfunc(p,a,k,f1,f2);
end_proc


