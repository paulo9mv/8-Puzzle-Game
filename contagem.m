% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que deve contar a quantidade de elementos
% com valor igual a 1 (um) em uma matriz __M__ de entrada.
%
% author: raonifst at gmail dot com

function [ c ] = contagem( M )

k = find( M == 1);
c = size(k, 1);

end

