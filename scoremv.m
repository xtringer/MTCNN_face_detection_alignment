 load('score.mat');
 fid=fopen('score.txt','wt');

     for i=1:size(score,1)
        for j=1:size(score,2)
            if (j==size(score,2))
                fprintf(fid,'%g\n',score(i,j));
            else
                fprintf(fid,'%g\t',score(i,j));
            end
        end
     end

fclose(fid);
  
 load('mv.mat');
 fid=fopen('mv.txt','wt');

     for i=1:size(mv,1)
        for j=1:size(mv,2)
            if (j==size(mv,2))
                fprintf(fid,'%g\n',mv(i,j));
            else
                fprintf(fid,'%g\t',mv(i,j));
            end
        end
     end

fclose(fid);
     
 
 