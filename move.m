function move(dir)
%�˺���Ϊ��Ա�����ƶ�����,dirΪ����(wsad)
global xa xb ya yb ballx bally speed goalkeeper;
if(dir=='w'||dir=='a')
        deta=-speed;
        if(dir=='w')
            if(~(ya(1)<-230))
                ya=ya+deta;
                yb=yb+deta;
                bally=bally+deta;
            end
        else
            if(~(xa(1)<-350))
                xa=xa+deta;
                xb=xb+deta;
                ballx=ballx+deta;
            end
        end
    else
        deta=speed;
        if(dir=='s')
            if(~(ya(4)>230))
                ya=ya+deta;
                yb=yb+deta;
                bally=bally+deta;
            end
        else
            if(~(xb(10)>350))
                xa=xa+deta;
                xb=xb+deta;
                ballx=ballx+deta;
            end
        end
end
    hold off;
    init();
    hold on;
    plot(goalkeeper,0,'ro','MarkerFaceColor','r');%a������Ա
    plot(xa,ya,'ro','MarkerFaceColor','r');%a�Ӷ�Ա
    plot(-goalkeeper,0,'bo','MarkerFaceColor','b');%b������Ա
    plot(xb,yb,'bo','MarkerFaceColor','b');%b�Ӷ�Ա
    plot(ballx,bally,'wo','MarkerFaceColor','k');%����
end


