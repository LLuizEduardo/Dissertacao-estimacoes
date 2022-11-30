%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   Extrair as estatísticas de distribuição
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;

load 'dhfm_data_luiz_RESULTADOS'

%%Extrair a média, mediana e os quartis do PSI (parâmetro autorregressivo)

% Fator Global
r_psif = mean(cell2mat(PSI_F))
r_psif_mediana = median(cell2mat(PSI_F))
r_psif_q1 = quantile(cell2mat(PSI_F), .25)
r_psif_q3 = quantile(cell2mat(PSI_F), .75)
R_PSIF = [r_psif, r_psif_mediana, r_psif_q1, r_psif_q3]

%Fatores Regionais
for v= 1:1:200 
    c1 = PSI_G{1,v}(1)
    c2 = PSI_G{1,v}(2)
    c3 = PSI_G{1,v}(3)
    c4 = PSI_G{1,v}(4)
    c5 = PSI_G{1,v}(5)
    c6 = PSI_G{1,v}(6)

    R_PSIG1(v)=c1
    R_PSIG2(v)=c2
    R_PSIG3(v)=c3
    R_PSIG4(v)=c4
    R_PSIG5(v)=c5
    R_PSIG6(v)=c6
end

% Fatores blocos
%% economic_activity
r_psif = mean(cell2mat(R_PSIG1))
r_psif_mediana = median(cell2mat(R_PSIG1))
r_psif_q1 = quantile(cell2mat(R_PSIG1), .25)
r_psif_q3 = quantile(cell2mat(R_PSIG1), .75)
R_PSIG1 = [r_psif, r_psif_mediana, r_psif_q1, r_psif_q3]

%% financial_market
r_psif = mean(cell2mat(R_PSIG2))
r_psif_mediana = median(cell2mat(R_PSIG2))
r_psif_q1 = quantile(cell2mat(R_PSIG2), .25)
r_psif_q3 = quantile(cell2mat(R_PSIG2), .75)
R_PSIG2 = [r_psif, r_psif_mediana, r_psif_q1, r_psif_q3]

%% monetary_policy
r_psif = mean(cell2mat(R_PSIG3))
r_psif_mediana = median(cell2mat(R_PSIG3))
r_psif_q1 = quantile(cell2mat(R_PSIG3), .25)
r_psif_q3 = quantile(cell2mat(R_PSIG3), .75)
R_PSIG3 = [r_psif, r_psif_mediana, r_psif_q1, r_psif_q3]

%% trade
r_psif = mean(cell2mat(R_PSIG4))
r_psif_mediana = median(cell2mat(R_PSIG4))
r_psif_q1 = quantile(cell2mat(R_PSIG4), .25)
r_psif_q3 = quantile(cell2mat(R_PSIG4), .75)
R_PSIG4 = [r_psif, r_psif_mediana, r_psif_q1, r_psif_q3]

%% manufacturing
r_psif = mean(cell2mat(R_PSIG5))
r_psif_mediana = median(cell2mat(R_PSIG5))
r_psif_q1 = quantile(cell2mat(R_PSIG5), .25)
r_psif_q3 = quantile(cell2mat(R_PSIG5), .75)
R_PSIG5 = [r_psif, r_psif_mediana, r_psif_q1, r_psif_q3]

%% work
r_psif = mean(cell2mat(R_PSIG6))
r_psif_mediana = median(cell2mat(R_PSIG6))
r_psif_q1 = quantile(cell2mat(R_PSIG6), .25)
r_psif_q3 = quantile(cell2mat(R_PSIG6), .75)
R_PSIG6 = [r_psif, r_psif_mediana, r_psif_q1, r_psif_q3]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Construindo a trajetória temporal dos fatores
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%Trajetória do fator global
for v = 1:1:200
    c = F{1,v}(:,1)
    R_F(:,v)=c
end


for v = 1:263
    c1 = mean(R_F(v,:))
    c2 = quantile(R_F(v,:), 0.25)
    c3 = quantile(R_F(v,:), 0.75)
R_FF(v,1) = c1
R_FF(v,2) = c2
R_FF(v,3) = c3
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Fatores blocos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% economic_activity
for v = 1:1:200
    c = G{1,v}{1,1}(:,1)
    R_F(:,v)=c
end
for v = 1:263
    c1 = mean(R_F(v,:))
    c2 = quantile(R_F(v,:), 0.25)
    c3 = quantile(R_F(v,:), 0.75)
R_G1(v,1) = c1
R_G1(v,2) = c2
R_G1(v,3) = c3
end

% financial_market
for v = 1:1:200
    c = G{1,v}{1,2}(:,1)
    R_F(:,v)=c
end
for v = 1:263
    c1 = mean(R_F(v,:))
    c2 = quantile(R_F(v,:), 0.25)
    c3 = quantile(R_F(v,:), 0.75)
R_G2(v,1) = c1
R_G2(v,2) = c2
R_G2(v,3) = c3
end

% monetary_policy
for v = 1:1:200
    c = G{1,v}{1,3}(:,1)
    R_F(:,v)=c
end
for v = 1:263
    c1 = mean(R_F(v,:))
    c2 = quantile(R_F(v,:), 0.25)
    c3 = quantile(R_F(v,:), 0.75)
R_G3(v,1) = c1
R_G3(v,2) = c2
R_G3(v,3) = c3
end

% trade
for v = 1:1:200
    c = G{1,v}{1,4}(:,1)
    R_F(:,v)=c
end
for v = 1:263
    c1 = mean(R_F(v,:))
    c2 = quantile(R_F(v,:), 0.25)
    c3 = quantile(R_F(v,:), 0.75)
R_G4(v,1) = c1
R_G4(v,2) = c2
R_G4(v,3) = c3
end

% manufacturing
for v = 1:1:200
    c = G{1,v}{1,5}(:,1)
    R_F(:,v)=c
end
for v = 1:263
    c1 = mean(R_F(v,:))
    c2 = quantile(R_F(v,:), 0.25)
    c3 = quantile(R_F(v,:), 0.75)    
R_G5(v,1) = c1
R_G5(v,2) = c2
R_G5(v,3) = c3
end

% work
for v = 1:1:200
    c = G{1,v}{1,6}(:,1)
    R_F(:,v)=c
end
for v = 1:263
    c1 = mean(R_F(v,:))
    c2 = quantile(R_F(v,:), 0.25)
    c3 = quantile(R_F(v,:), 0.75)    
R_G6(v,1) = c1
R_G6(v,2) = c2
R_G6(v,3) = c3
end