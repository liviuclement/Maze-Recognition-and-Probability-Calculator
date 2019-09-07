ad=zeros(length(x),length(x)+2);
%pas1
for i=1:length(x)
    for j=1:length(x)
        war=0;
        if(y(i)==y(j)&&i~=j)
            if(x(i)<x(j))
                for k=1:length(x)
                    if(x(k)<x(j)&&x(k)>x(i)&&y(k)==y(i))
                        war=1;
                    end
                end
            else
                if(x(i)>x(j))
                     for k=1:length(x)
                         if(x(k)>x(j)&&x(k)<x(i)&&y(k)==y(i))
                             war=1;
                         end
                     end
                end
            end
            if(war==0)
            ad(i,j)=1;
            end
        end
        
        if(x(i)==x(j)&&i~=j)
            if(y(i)<y(j))
                for k=1:length(x)
                    if(y(k)<y(j)&&y(k)>y(i)&&x(k)==x(i))
                        war=1;
                    end
                end
            else
                if(y(i)>y(j))
                    for k=1:length(x)
                        if(y(k)>y(j)&&y(k)<y(i)&&x(k)==x(i))
                            war=1;
                        end
                    end
                end
            end
            if(war==0)
            ad(i,j)=1;
            end
        end   
    end
end

%pas2

for l=1:length(v)    
    for i=1:length(x)
        war=0;
        if(x(i)==v(l))
            if(y(i)<w(l))
                for k=1:length(x)
                    if(y(k)<w(l)&&y(k)>y(i)&&x(k)==x(i))
                      war=1;
                    end
                end
            else
                if(y(i)>w(l))
                for k=1:length(x)
                    if(y(k)>w(l)&&y(k)<y(i)&&x(k)==x(i))
                       war=1;
                    end  
                end
                end
            end
            
            if(war==0)
                    ad(i,length(x)+2)=1;
            end
        end
        if(y(i)==w(l))
            if(x(i)<v(l))
                for k=1:length(x)
                    if(x(k)<v(l)&&x(k)>x(i)&&y(k)==y(i))
                     
                      war=1;
                    end
                end
            else
                if(x(i)>v(l))
                for k=1:length(x)
                    if(x(k)<x(i)&&x(k)>v(l)&&y(k)==y(i))
       
                      war=1;
                    end
                end
                end
            end
            if(war==0)
            ad(i,length(x)+2)=1;
            end
        end
    end
end

%pas3
for l=1:length(e)    
    for i=1:length(x)
        war=0;
        if(x(i)==e(l))
            if(y(i)<f(l))
                for k=1:length(x)
                    if(y(k)<f(l)&&y(k)>y(i)&&x(k)==x(i))
                      war=1;
                    end
                end
            else
                if(y(i)>f(l))
                for k=1:length(x)
                    if(y(k)>f(l)&&y(k)<y(i)&&x(k)==x(i))
                       war=1;
                    end  
                end
                end
            end
            
            if(war==0)
                    ad(i,length(x)+1)=1;
            end
        end
        if(y(i)==f(l))
            if(x(i)<e(l))
                for k=1:length(x)
                    if(x(k)<e(l)&&x(k)>x(i)&&y(k)==y(i))
                     
                      war=1;
                    end
                end
            else
                if(x(i)>e(l))
                for k=1:length(x)
                    if(x(k)<x(i)&&x(k)>e(l)&&y(k)==y(i))
       
                      war=1;
                    end
                end
                end
            end
            if(war==0)
            ad(i,length(x)+1)=1;
            end
        end
    end
end

%pas4

for i=1:length(x)
   for j=1:length(x)
       for k=1:length(c)
           war=0;
           if(x(j)==c(k)&&y(i)==d(k))
                if(y(j)>d(k))
                    for l=1:length(x)
                        if(y(l)>d(k)&&y(l)<y(j)&&x(l)==x(j))
                            war=1;
                        end
                    end
                else
                    if(y(j)<d(k))
                        for l=1:length(x)
                            if(y(l)<d(k)&&y(l)>y(j)&&x(l)==x(j))
                                war=1;
                            end
                        end
                    end
                end
                if(x(i)>c(k))
                    for l=1:length(x)
                        if(x(l)>c(k)&&x(l)<x(i)&&y(l)==y(i))
                            war=1;
                        end
                    end
                else
                    if(x(i)<c(k))
                        for l=1:length(x)
                            if(x(l)<c(k)&&x(l)>x(i)&&y(l)==y(i))
                                war=1;
                            end
                        end
                    end
                end
                if(war==0&&ad(i,j)==0)
                    ad(i,j)=1;
                end
                    
           end
           if(x(i)==c(k)&&y(j)==d(k))
               if(y(i)>d(k))
                   for l=1:length(x)
                       if(y(l)>d(k)&&y(l)<y(i)&&x(l)==x(i))
                           war =1;
                       end
                   end
               else
                   if(y(i)<d(k))
                       for l=1:length(x)
                           if(y(l)<d(k)&&y(l)>y(i)&&x(l)==x(i))
                               war=1;
                           end
                       end
                   end
               end
               if(x(j)>c(k))
                   for l=1:length(x)
                       if(x(l)>c(k)&&x(l)<x(j)&&y(l)==y(j))
                           war=1;
                       end
                   end
               else
                   if(x(j)<c(k))
                       for l=1:length(x)
                           if(x(l)<c(k)&&x(l)>x(j)&&y(l)==y(j))
                               war=1;
                           end
                       end
                   end
               end
               if(war==0&&ad(i,j)==0)
                    ad(i,j)=1;
               end
           end
       end
   end
end

               