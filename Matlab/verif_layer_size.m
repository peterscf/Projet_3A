function [layer_size,rang] = verif_layer_size(Noeud_courrant,layer_size,layer)

if Noeud_courrant.layer_level>layer
    %                 fprintf('\n Le r�seau � impl�menter a plus de layers que la profondeur sp�cifi� du FPBN \n');
    %                 return
    error (' Le r�seau � impl�menter a plus de layers que la profondeur sp�cifi� du FPBN ');
end

layer_size( Noeud_courrant.layer_level )=layer_size(Noeud_courrant.layer_level)+1;
rang=layer_size( Noeud_courrant.layer_level );% determine le rang du noeud dans son layer
