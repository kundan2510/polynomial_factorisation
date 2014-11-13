rem_calc := proc(f1,f2,lg,p,a)
begin
    //f1 is the power of x. i.e. poly is x^f1 - 1
    // f2 is part of x^2 -f2 with which we are dividing the polynomial.
    //lg is the coefficient ring ideal
    //p is F_p i.e. size of base field
   
    if (f1 mod 2 = 1) then
        print("a non-residue -1 found");
        return (p);
    else
        h1 := f1/2;
        temp1 := 1;
        mul1 := f2;
        while(h1 > 0) do
            if(h1 mod 2 = 1) then
                temp1 := mult_pol(temp1,mul1,lg,p,f2);
                mul1 := mult_pol(mul1,mul1,lg,p,f2);
                h1 := floor(h1/2);
            else
                mul1 := mult_pol(mul1,mul1,lg,p,a);
                h1 := floor(h1/2);
            end_if
       end_while:
       result_val := temp1 - 1;
    end_if
end_proc