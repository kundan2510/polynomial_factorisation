calcs := proc(p,r)
begin
    temp := p;
    s := 1;
    while(temp - 1 mod r <> 0) do
        temp := temp*p;
        s := s + 1;
    end_while:
    s
end_proc