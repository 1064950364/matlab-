global speed door showtextx showtexty goalkeeper xa ya xb yb ballx bally frame court textstring xmin ymin;
court=imread('court.png');%����800*500������
textstring={'�ѷ��򣬰���Ӧ��Ž���';'������Ӧ��Ա����';'W��S��A��D������Ա';'�˶����򣬰��ո����ţ�'};
showtextx=-600;
showtexty=-200;
frame=120;%ÿ��֡
speed=2;%��Ա�ƶ��ٶ�
%��������Ϊ�������귶Χ
xmin=-400;
door=-370;
xmax=400;
ymax=250;
ymin=-250;
ballx=0;%����x��ʼλ��
bally=25;%����y��ʼλ��
goalkeeper=-350;%����Ա��ʼλ��
xa=[-250,-250,-250,-250,-150,-150,-150,-150,0,0];%a��442������
ya=[-150,-50,50,150,-150,-50,50,150,-25,25];%a��442������
xb=fliplr(-xa)+[50,50,0,0,0,0,0,0,0,0];%b��442������,��a�Ӻ������෴��
                                       %������ǰ�����50����Ϊa�ӷ���
yb=fliplr(ya);%b��442������
set(gcf,'Position',get(0,'ScreenSize'))%��Ļ���
init();
%����Ϊ��ʼλ�û���
hold on;
plot(goalkeeper,0,'ro','MarkerFaceColor','r');%a������Ա
plot(xa,ya,'ro','MarkerFaceColor','r');%a�Ӷ�Ա
plot(-goalkeeper,0,'bo','MarkerFaceColor','b');%b������Ա
plot(xb,yb,'bo','MarkerFaceColor','b');%b�Ӷ�Ա
plot(ballx,bally,'wo','MarkerFaceColor','k');%����
hold off;
text(showtextx,showtexty,'���������ʼ����','fontsize',15);
%����Ϊ������ʼ����
waitforbuttonpress;%�����������
for ii=bally:-4:ya(9)
    init();
    hold on;%����Ϊ��ʼλ�û���
    plot(goalkeeper,0,'ro','MarkerFaceColor','r');%a������Ա
    plot(xa,ya,'ro','MarkerFaceColor','r');%a�Ӷ�Ա
    plot(-goalkeeper,0,'bo','MarkerFaceColor','b');%b������Ա
    plot(xb,yb,'bo','MarkerFaceColor','b');%b�Ӷ�Ա
    bally=ii;
    plot(ballx,bally,'wo','MarkerFaceColor','k');%����
    pause(1/frame);%�ȴ�
    hold off;
end
 text(showtextx,showtexty,textstring,'fontsize',15);%��ʾ��ʾ��Ϣ
 set(gcf,'keypressfcn','press');%�������̰�����������Ϸ
