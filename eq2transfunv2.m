equations=[];
vars =[];

%%%%%%%%%%%%%% Catch Equations and variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
 while true
 prompt = 'Write your equations, write ok to end\n\n';
 str = input(prompt,'s');
 if strcmp('ok',str)
 break
 end
 eq=sym(str);
 equations=[equations eq];
 end

 while true
 prompt = 'Write your Blocks Function Name or write ok to end\n\n';
 str = input(prompt,'s');
 if strcmp('ok',str)
 break
 end
 eval([str '=sym('''  str ''');'])
 end
 
 while true
 prompt = 'Write your variables or write ok to end\n OBS.: Input must be the last one\n\n';
 str = input(prompt,'s');
 if strcmp('ok',str)
 break
 end
 eval([str '=sym('''  str ''');'])
 eval(['vars=[vars ' str '];'])
 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[Matrix,b]=equationsToMatrix(equations,vars);
Answer=rref(Matrix);
Sol=-Answer(:,end);
clearvars -except vars Sol
[numsol columns]=size(Sol);
for iterator=1:numsol
    disp([char(vars(iterator)/char(vars(end))) ' = ' char(Sol(iterator))])
end


