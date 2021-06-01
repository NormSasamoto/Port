function [ countpr] = ocher( val )
    % och = 0; 
    % oldpr = 0;
    % oldobs = 0;

    cassa = zeros(val,2);
    qk = [];
    qk(1,1) = 0;
    qk(2,1) = 0;
    size = 1;
    sizeoch = 1;
    summpr = 0;
    countpr = 0;


    for k = 1:500

        pr=gen(7,1);
        summpr = summpr+pr;

        fin = summpr +sum(qk(2,sizeoch:end));

        if(fin>480)
            break;
        end;

        countpr = countpr +1;
        obs = gen(9,1);

        if(rand()<=0.05)
            obs=obs+5;
        end;

        if(rand()<=0.01)
            obs=obs+10+obs*rand();
        end;

        cassa(1:end,1) = cassa(1:end,1)-pr; 

        % if  (qk(1,1) >0)
        % 
        % else
        % 
        % pr = min(1:5,1);
        % cassa(1:end,1) = cassa(1:end,1)-pr; 
        % end;



        for i=1:val
            if(cassa(i,1)<=0)
                if(qk(1,1)>0)
                    cassa(i,1)=cassa(i,1)+qk(2,sizeoch);
                    cassa(i,2)=1;
                    sizeoch = sizeoch+1;
                    qk(1,1)=qk(1,1)-1;

                else
                    cassa(i,1)=0;
                    cassa(i,2)=0;
                end;
            end;
        end;

        q  = 0;

        for i=1:val
            if (cassa(i,2)==0)
                cassa(i,1)=obs;
                cassa(i,2)=1;
                break;
            else 
                q = q+1;
            end;
        end;

        if (q==val) 
            qk(1,1) = qk(1,1)+1;
            qk(2,size) = obs;
            size= size +1;
        end;

        %disp(cassa);
    end;
end

