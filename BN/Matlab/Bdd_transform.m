Layer_1=[0.9; 0.3];

theta_1=[ 0.03 0.05 0.001 0.02];
theta_2= [0.9 0.2 ; 0.65 0.3];

layer_2 = 0.03*(1-0.9)*(1-0.3)+ 0.05*(0.9)*(1-0.3)+0.001*(1-0.9)*(0.3)+0.02*(0.9)*(0.3)

% j'ai 2 noeud d'entr�e 2 sortie donc 4 lien
%pollution    smoker
%cancer       void
%Xray         Dyspnoea


%3 couche de 2 de large, maximum connectivity
%neural example

%X 8 exemple (ligne) de 2 Xn feature (collones)

%X =[ 0.3 0.5 ; 0.6 0.7 ; 0.1 0.8; 0.2 0.3; 0.5 0.8 ; 0.3 0.7; 0.5 0.9; 0.3 0.7] %layer 1
X =[ 0.9 ; 0.3 ]

% Theta coefficient de lient de Theta m sorties (ligne) pour n features
% collones

theta_1=[ 0.03 0.05 0.001 0.02; 0 0 0 0];

% layer num Y  de 8 exemple (ligne) de 1 valeur par sortie

layer2 =  [ theta_1(1,1)*(1-X(1))*(1-X(2))+theta_1(1,2)*(X(1))*(1-X(2))...
    +theta_1(1,3)*(1-X(1))*(X(2))+theta_1(1,4)*(X(1))*(X(2)) ;... 
    
    theta_1(2,1)*(1-X(1))*(1-X(2))+theta_1(2,2)*(X(1))*(1-X(2))...
    +theta_1(2,3)*(1-X(1))*(X(2))+theta_1(2,4)*(X(1))*(X(2)) ]


layer2= [  






