function goal()
%   ���ź���
global goalkeeper xa ya xb yb ballx bally frame door;
locationx=[goalkeeper,xa,xb,-goalkeeper];
locationy=[0,ya,yb,0];
for ii=1:22
    if(ballx==locationx(ii))
        if(bally==locationy(ii))
            if(ii>11)
                flag='b';%��ʱ����b�Ӷ�Ա����
            else
                flag='a';%��ʱ����a�Ӷ�Ա����
            end
        end
    end
end
if(flag=='b')
    detax=door-ballx;
    detay=0-bally;
    movex=detax*frame/3600;
    movey=detay*frame/3600;
    while(~(abs(detax)<1&&abs(detay)<1))
        ballx=ballx+movex;
        bally=bally+movey;
        detax=door-ballx;
        detay=0-bally;
        hold off;
        init();
        hold on;
        plot(goalkeeper,0,'ro','MarkerFaceColor','r');%a������Ա
        plot(xa,ya,'ro','MarkerFaceColor','r');%a�Ӷ�Ա
        plot(-goalkeeper,0,'bo','MarkerFaceColor','b');%b������Ա
        plot(xb,yb,'bo','MarkerFaceColor','b');%b�Ӷ�Ա
        plot(ballx,bally,'wo','MarkerFaceColor','k');%����
        pause(1/frame);
    end
    text(-100,0,'��ϲ���򣡰������������','fontsize',15);%��ʾ��ʾ��Ϣ
else
    detax=-door-ballx;
    detay=0-bally;
    movex=detax*frame/3600;
    movey=detay*frame/3600;
    while(~(abs(detax)<1&&abs(detay)<1))
        ballx=ballx+movex;
        bally=bally+movey;
        detax=-door-ballx;
        detay=0-bally;
        hold off;
        init();
        hold on;
        plot(goalkeeper,0,'ro','MarkerFaceColor','r');%a������Ա
        plot(xa,ya,'ro','MarkerFaceColor','r');%a�Ӷ�Ա
        plot(-goalkeeper,0,'bo','MarkerFaceColor','b');%b������Ա
        plot(xb,yb,'bo','MarkerFaceColor','b');%b�Ӷ�Ա
        plot(ballx,bally,'wo','MarkerFaceColor','k');%����
        pause(1/frame);
    end
    text(-100,0,'��ϲ���򣡰������������','fontsize',15);%��ʾ��ʾ��Ϣ
end
end

