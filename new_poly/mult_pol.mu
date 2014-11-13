mult_pol := proc(f11,f12,lg,p,f2)
begin
    new_pol := poly(f11*f12,[x]);
    //print(new_pol);
    cof02 := coeff(new_pol,2);
    cof01 := coeff(new_pol,1);
    cof00 := coeff(new_pol,0);
    
    f_pol := poly(f2*cof02 + x*cof01 + cof00,[x]);
    
    //print(f_pol);
    
    cof11 := coeff(f_pol,1);
    cof10 := coeff(f_pol,0);
    //print(cof10);
    r11 := divide(cof11,lg,[y],Rem);
    r12 := divide(cof10,lg,[y],Rem);
    //print(r12);
    r13 := poly(r11,[y],IntMod(p));
    r14 := poly(r12,[y],IntMod(p));
    //print(r14);
    res := expr(r13)*x + expr(r14);
   // print(res);
end_proc