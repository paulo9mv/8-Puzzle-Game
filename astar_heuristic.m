% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligencia Artificial - 2016/2
%
% Função A* para rodar a heurística X.

function [n, error] = astar_heuristic(M, h)
	
	error = 0;
  
      
	%Cria uma fila de prioridades vazia
	q = PriorityQueue();
	
	% Estado objetivo 
	O = [1 2 3; 4 5 6; 7 8 9]; 
	
	
 	n = Node(M, 0);
  if ~solvable(M)
      error = 1;
      break
  end
	

  
	  q.insert(n.f+h(n.State, n.State), n);
    i = 0;

	  while (~q.isempty())
	      n = q.extractMin();
        
        if(~isequal(n.State,O))
            legalmoves = legal_moves(n.State);
            
	          for ind = 1: size(legalmoves)   %caminhando entre as posiï¿½oes legais, qual posiï¿½ao tem melhor custo
                new_state = do_move(n.State, legalmoves(ind));   
                     
                custo = h(new_state, n.State);           
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
