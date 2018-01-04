tic;
%sélectionner votre Bdd
global A;
global layer_size;
global liste_noeuds;
global indice;
global i;
global layer;
global largeur;

A= importfiledsc2 ('earthquake.dsc');
% A= importfiledsc2 ('earthquake_desordre.dsc');

[m,n]=size(A);

%definissez la taille du FPBN
layer=5; 
largeur=6;


layer_size = zeros (layer,1);

liste_noeuds(layer*largeur) = noeud_reduit;

indice=0;


%%%%%%%%%%%%%%%%%%%%%%%%%% Fonctionalie a implementer %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%si le reseau a implemente est plus petit que le FPBN en nb de layeur, il
%faut ramener au dernier layer du FPBN les noeud de sortie par des bypass
% Statut: FAIT

%si un noeud de sorti n'est pas forcément sur le dernier niveau, le
%propager par bypass --> -> demande d'introduire la notion d'entant
% Statut: A FAIRE

%Si un noeud a un parent qui n'est du layeur immédiatement au dessus il
%faut combler avec un bypass les layeur intermediaire
% Statut : A FAIRE

% verifier si le reseau ne possede que des noeud binaire
% statut: FAIT

% verifier que la bdd introduit les noeud dans l'ordre de parenté 
% Statut: FAIT

% Remettre automatiquement la bdd dans l'ordre de parenté 
% Statut: FACULTATIF

% Transformer la bdd en noeud binaire uniquement
% Statut: FACULTATIF

% Afficher le réseau pre-bitstream avec une fonction MATLAB
% Statut: FACULTATIF

% Vérifier les dimensions du réseau pre-bitstream s'il rentre dans le FPBN
% de taille spécifié
% Statut: FAIT

% generer le bitstream memoire des coefficient
% Statut: FAIT

% generer le bitstream memoire des gateway
% Statut: FAIT

% generer le réseau pre-bitstream
% Statut: FAIT

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



for i = 1:m
    if strcmp(A{i,1},'node')
        if strcmp(A{i+1,7},'2') % not binary node % parameters more than 2 for a node
        else
            fprintf(cat(2,'\n Le noeud suivant n est pas binaire: ', A{i,2}, '\n'));
%             'Le noeud suivant n est pas binaire: '  
%             A{i,2} 
            %la nature du HardWare impose des noeud binaire,
            
            %il faudrait convertir les Bdd non binaire en Bdd binaire
            %équivalente pour pouvoir les utiliser (fonctionnalité en +)
            
            %ou faire un hardware qui prend des noeuds à + de 2 dimenssions
            %mais ca explosera l'espace mémoire des coefficients
            return;
        end
    end
    
    %il faut que les noeud aparraise dans la Bdd dans l'ordre généalogique
    %le script actuel détecte si les noeuds sont pas dans l'ordre et arrete
    
    %il faudrait pouvoir remettre dans l'ordre une Bdd (fonctionnalité en+)
    
    if strcmp(A{i,1},'probability')
        if strcmp(A{i+2,1},'}') % 0 parent
            eval([ A{i,4} ' = noeud_reduit (A{i,4},[],[str2double(A{i+1,4}) str2double(A{i+1,6})], [])' ]) 
%             Noeud_courrant=eval([ A{i,4}]);
%             layer_size(1)=layer_size(1)+1;
%             Noeud_courrant.rang=layer_size(1);
%             indice=indice+1;
%             
%             liste_noeuds(indice)=Noeud_courrant;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        elseif strcmp(A{i+3,1},'}') % 1 parent
            
            if exist (A{i,6},'var') % Detection si le parent existe
                %fprintf('hello \n');
            else
                error(cat(2,'\n Le parents suivant n existe pas encore, remettez la Bdd dans l ordre: ', A{i,6}, '\n'));
            end
            
            eval([ A{i,4} ' = noeud_reduit (A{i,4},[ eval([ A{i,6} ]) ],[], [str2double(A{i+1,7}) str2double(A{i+2,7})]) ']) 
