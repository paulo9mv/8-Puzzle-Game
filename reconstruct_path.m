% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Fun�ao Octave/MATLAB que mostra o caminho percorrido em solucao do quebra-cabe�a.
% A fun�ao recebe um n� de busca __node__ e mostra o caminho percorrido.
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

