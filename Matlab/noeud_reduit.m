
classdef noeud_reduit
    
    properties
        
        
        
        
        
        nom
        parents
        layer_level % profondeur egale à la profondeur du parent le plus bas +1
        %     child_depth % indique combien il y a de profondeur d'enfant en dessous
        %     parent_depth % indique le nombre de niveau de parent au dessus
        %
        rang % la place dans le layer
        
        probabilite
        theta
    end
    
    %     properties (Dependent)
    %         probabilite
    %     end
    
    
    methods
        
        %       Fonction de protection de valeurs d'une propertiee
        %       function obj = set.theta(obj,theta)
        %          if (length(theta)<33)
        %             obj.theta = theta;
        %          else
        %             error('Invalid theta')
        %          end
        %       end
        
        %%%%%%%%%%  Constructeur   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        function nd = noeud_reduit(nom,parents,probabilite,theta)
            if nargin > 0
                nd.nom = nom;
                nd.parents = parents;
                nd.probabilite = probabilite;
                nd.theta = theta;
                global layer_size;
                global liste_noeuds;
                global indice;
                global layer;

                
                if length(nd.parents) == 0
                    nd.layer_level = 1;
                    

                    layer_size(1)=layer_size(1)+1;
                    nd.rang=layer_size(1);
                    indice=indice+1;
                    
                    liste_noeuds(indice)=nd;
                    
                else
                    nd.layer_level = max(nd.parents.layer_level)+1;
                        [layer_size,nd.rang] = verif_layer_size(nd,layer_size,layer);
                        indice=indice+1;
                        liste_noeuds(indice)=nd;                    
                    
                    if length(nd.parents) == 1


                    elseif length(nd.parents) == 2


                        
                    elseif length(nd.parents) == 3


                        
                    elseif length(nd.parents) == 4


                    elseif length(nd.parents) == 5


                    end
                    
                end
                
            end
        end
        
        %%%%%%%%%%% Get proba calculee %%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        %    function m = get.probabilite(obj)
        %        if length(obj.parents) == 0
        %            m=obj.probabilite;
        %        elseif length(obj.parents) == 1
        %
        %           %obj.probabilite = [obj.parents(1).probabilite*obj.theta' 0];
        %           %obj.probabilite(2)= [ 1-obj.probabilite(1)];
        %           %m=obj.probabilite;
        %           m=size(obj.parents(1).probabilite)
        %           J='A'
        %           %m=obj.theta'
        %
        %
        %        elseif length(obj.parents) == 2
        %           Complement_theta=obj.parents(1).probabilite'*obj.parents(2).probabilite;
        %
        %           obj.probabilite =[Complement_theta(:)'*obj.theta' 0];
        %           obj.probabilite(2)= [ 1-obj.probabilite(1)];
        %           m=obj.probabilite
        %
        % %       elseif length(obj.parents) == 3
        % %
        % %       elseif length(obj.parents) == 4
        % %
        % %       elseif length(obj.parents) == 5
        %
        %         end
        %
        %    end
        
        %%%%%%%%%%%%%%%%%%% Set Protection %%%%%%%%%%%%%%%%%%%
        %    function obj = set.Modulus(obj,~)
        %       fprintf('%s%d\n','Modulus is: ',obj.Modulus)
        %       error('You cannot set the Modulus property');
        %    end
        
        %%%%%%%%%%%%%%%%%% Display command overload %%%%%%%%
        % %%%%%%%%%%%% pas necessaire celle de base est tres bien %%%%%%%
        %       function disp(nd)
        %          sprintf('Nom: %s\n Parents: %s\n',...
        %             nd.nom,nd.parents(1:length(nd.parents)))
        %       end
        
        %    sprintf('Material: %s\nSample Number: %g\nModulus: %1.5g\n',...
        %     td.Material,td.SampleNumber,td.Modulus)
    end
end