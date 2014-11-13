dat_gen := proc(p)
begin
    print(Unquoted,"We are working in F_".expr2text(p)."\n");
    r := 2;
    while 2^r < p do
        print(Unquoted,"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print(Unquoted,"Begining r = ".expr2text(r)."\n");
        for i in 1..r-1 do
            find_order(i,p,r,1);
        end_for:
        r := r+1;
    end_while:
end