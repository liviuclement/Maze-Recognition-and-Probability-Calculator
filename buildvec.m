label='lab3.png';
img=imread('lab3.png');
img=im2bw(img);
[m,n]=size(img);
k=1;
p=1;
l=1;
s=1;
for i=4:m-3
    for j=4:n-3
        if(isitint(img,i,j)==1)
            x(k)=i;
            y(k)=j;
            k=k+1;
        end
        if(isittr(img,i,j)==1)
            v(p)=i;
            w(p)=j;
            p=p+1;
        end
        if(isitend(img,i,j)==1)
            e(l)=i;
            f(l)=j;
            l=l+1;
        end
        if(isitcor(img,i,j)==1)
            c(s)=i;
            d(s)=j;
            s=s+1;
        end
    end
end