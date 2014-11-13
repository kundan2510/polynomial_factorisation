mainfunc := proc(p,a,lg,f1,f2)
begin
    print("Working with polynomials :");
    print(f1);
    print(f2);
    r := divide(f1,f2,Rem);
    print(r);
    c1 := coeff(r , 1);
    c2 := coeff(r , 0);
    print(c1);
    print(c2);
    r1 := divide(c1,lg,[y],Rem);
    r2 := divide(c2,lg,[y],Rem);
    print(r1);
    print(r2);
    r3 := poly(r1,[y],IntMod(p));
    r4 := poly(r2,[y],IntMod(p));
    
    print(r3);
    print(r4);
    
    d1 := poly(lg,[y],IntMod(p));
    
    t1 := invr(r3,d1,p);
    t11 := invr(r4,d1,p);
    if (t11[1] = 0) then
        gc := t11[2];
        mainfunc(p,a,expr(gc),f1,f2);
        gc2 := divide(lg,expr(gc),Quo);
        mainfunc(p,a,expr(gc2),f1,f2);
    elif (t1[1] = 0 ) then
        gc := t1[1];
        mainfunc(p,a,expr(gc),f1,f2);
        gc2 := divide(lg,expr(gc),Quo);
        mainfunc(p,a,expr(gc2),f1,f2);
    else
        t2 := t1[1]*r4;
        print(t2);
        t3 := divide(expr(t2),lg,[y],Rem);
        t4 := poly(t3,[y],IntMod(p));

        print(t4);
        n1 := x + poly(t4,Expr);
        print(n1);
        n2 := poly(n1,[x]);

        print(n2);
        n3 := divide(f2,n2,Rem);
        print(n3);
        n4 := divide(expr(n3),lg,[y],Rem);
        print(n4);
        n5 := expr(poly(n4,[y],IntMod(p)));
        print(n5);
    end_if
end_proc