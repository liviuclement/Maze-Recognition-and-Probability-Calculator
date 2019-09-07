function [a,b] = matcar(ad)

n=length(ad)-2;
a=-eye(n);
b=zeros(n,1);
for i=1:n
    aux=0;
    for j=1:n+2
        if(ad(i,j)>0)
            aux=aux+ad(i,j);
        end
    end
    for j=1:n
        if(ad(i,j)==1)
            a(i,j)=1/aux;
        end
    end
    if(ad(i,n+2)>0)
        b(i)=-ad(i,n+2)/aux;
    end
end

end

