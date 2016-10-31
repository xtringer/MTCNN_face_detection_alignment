function [boundingbox reg] = generateBoundingBox(map,reg,scale,t)
	%use heatmap to generate bounding boxes   
    
    stride=2.0;
    cellsize=12.0;
    boundingbox=[];
	map=map';
	dx1=reg(:,:,1)';
	dy1=reg(:,:,2)';
	dx2=reg(:,:,3)';
	dy2=reg(:,:,4)';
    [y x]=find(map>=t);%y行x列
	a=find(map>=t); %按列数第a个
    if size(y,1)==1
		y=y';x=x';score=map(a)';dx1=dx1';dy1=dy1';dx2=dx2';dy2=dy2';
	else
		score=map(a);
    end   
	reg=[dx1(a) dy1(a) dx2(a) dy2(a)];
	if isempty(reg)
		reg=reshape([],[0 3]);
	end
    boundingbox=[y x];
%         scc=0.2791;
%     boundingbox=[fix((stride*(boundingbox-1.0)+1.0)/scale) fix((stride*(boundingbox-1.0)+cellsize-1.0+1.0)/scale) score reg];
    boundingbox=[floor((stride*(boundingbox-1.0)+1.0)/scale) floor((stride*(boundingbox-1.0)+cellsize-1.0+1.0)/scale) score reg];

end

