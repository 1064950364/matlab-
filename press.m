function press()
%�Լ��������ַ��Ĵ���
global showtextx showtexty ballx door bally;
ch=get(gcbf,'CurrentCharacter');
if((abs(ballx-door)<1&&abs(bally-0)<1)||(abs(ballx+door)<1&&abs(bally-0)<1))%����
    close all;
    return;
else
    switch ch
        case {'w','W'}
            move('w');%�����ƶ�
        case {'s','S'}
            move('s');
        case {'a','A'}
            move('a');
        case {'d','D'}
            move('d');
        case {'x','X','0','1','2','3','4','5','6','7','8','9','e','f','g','h','i','j','k','l','m','n','o','E','F','G','H','I','J','K','L','M','N','O'}
            pass(ch);%�����ch
        case ' '
            goal();
        otherwise
           text(showtextx,showtexty+100,'�����������������룡','fontsize',15);
    end
end
end

