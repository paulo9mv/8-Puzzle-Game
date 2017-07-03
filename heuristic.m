% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Extra: Função Octave/MATLAB que deve implementar uma nova heurística.
% A função deve receber uma matriz __S__ com um estado do quebra-cabeça 
% e devolver uma estimativa (__dist__) da quantidade de movimentos 
% necessários para se chegar no objetivo.
%
%
% author: raonifst at gmail dot com

function [ dist ] = heuristic( State, Prev)
    atual = 0;
    last = 0;
    O = [1 2 3;4 5 6;7 8 9];
   
    
    for i = 1:8
        if(find(O == i) == find(State == i))
            atual++;
        end
        if(find(O == i) == find(Prev == i))
            last++;
        end
    end
    
    if atual < last
        dist = 1;
    else
        dist = 0;
    end
    
    for n=1:8
      [obj_row,obj_col] = ind2sub(size(O),find(State==n));
      [row,col] = ind2sub(size(State), find(O==n));
      dist = dist + abs(obj_row - row) + abs(obj_col - col);
    end
       
end

