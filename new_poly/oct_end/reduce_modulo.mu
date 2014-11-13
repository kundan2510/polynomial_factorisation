reduce_modulo := proc(modu,pol,p)
begin
    res1 := divide(expr(pol),expr(modu),Rem);
    res := poly(res1,[y],IntMod(p));
end