%             Noeud_courrant=eval([ A{i,4}]);
%             [layer_size,Noeud_courrant.rang] = verif_layer_size(Noeud_courrant,layer_size,layer);
%             indice=indice+1;
%             liste_noeuds(indice)=Noeud_courrant;
%             if Noeud_courrant.layer_level>layer
%                 fprintf('\n Le réseau à implémenter a plus de layers que la profondeur spécifié du FPBN \n');
%                 return
%             end
%             layer_size( Noeud_courrant.layer_level )=layer_size(Noeud_courrant.layer_level)+1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        elseif strcmp(A{i+5,1},'}') % 2 parent
            
            if exist (A{i,6},'var') && exist (A{i,8},'var')% Detection si le parent existe
                %fprintf('hello \n');
            else
                error(cat(2,'\n L un des parents suivant n existe pas encore, remettez la Bdd dans l ordre: ', A{i,6}, A{i,8}, '\n'));
            end

            eval([ A{i,4} ' = noeud_reduit (A{i,4},[ eval([ A{i,6} ])  eval([ A{i,8} ]) ],[], [str2double({A{i+(1:4),9}})  ]) '])
%             Noeud_courrant=eval([ A{i,4}]);
%             [layer_size,Noeud_courrant.rang] = verif_layer_size(Noeud_courrant,layer_size,layer);
%             indice=indice+1;
%             liste_noeuds(indice)=Noeud_courrant;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        elseif strcmp(A{i+9,1},'}') % 3 parent
            
            if exist (A{i,6},'var') && exist (A{i,8},'var') && exist (A{i,10},'var')% Detection si le parent existe
                %fprintf('hello \n');
            else
                error(cat(2,'\n L un des parents suivant n existe pas encore, remettez la Bdd dans l ordre: ', A{i,6}, A{i,8}, A{i,10}, '\n'));
            end
            
            eval([ A{i,4} ' = noeud_reduit (A{i,4},[ eval([ A{i,6} ])  eval([ A{i,8} ])  eval([ A{i,10} ]) ],[], [str2double({A{i+(1:8),11}}) ]) '])
%             Noeud_courrant=eval([ A{i,4}]);
%             [layer_size,Noeud_courrant.rang] = verif_layer_size(Noeud_courrant,layer_size,layer);
%             indice=indice+1;
%             liste_noeuds(indice)=Noeud_courrant;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        elseif strcmp(A{i+17,1},'}') % 4 parent
            
            if exist (A{i,6},'var') && exist (A{i,8},'var') && exist (A{i,10},'var') && exist (A{i,12},'var')% Detection si le parent existe
                %fprintf('hello \n');
            else
                error(cat(2,'\n L un des parents suivant n existe pas encore, remettez la Bdd dans l ordre: ', A{i,6}, A{i,8}, A{i,10}, A{i,12}, '\n'));
            end
            
            eval([ A{i,4} ' = noeud_reduit (A{i,4},[ eval([ A{i,6} ])  eval([ A{i,8} ])  eval([ A{i,10} ])  eval([ A{i,12} ]) ],[], [str2double({A{i+(1:16),13}}) ]) '])
%             Noeud_courrant=eval([ A{i,4}]);
%             [layer_size,Noeud_courrant.rang] = verif_layer_size(Noeud_courrant,layer_size,layer);
%             indice=indice+1;
%             liste_noeuds(indice)=Noeud_courrant;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        elseif strcmp(A{i+33,1},'}') % 5 parent
            
            if exist (A{i,6},'var') && exist (A{i,8},'var') && exist (A{i,10},'var') && exist (A{i,12},'var') && exist (A{i,14},'var')% Detection si le parent existe
                %fprintf('hello \n');
            else
                error(cat(2,'\n L un des parents suivant n existe pas encore, remettez la Bdd dans l ordre: ', A{i,6}, A{i,8}, A{i,10}, A{i,12}, A{i,14}, '\n'));
            end
            
            %crer le noeud
            eval([ A{i,4} ' = noeud_reduit (A{i,4},[ eval([ A{i,6} ])  eval([ A{i,8} ])  eval([ A{i,10} ])  eval([ A{i,12} ])  eval([ A{i,14} ]) ],[], [str2double({A{i+(1:32),15}}) ]) '])
