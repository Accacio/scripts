syms w x y z G H;
[A,b]=equationsToMatrix([x-w==y z==G*y w==H*z],[z y w x]);
R=rref(A);
Sol=-R(:,end)