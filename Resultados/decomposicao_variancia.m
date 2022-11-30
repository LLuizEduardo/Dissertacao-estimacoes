%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            Decomposição da variância
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% lin -> n linhas
% bl -> n blocos
% sb -> n sub-blocos
% ser0 -> tamanho matriz
% ser -> n colunas
% v -> indica numero de simulações
% z -> indica uma serie de tempo
%% 

lin = 200

for bl = 1:1:6
    for sb = 1:1:4
        ser0 = size(SHARES{1,1}{1,bl}{1,sb})
        ser = ser0(1,1)
        
        for v = 1:1:lin
            for z = 1:1:ser
                R_DVV{1,z}(v,:) =  SHARES{1,v}{1,bl}{1,sb}(z,2:5) 
            end
        end

        for v = 1:1:4
            for z = 1:1:ser  
              c1 = mean(R_DVV{1,z}(:,v))   
              c2 = quantile(R_DVV{1,z}(:,v), .25)   
              c3 = quantile(R_DVV{1,z}(:,v), .75)   

             R_DVV_MEDIA {1,bl}{1,sb}(z,v) = c1 
             R_DVV_Q1 {1,bl}{1,sb}(z,v) = c2
             R_DVV_Q3 {1,bl}{1,sb}(z,v) = c3 
            end
        end 
    end
end