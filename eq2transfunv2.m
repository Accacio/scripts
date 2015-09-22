
syms a c d e f g h i j k l m n o p q r s t u v w x y z
syms B C D E F G H I J K L M N O P Q R S T U V W X Y Z
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
 prompt = 'Write your variables or write ok to end\n OBS.: Input must be the last one\n\n';
 str = input(prompt,'s');
 if strcmp('ok',str)
 break
 end
 var=sym(str);
 vars=[vars var];
 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


[A,b]=equationsToMatrix(equations,vars);
R=rref(A);
Sol=-R(:,end)
