function []= label(goalkeeper,xa,ya,xb,yb)
%�˺������ڶ�������Ա���
text(goalkeeper,0,'X','fontsize',15);
text(-goalkeeper,0,'O','fontsize',15);
for k=1:10
    text(xa(k),ya(k),{k-1},'fontsize',15);%0-9
end
for k=1:10
    text(xb(k),yb(k),char('D'+k),'fontsize',15);%E-O
end

end

