
%syms a c d e f g h i j k l m n o p q r s t u v w x y z
%syms B C D E F G H I J K L M N O P Q R S T U V W X Y Z
equations=[];
vars =[];
testebloco=[];
model= fileread('teste.mdl');
modelpos=strfind(model,'System {');

System=model(modelpos:end-1);
System2=mat2str(System)
Line_init=strfind(System,'Line {')
Line_end=strfind(System,'}')
j=0
for i=Line_init
    j=j+1;
    eval(['Block_' num2str(j) '=2'])
end


clear model;

%[A,b]=equationsToMatrix(equations,vars);
%R=rref(A);
%Sol=-R(:,end)
