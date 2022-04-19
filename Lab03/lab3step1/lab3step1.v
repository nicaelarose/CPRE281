module lab3step1(A,C,G,W);
	input C, G, W;
	output A;
	
	not(B,C);
	not(D,G);
	not(E,W);
	
	or(F,C,D,W);
	or(H,B,G,E);
	
	and(A,F,H);
	
endmodule