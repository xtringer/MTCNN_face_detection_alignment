 load('out.mat');
 fid=fopen('out.txt','wt');
 for k=1:4
     tmp=out{1,1}(:,:,k);
     for i=1:size(tmp,1)
        for j=1:size(tmp,2)
            if (j==size(tmp,2))
                fprintf(fid,'%g\n',tmp(i,j));
            else
                fprintf(fid,'%g\t',tmp(i,j));
            end
        end
     end
     
 end
 
 tmp=out{2,1}(:,:,2);
  for i=1:size(tmp,1)
        for j=1:size(tmp,2)
            if (j==size(tmp,2))
                fprintf(fid,'%g\n',tmp(i,j));
            else
                fprintf(fid,'%g\t',tmp(i,j));
            end
        end
  end
  fclose(fid);
     
 