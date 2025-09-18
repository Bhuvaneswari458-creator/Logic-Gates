//gatelevel modeling
module logicgates_and_gate_gatelevel(input a, b, output y);
 and(y, a, b);
endmodule

module logicgates_or_gate_gatelevel(input a, b, output y);
 or(y, a, b);
endmodule

module logicgates_not_gate_gatelevel(input a, b, output y);
 not(y, a);
endmodule

module logicgates_nor_gate_gatelevel(input a, b, output y);
 nor(y, a, b);
endmodule

module logicgates_nand_gate_gatelevel(input a, b, output y);
 nand(y, a, b);
endmodule

module logicgates_xor_gate_gatelevel(input a, b, output y);
 xor(y, a, b);
endmodule

module logicgates_xnor_gate_gatelevel(input a, input b, output y);
 xnor(y, a, b);
endmodule

//dataflow modeling
module logicgates_and_gate_dataflow(input a, input b, output y);
 assign y = a & b;
endmodule

module logicgates_or_gate_dataflow(input a, input b, output y);
 assign y = a | b;
endmodule

module logicgates_not_gate_dataflow(input a, input b, output y);
 assign y = ~a;
endmodule

module logicgates_nor_gate_dataflow(input a, input b, output y);
 assign y = ~(a | b);
endmodule

module logicgates_nand_gate_dataflow(input a, input b, output y);
 assign y = ~(a & b);
endmodule

module logicgates_xor_gate_dataflow(input a, input b, output y);
 assign y = a ^ b;
endmodule
 
module logicgates_xnor_gate_dataflow(input a, input b, output y);
 assign y = ~(a^b);
endmodule

//Behavioral modeling
module logicgates_and_gate_behavioral(input a, input b, output reg y);
 always @(*)
  y = a & b;
endmodule

module logicgates_or_gate_behavioral(input a, input b, output reg y);
 always @(*)
  y = a | b;
endmodule

module logicgates_not_gate_behavioral(input a, input b, output reg y);
 always @(*)
  y = ~a;
endmodule

module logicgates_nor_gate_behavioral(input a, input b, output reg y);
 always @(*)
  y = ~(a | b);
endmodule

module logicgates_nand_gate_behavioral(input a, input b, output reg y);
 always @(*)
  y = a ^ b;
endmodule

module logicgates_xnor_gate_behavioral(input a, input b, output reg y);
 always @(*)
  y = ~(a ^ b);
endmodule
