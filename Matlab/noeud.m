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
%                 nd.probabilite = probabilite;
                nd.theta = theta;
                
                if length(nd.parents) == 0
                    nd.probabilite = probabilite;
                elseif length(nd.parents) == 1
                    nd.probabilite = [nd.parents(1).probabilite*nd.theta' 0];
                    nd.probabilite(2)= [ 1-nd.probabilite(1)];
                    %m=obj.probabilite;
%                     m=size(obj.parents(1).probabilite)
%                     J='A'
                    %m=obj.theta'
                elseif length(nd.parents) == 2
                    Complement_theta=nd.parents(1).probabilite'*nd.parents(2).probabilite;
                    nd.probabilite =[Complement_theta(:)'*nd.theta' 0];
                    nd.probabilite(2)= [ 1-nd.probabilite(1)];
%                     m=nd.probabilite
                elseif length(nd.parents) == 3
                    Complement_theta=nd.parents(1).probabilite'*nd.parents(2).probabilite;
                    Complement_theta=Complement_theta(:);
                    Complement_theta=Complement_theta*nd.parents(3).probabilite;
                    
                    nd.probabilite =[Complement_theta(:)'*nd.theta' 0];
                    nd.probabilite(2)= [ 1-nd.probabilite(1)];
                elseif length(nd.parents) == 4
                    Complement_theta=nd.parents(1).probabilite'*nd.parents(2).probabilite;
                    Complement_theta=Complement_theta(:);
                    Complement_theta=Complement_theta*nd.parents(3).probabilite;
                    Complement_theta=Complement_theta(:);
                    Complement_theta=Complement_theta*nd.parents(4).probabilite;
                    
                    nd.probabilite =[Complement_theta(:)'*nd.theta' 0];
                    nd.probabilite(2)= [ 1-nd.probabilite(1)];
                elseif length(nd.parents) == 5
                    Complement_theta=nd.parents(1).probabilite'*nd.parents(2).probabilite;
                    Complement_theta=Complement_theta(:);
                    Complement_theta=Complement_theta*nd.parents(3).probabilite;
                    Complement_theta=Complement_theta(:);
                    Complement_theta=Complement_theta*nd.parents(4).probabilite;
                    Complement_theta=Complement_theta(:);
                    Complement_theta=Complement_theta*nd.parents(5).probabilite;

                    nd.probabilite =[Complement_theta(:)'*nd.theta' 0];
                    nd.probabilite(2)= [ 1-nd.probabilite(1)];
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