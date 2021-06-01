function [ f ] = effect(k )

f=zeros(5,100);
summer = zeros(5,1);
for j=1:100
    for i=1:5
        val  = ocher(i);
        x = 500+200*(rand(1,val)-0.5); 
        y = 1000+200*(rand(1,i)-0.5); format long g

        c = sum(x)-sum(y);
        if(k==2)
            c = c/sum(y)*100;
        end
        summer(i) = summer(i)+c;
    end
    f(1:5,j)=summer(1:5)./j;
end
d = 1:1:100;
plot(d,f);
legend('1','2','3','4','5');
