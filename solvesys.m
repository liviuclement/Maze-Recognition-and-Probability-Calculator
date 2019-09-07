%[a,b]=matcar(ad);
%%aa=a;

n=length(a);
for k=1:n-1
    for i=k+1:n
        u(i,k)=a(i,k)/a(k,k)
    end
    for i=k+1:n
        for j=k:n
            a(i,j)=a(i,j)-u(i,k)*a(k,j)
        end
        %b(i)=b(i)-u(i,k)*b(k)
    end
end

x=b;
for i=n:-1:1
    for j=i+1:n
        x(i)=x(i)-a(i,j)*x(j)
    end
    x(i)=x(i)/a(i,i)
end

x