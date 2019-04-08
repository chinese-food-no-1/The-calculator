function flag=isBin(str)
    flag=1;
    a=str2num(str);
    while(a~=0)
        b=mod(a,10);
        if(b~=1 && b~=0)
            flag=0;
            break;
        end
        a=floor(a/10);
    end
end

