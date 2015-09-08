
equations=[];
vars={};
A={};
k=0;
 while true
 prompt = 'Write your vars, write ok to end\n';
 str = input(prompt,'s')
 if strcmp('ok',str)
 break
 end
 k=k+1;
 A{k,1}=str
 end
% vars=sym('A%d',[k 1]);
% 
% for i = 1:k
% vars(i,1)=sym(A(i,1));
% end
% vars.'
% 
% [A,b]=equationsToMatrix([x-w==y z==G*y w==H*z],vars.');
%[A,b]=equationsToMatrix([x-w==y z==G*y w==H*z],vars.');
%R=rref(A);
%Sol=-R(:,end)


