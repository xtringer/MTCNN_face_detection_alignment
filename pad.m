function [dy edy dx edx y ey x ex tmpw tmph] = pad(total_boxes,w,h)
	%compute the padding coordinates (pad the bounding boxes to square)
	tmpw=total_boxes(:,3)-total_boxes(:,1)+1;%框的长度
	tmph=total_boxes(:,4)-total_boxes(:,2)+1;%框的高度
	numbox=size(total_boxes,1);%框的个数
	
    dx=ones(numbox,1);dy=ones(numbox,1);
 	edx=tmpw;edy=tmph;
	
	x=total_boxes(:,1);y=total_boxes(:,2);
	ex=total_boxes(:,3);ey=total_boxes(:,4);		
	
	tmp=find(ex>w);
	edx(tmp)=-ex(tmp)+w+tmpw(tmp);ex(tmp)=w;	%框的长度-多出的长度	
	
	tmp=find(ey>h);
	edy(tmp)=-ey(tmp)+h+tmph(tmp);ey(tmp)=h;	%框的高度-多出的高度
	
	tmp=find(x<1);
	dx(tmp)=2-x(tmp);x(tmp)=1;	
	
	tmp=find(y<1);
	dy(tmp)=2-y(tmp);y(tmp)=1;
    
end

