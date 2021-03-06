% %Layer_1=[0.9; 0.3];
% 
% %         0   1    0    1
% Layer_1=[0.9 0.1; 0.3  0.7];
% 
% %           00  10   01    11
% theta_1=[ 0.03 0.05 0.001 0.02];
% 
% theta_2= [0.9 0.2 ; 0.65 0.3];
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%% Calcul manuel proba %%%%%%%%%%%%%%%%%%%%%%%
% layer_2 = 0.03*(0.9)*(0.3)+ 0.05*(0.1)*(0.3)+0.001*(0.9)*(0.7)+0.02*(0.1)*(0.7)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% % j'ai 2 noeud d'entr?e 2 sortie donc 4 lien
% %pollution    smoker
% %cancer       void
% %Xray         Dyspnoea
% 
% 
% %3 couche de 2 de large, maximum connectivity
% %neural example
% 
% %X 8 exemple (ligne) de 2 Xn feature (collones)
% 
% %X =[ 0.3 0.5 ; 0.6 0.7 ; 0.1 0.8; 0.2 0.3; 0.5 0.8 ; 0.3 0.7; 0.5 0.9; 0.3 0.7] %layer 1
% X =[ 0.9 ; 0.3 ]
% 
% % Theta coefficient de lient de Theta m sorties (ligne) pour n features
% % collones
% 
% theta_1=[ 0.03 0.05 0.001 0.02; 0 0 0 0];
% 
% theta_2=[ 0.9 0.2; 0.65 0.3];
% 
% % layer num Y  de 8 exemple (ligne) de 1 valeur par sortie
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%  Calcul manuel from vector %%%%%%%%%%%%%%
% layer2 =  [ theta_1(1,1)*(1-X(1))*(1-X(2))+theta_1(1,2)*(X(1))*(1-X(2))...
%     +theta_1(1,3)*(1-X(1))*(X(2))+theta_1(1,4)*(X(1))*(X(2)) ;... 
%     
%     theta_1(2,1)*(1-X(1))*(1-X(2))+theta_1(2,2)*(X(1))*(1-X(2))...
%     +theta_1(2,3)*(1-X(1))*(X(2))+theta_1(2,4)*(X(1))*(X(2)) ]
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% % faire un code generalisé
% % somme sur 2 puissance n noeud parent
% 
% 
% %         0   1    0    1
% Layer_1=[0.9 0.1; 0.3  0.7];
% 
% layer_2=[
% 
% P1 =[0.9 0.1]
% P2 =[0.3 0.7]
% 
% %                           00         10        01       11
% Complement_theta_manuel =[  0.9*0.3, 0.1*0.3, 0.9*0.7, 0.1*0.7]
% Complement_theta(:)'
% %%%%%%%%%%%%%%%%%%%%%%%ù  CALCUL auto proba %%%%%%%%%%%
% P1 =[0.9 0.1]
% P2 =[0.3 0.7]
% theta_1=[ 0.03 0.05 0.001 0.02]
% Complement_theta=P1'*P2
% 
% P3= [  Complement_theta(:)'*theta_1' 0]
% 
% P3(:,2)= [ 1-P3(:,1)]
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% P4_theta =[0.9 0.2]
% P4 =[P3*P4_theta' 0]
% 
%           Complement_theta=obj.parents(1).probabilite;
%           
%           obj.probabilite =[Complement_theta(:)*obj.theta' 0];
%           obj.probabilite(2)= [ 1-obj.probabilite(1)];
%           m=obj.probabilite;
%           
% layer2= [  Complement_theta(:)'*theta_1' 0]
% 
% layer2(:,2)= [ 1-layer2(:,1)]
% 
% 
% 
% parente2 =[ 1, 1; 0 0]
% 
% parente3 = [1 0 ; 1 0]
% 
% 
% 
% 
% %%%% crer un objet par le constructeur %%%%
% td = TensileData('carbon steel',1,[2e4 4e4 6e4 8e4], [.12 .20 .31 .40]);
% 
% %name
% %parents
% %probabilite
% %theta
%     
% N1 = noeud ('P1',[],[0.9 0.1], []) % 0   1 
% N2 = noeud ('P2',[],[0.3 0.7], []) % 0   1
% N3 = noeud ('P3',[N1 , N2],[], [0.03 0.05 0.001 0.02]) %  00 10 01 11
% N4 = noeud ('P4',[N3],[], [0.9 0.2]) % 0  1
% N5 = noeud ('P5',[N3],[], [0.65 0.3]) % 0  1
% 
% N6 = noeud ('P6',[N3 N4 N5],[], [0.65 0.3 0.2 0.1 0.5 0.7 0.8 0.6]) % 0  1
% N7 = noeud ('P7',[N3 N4 N5 N6],[], [0.65 0.3 0.2 0.1 0.5 0.7 0.8 0.6 0.65 0.3 0.2 0.1 0.5 0.7 0.8 0.6]) % 0  1
% N8 = noeud ('P8',[N3 N4 N5 N6 N7],[], [0.65 0.3 0.2 0.1 0.5 0.7 0.8 0.6 0.65 0.3 0.2 0.1 0.5 0.7 0.8 0.6 0.65 0.3 0.2 0.1 0.5 0.7 0.8 0.6 0.65 0.3 0.2 0.1 0.5 0.7 0.8 0.6]) % 0  1



A= importfiledsc2 ('earthquake.dsc');

[m,n]=size(A);


for i = 1:m
    if strcmp(A{i,1},'probability')
        if strcmp(A{i+2,1},'}') % 0 parent
            eval([ A{i,4} ' = noeud (A{i,4},[],[str2double(A{i+1,4}) str2double(A{i+1,6})], [])' ]) 
        elseif strcmp(A{i+3,1},'}') % 1 parent
            eval([ A{i,4} ' = noeud (A{i,4},[ eval([ A{i,6} ]) ],[], [str2double(A{i+1,7}) str2double(A{i+2,7})]) ']) 
        elseif strcmp(A{i+5,1},'}') % 2 parent
            eval([ A{i,4} ' = noeud (A{i,4},[ eval([ A{i,6} ])  eval([ A{i,8} ]) ],[], [str2double({A{i+(1:4),9}})  ]) '])
        elseif strcmp(A{i+9,1},'}') % 3 parent
            eval([ A{i,4} ' = noeud (A{i,4},[ eval([ A{i,6} ])  eval([ A{i,8} ])  eval([ A{i,10} ]) ],[], [str2double({A{i+(1:8),11}}) ]) '])
        elseif strcmp(A{i+17,1},'}') % 4 parent
            eval([ A{i,4} ' = noeud (A{i,4},[ eval([ A{i,6} ])  eval([ A{i,8} ])  eval([ A{i,10} ])  eval([ A{i,12} ]) ],[], [str2double({A{i+(1:16),13}}) ]) '])
        elseif strcmp(A{i+33,1},'}') % 5 parent
            eval([ A{i,4} ' = noeud (A{i,4},[ eval([ A{i,6} ])  eval([ A{i,8} ])  eval([ A{i,10} ])  eval([ A{i,12} ])  eval([ A{i,14} ]) ],[], [str2double({A{i+(1:32),15}}) ]) '])
        else
            fprintf('\n Un noeud a plus de 5 parents, limite du model atteinte \n');
        end
    end
end