%             Noeud_courrant=eval([ A{i,4}]);
%             [layer_size,Noeud_courrant.rang] = verif_layer_size(Noeud_courrant,layer_size,layer);
%             indice=indice+1;
%             liste_noeuds(indice)=Noeud_courrant;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        else
            error(' Un noeud a plus de 5 parents, limite du model atteinte ');
        end
    end
end


% verification de dimenssion de l'arbre pour le FPBN

if max(layer_size>largeur)
    error(' Le réseau à implémenter est plus large que la largeur spécifié du FPBN ');
end
    

%%%%%%%%%%%% generation du bitstream %%%%%%%%%%%%%%%%%%%%%%
% apres avoir constituer l'arbre correctement par rapport au FPBN
% utiliser ce qui suit pour generer le bitstream

nb_noeud=(layer*largeur);
nb_parent= largeur;
nb_enfant=((layer-1)*largeur);

memoire = zeros (32,10,nb_noeud); % 5 parent max coeff codé sur 10 bit
gateway =zeros (5,3,nb_enfant); % 5 parent max numero parent codé sur largeur en bit par defaut 3bit pour 8 de largeur
% on ne genere pas de parenté pour la premièere ligne 


a = fi(0.75,0,10,10)
b=a.bin % convertie les coef en binaire

a = fi(5,0,3,0)
b=a.bin % convertie les index de parents en binaire

Tampon_conv_string2numb=zeros (1,10);
Tampon_conv_string2numb_3bit=zeros (1,3);

%memoire (:,:,i)
indice_liste=1;

%%%%%%%%%%%%%%%% réécriture des objet noeud avec leur rang %%%%%%%%%

for i=1:nb_noeud
    if exist(liste_noeuds(i).nom,'var')
    eval([ liste_noeuds(i).nom ' = liste_noeuds(i)' ])
    end
end

%%%%%%%%%%%% remplissage des memoire %%%%%%%%%%%%%%%%%%%%%

for i=1:layer_size(1) %les parents bitstream memoire coef

    Noeud_courrant = liste_noeuds(indice_liste);
    a = fi(Noeud_courrant.probabilite(2),0,10,10);
    Tampon_binaire=a.bin;% Ceci est un string de 1 et 0

    Tampon_conv_string2numb(:)=str2num(Tampon_binaire(:));

    
    memoire (1,:,i)=   Tampon_conv_string2numb(:);

    indice_liste=indice_liste+1;
    
end

for n=2:layer
    
    for i=1:layer_size(n) %les enfants et pti enfants bitstream memoire coef et gateway

        Noeud_courrant = liste_noeuds(indice_liste);
        [Q,L]=size(Noeud_courrant.theta);
        for J=1:L
            a = fi(Noeud_courrant.theta(J),0,10,10);
            Tampon_binaire=a.bin;% Ceci est un string de 1 et 0

            Tampon_conv_string2numb(:)=str2num(Tampon_binaire(:));


            memoire (J,:,(i+(n-1)*largeur))= Tampon_conv_string2numb(:);
        end
        
        [Q,L]=size(Noeud_courrant.parents);
        for J=1:L
            a = fi(Noeud_courrant.parents(J).rang,0,3,0);
            Tampon_binaire=a.bin;
            Tampon_conv_string2numb_3bit(:)=str2num(Tampon_binaire(:));
            gateway(J,:,(i+(n-2)*largeur)) = Tampon_conv_string2numb_3bit(:);
        end

        indice_liste=indice_liste+1;

    end
    
    if layer_size(n)==0 % On rajoute les bypass entre le dernier layer du reseau et le dernier layer du FPBN
        layer_size(n)=layer_size(n-1);
        for i=1:layer_size(n) 
            memoire (1,:,(i+(n-1)*largeur))=   [0 0 0 0 0 0 0 0 0 0];
            memoire (2,:,(i+(n-1)*largeur))=   [1 1 1 1 1 1 1 1 1 1];
            
            a = fi(i,0,3,0);
            Tampon_binaire=a.bin;
            
            gateway(1,:,(i+(n-2)*largeur)) =str2num(Tampon_binaire(:));
            
            
        end
        
    end
    
end

toc