% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligencia Artificial - 2016/2
%
% Fun�ao Octave/MATLAB que deve implementar o algoritmo A-estrela.
% A fun�ao deve receber uma matriz __M__ com estado inicial do quebra-cabe�a 
% o apontador para a fun�ao heuristica __h__ e devolver um nó de busca __n__
% com o estado objetivo. Para que seja possível reconstruir o caminho percorrido 
% até a solução,  cada n� produzido pelo algoritmo de busca deve conter uma 
% referencia para o n� que o descobriu (i.e., n� visitado no passo anterior).
%
% Para executar o algoritmo para um estado S com heuristica de hamming por exemplo pode-ser fazer:
% S = [4 1 3; 9 2 5; 7 8 6];
% node = astar(S, @hamming);
% 
% Extra: A variavel __error__ deve ser utilizada para identificar jogos que nao 
% possuem solucao. 
%
% author: raonifst at gmail dot com

function [n, error] = astar(M, h)
	
	error = 0;

	%Cria uma fila de prioridades vazia
	q = PriorityQueue();
	
	% Estado objetivo 
	O = [1 2 3; 4 5 6; 7 8 9]; %Lembre-se de que seu programa deve para quando um estado objetivo for alcan�ado.
	
	% Cria um novo n� __n__ com estado igual a matriz __M__ (estado inicial) e 
	% custo 0 (zero).
 	n = Node(M, 0);
  
	
	% Insere o n� __n__ na fila de prioridades __q__. O custo deste n� 
	% � igual a n.f+g(n.State). g � um apontador para fun�ao heuristica
	% considerada
  
	  q.insert(n.f+h(n.State), n);
    i = 0;

	  while (~q.isempty())
	      n = q.extractMin();
        
        
        if(~isequal(n.State,O))
            legalmoves = legal_moves(n.State);
            
	          for ind = 1: size(legalmoves)   %caminhando entre as posi�oes legais, qual posi�ao tem melhor custo
                new_state = do_move(n.State, legalmoves(ind));           
                custo = h(new_state);           
                no = Node(new_state, n.f+1);          
                no.Prev = n;
               
                if i < 1
                    q.insert(n.f + custo, no);         
                elseif(~isequal(new_state, n.Prev.State))          
                        q.insert(n.f + custo, no);    
                end          
            end       
        else    
            break
        end
        i = 1;
    end
end
