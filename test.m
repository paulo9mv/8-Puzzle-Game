% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Script Octave/MATLAB que deve ser utilizado para testar a implementação.
%
% author: raonifst at gmail dot com

clear
clc
tic
% Utilizado para comparar objetos - NAO APAGUE! %  
global id;
id = intmin;
% %

state = astar([1 2 9;
               4 5 3;
               7 8 6], @manhattan);
reconstruct_path(state)
toc
%crie mais testes aqui 
