find_order := proc(pow_val,p,r,cnst)
begin
    temp := poly(y^pow_val - cnst,[y],IntMod(p));
    modulo2 := divide(poly(y^r - 1,[y], IntMod(p)),poly(y-1,[y],IntMod(p)),Quo);
   
    mod3 := factor(modulo2);
    //print(Unquoted,"factors are ".expr2text(mod3)."\n");
    count := 0;
    i := 2;
    for modulo in mod3 do
        count := count + 1;
    end_for:
    //print(Unquoted,"Count is ".expr2text(count)."\n");
    while i < count do
        modulo := mod3[i/2];
        print(Unquoted,"Trying to calculate order of  ". expr2text(expr(temp)) . " modulo  ". expr2text(expr(modulo))."\n");
        result := temp;
        ans := 1;
        while TRUE do
            if result = poly(1,[y],IntMod(p)) then
                print(Unquoted,"----------------------------------------------\n");
                print(Unquoted,"\n\nOrder found! \norder = ". expr2text(ans) ."\n \n");
                //print(Unquoted,"\n\nOrder found! \norder = ". expr2text(ans) ."\nresult = ". expr2text(result) . "\nmodulo  = ". expr2text(modulo)."\nresult_temp = ".expr2text(result_temp)."\n \n");
                print(Unquoted,"----------------------------------------------\n");
                break;
            elif result = poly(0,[y],IntMod(p)) then
                print(Unquoted,"----------------------------------------------\n");
                print(Unquoted,"\n\npolynomial became zero \norder = ".expr2text(ans)."\n");
                //print(Unquoted,"\n\npolynomial became zero \norder = ". expr2text(ans) ."\nresult = ". expr2text(result) . "\nmodulo  = ". expr2text(modulo)."\nresult_temp = ".expr2text(result_temp)."\n \n");
                print(Unquoted,"----------------------------------------------\n");
                break;
            end_if:result_temp := temp*result;
           // print(Unquoted,"ans = ". expr2text(ans) ."\nresult = ". expr2text(result) . "\nmodulo  = ". expr2text(modulo)."\nresult_temp = ".expr2text(result_temp)."\n");
           result := reduce_modulo(modulo,result_temp,p);
           ans := ans + 1;
        end_while: 
        i := i+2;
    end_while:
end
