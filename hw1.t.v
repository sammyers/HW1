`include "hw1.v"

module demorgan_test1 ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB, AorB, nAorB;    // Test outputs

  demorgan1a dut(A, B, nA, nB, nAandnB);  // Module to be tested
  demorgan1b dut2(A, B, AorB, nAorB);


  // Run sequence of test stimuli
  initial begin
    $display("A B | ~A ~B | A+B | ~A~B | ~(A+B) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |  %b  |   %b  |   %b   ", A,B, nA, nB, AorB, nAandnB, nAorB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b  %b |  %b  |   %b  |   %b   ", A,B, nA, nB, AorB, nAandnB, nAorB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |  %b  |   %b  |   %b   ", A,B, nA, nB, AorB, nAandnB, nAorB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |  %b  |   %b  |   %b   ", A,B, nA, nB, AorB, nAandnB, nAorB);
  end
endmodule    // End demorgan_test

module demorgan_test2 ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAornB, AandB, nAandB;    // Test outputs

  demorgan2a dut(A, B, nA, nB, nAornB);  // Module to be tested
  demorgan2b dut2(A, B, AandB, nAandB);


  // Run sequence of test stimuli
  initial begin
    $display("A B | ~A ~B | AB | (~A)+(~B) | ~(AB) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |  %b |     %b     |   %b   ", A,B, nA, nB, AandB, nAornB, nAandB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b  %b |  %b |     %b     |   %b   ", A,B, nA, nB, AandB, nAornB, nAandB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |  %b |     %b     |   %b   ", A,B, nA, nB, AandB, nAornB, nAandB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |  %b |     %b     |   %b   ", A,B, nA, nB, AandB, nAornB, nAandB);
  end
endmodule    // End demorgan_test
