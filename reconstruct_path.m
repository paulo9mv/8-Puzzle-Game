% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% InteligÃªncia Artificial - 2016/2
%
% Funçao Octave/MATLAB que mostra o caminho percorrido em solucao do quebra-cabeça.
% A funçao recebe um nó de busca __node__ e mostra o caminho percorrido.
%
% author: raonifst at gmail dot com

function reconstruct_path( node )
    
    if ~isempty(node),	
        if isempty(node.Prev),
            show(node.State);
            manhattan(node.State);
        else
            reconstruct_path(node.Prev);
            show(node.State);
            manhattan(node.State);
        end
    end
end

