% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Intelig�ncia Artificial - 2016/2
%
% Classe Octave/MATLAB que implementa a descri��o dos n�s de busca.
%
% Cada n� de cont�m uma refer�ncia para o n� que o descobriu (i.e., n� visitado
% no passo anterior), o estado atual (i.e., configura��o da matriz) e 
% o n�mero de movimentos feitos at� o momento. 
%
% Para criar um novo n� de busca n fa�a:
% 
% n = Node(State, cost);
%
% em que State e cost correspondem, respectivamente, ao estado e ao custo
% do n�. O custo do n� � igual ao n�mero de passos efetivamente percorridos
% pelo algoritmo at� sua descoberta (i.e., o custo de um n� n�o-raiz �
% 1 (um) mais o custo do n� que descobriu).
%
% A instru��o a seguir indica que o n� n foi descoberto pelo n� p.
%
% n.Prev = p;
%
% author: raonifst at gmail dot com


classdef Node < handle
    
    properties (GetAccess = public, SetAccess = public)
        State;
        f = 0;      
        Prev ;        
    end
    
    methods
        
        function self = Node(M, h)  
            self.State = M;
            self.f = h;
        end
               
        function[out] = get.State(self)
            out = self.State;
        end
        
        function[out] = get.Prev(self)
            out = self.Prev;
        end
        
        function[out] = get.f(self)
            out = self.f;
        end
        
        function[out] = eq(obj,obj2) 
            if length(obj2) > 1
               throw(MException('Node:eqMultiple','??? Cannot compare to multiple elements at once.'))
            end   
            out = strcmp(class(obj),class(obj2)) &&  sum(sum(obj.State == obj2.State)) == 9;   % obj2 must be of the same class
        end
        
                 
        function[out] = gt(obj,obj2) 
            if length(obj2) > 1
               throw(MException('Node:gtMultiple','??? Cannot compare to multiple elements at once.'))
            end  
            global option;
            
            if option == 1,            
              out = isa(obj2,'Node') && obj.f + hamming(obj.State) < obj2.f+hamming(obj2.State);
            else 
                out = isa(obj2,'Node') && obj.f + manhattan(obj.State) < obj2.f+manhattan(obj2.State);
            end
        end
        
    end
    
end
