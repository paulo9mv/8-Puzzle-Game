function [saida] = solvable (State)
   dist=0;
   State=State';
   
   for i=1:8
        dist=dist+size((find(find(State<i)>find(State==i))),1);
   end 
   
   if(mod(dist,2)~=0)
        saida=false;
   else
        saida=true;
   end
end


%feito em equipe por Paulo Vitor e Presley