function [bool] = isitint(a,i,j)
if(a(i,j)==0&&((a(i,j-1)==0&&a(i,j-2)==0&&a(i,j+1)==0&&a(i,j+2)==0&&((a(i-1,j)==0&&a(i-2,j)==0)||(a(i+1,j)==0&&a(i+2,j)==0))||(a(i+1,j)==0&&(a(i+2,j)==0&&a(i-1,j)==0&&a(i-2,j)==0&&((a(i,j-1)==0&&a(i,j-2)==0)||(a(i,j+1)==0&&a(i,j+2)==0)))))))
    bool=1;
else
    bool=0;
end


end

