% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Intelig�ncia Artificial - 2016/2
%
% Fun��o Octave/MATLAB que implementa a descri��o das a��es v�lidas em 
% um estado do quebra-cabe�a de oito pe�as.
% A fun��o recebe uma matriz __State__ que representa um estado do jogo 
% e devolve um vetor coluna __moves__ com todas as pe�as que podem ser 
% movimentadas neste estado.
%
% author: raonifst at gmail dot com

function [ moves ] = legal_moves( State )

	blank_value = 9;
	adj = [0 1 0; 1 0 1; 0 1 0]; % define adjacency. 

	mask = conv2(double(State==blank_value), adj, 'same')>0; % pixels adjacent to those equal to `blank_value`
	moves = unique(State(mask));

end