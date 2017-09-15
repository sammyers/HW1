module demorgan1a
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB     // Single bit output, (~A)*(~B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);    // Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);   // AND gate produces nAandnB from nA and nB

endmodule

module demorgan1b
(
  input A,
  input B,
  output AorB,
  output nAorB
);

  wire AorB;
  or ABor(AorB, A, B);
  not notgate(nAorB, AorB);

endmodule

module demorgan2a
(
  input A,
  input B,
  output nA,
  output nB,
  output nAornB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  or orgate(nAornB, nA, nB);

endmodule

module demorgan2b
(
  input A,
  input B,
  output AandB,
  output nAandB
);

  wire AorB;
  and ABand(AandB, A, B);
  not notgate(nAandB, AandB);

endmodule

