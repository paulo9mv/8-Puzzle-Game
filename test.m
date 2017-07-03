% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Script Octave/MATLAB que deve ser utilizado para testar a implementação.
%
% author: raonifst at gmail dot com

clear
clc

% Utilizado para comparar objetos - NAO APAGUE! %  
global id;
id = intmin;

%Teste 1
%%M = [4 1 3; 9 2 5; 7 8 6];
M = [2  3  5; 
 1  9  4; 
 7  8  6];
[m, a] = astar_heuristic(M, @heuristic);
a
M = [6  9  5; 
 8  7  4; 
 3  2  1];
 [m,a] = astar_heuristic(M, @heuristic);
a

%Teste 2
M = [9 1 3; 4 2 5; 7 8 6];

%Teste 3
M = [4 9 5; 3 8 6; 7 1 2];

%Teste 4
M = [5 3 2; 7 6 4; 8 1 9];


%m = astar_heuristic(M, @heuristic);
%reconstruct_path(m);
%assert(m.eq(Node([1 2 3; 4 5 6; 7 8 9], 0)));
%fprintf('Teste 4: OK\n');
%toc
%
%
%
%
%% Teste 5
%M = [4 6 7; 9 5 8; 2 1 3];
%tic
%m = astar_heuristic(M, @heuristic);
%reconstruct_path(m);
%assert(m.eq(Node([1 2 3; 4 5 6; 7 8 9], 0)));
%fprintf('Teste 5: OK\n');
%toc
%fprintf('Sua implementa�ao esta correta!\n');
%
%crie mais testes aqui 
