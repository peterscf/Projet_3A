classdef noeud
    
    properties
    
    nom
    parents
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
        function nd = noeud(nom,parents,probabilite,theta)
            if nargin > 0
                nd.nom = nom;
                nd.parents = parents;
                nd.probabilite = probabilite;
                nd.theta = theta;
            end
        end
   
%%%%%%%%%%% Get proba calculee %%%%%%%%%%%%%%%%%%%%%%%%%%%

   function m = get.probabilite(obj)
       if length(obj.parents) == 0
           m=obj.probabilite;
       elseif length(obj.parents) == 1
          
          %obj.probabilite = [obj.parents(1).probabilite*obj.theta' 0];
          %obj.probabilite(2)= [ 1-obj.probabilite(1)];
          %m=obj.probabilite;
          m=size(obj.parents(1).probabilite)
          J='A'
          %m=obj.theta'
          

       elseif length(obj.parents) == 2
          Complement_theta=obj.parents(1).probabilite'*obj.parents(2).probabilite;
          
          obj.probabilite =[Complement_theta(:)'*obj.theta' 0];
          obj.probabilite(2)= [ 1-obj.probabilite(1)];
          m=obj.probabilite
          
%       elseif length(obj.parents) == 3
%           
%       elseif length(obj.parents) == 4
%                   
%       elseif length(obj.parents) == 5

        end

   end
   
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