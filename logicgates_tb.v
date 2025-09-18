`include "logicgates_design.v"
module tb;
reg a, b;
wire y_and_g, y_or_g,  y_not_g,  y_nor_g,  y_nand_g,  y_xor_g,  y_xnor_g;
wire y_and_d, y_or_d,  y_not_d,  y_nor_d,  y_nand_d,  y_xor_d,  y_xnor_d;
wire y_and_b, y_or_b,  y_not_b,  y_nor_b,  y_nand_b,  y_xor_b,  y_xnor_b;
//gatelevel instances
logicgates_and_gate_gatelevel u1(.a(a), .b(b), .y(y_and_g));
logicgates_or_gate_gatelevel u2(.a(a), .b(b), .y(y_or_g));
logicgates_not_gate_gatelevel u3(.a(a), .b(b), .y(y_not_g));
logicgates_nor_gate_gatelevel u4(.a(a), .b(b), .y(y_nor_g));
logicgates_nand_gate_gatelevel u5(.a(a), .b(b), .y(y_nand_g));
logicgates_xor_gate_gatelevel u6(.a(a), .b(b), .y(y_xor_g));
logicgates_xnor_gate_gatelevel u7(.a(a), .b(b), .y(y_xnor_g));
//Dataflow instances
logicgates_and_gate_dataflow u8(.a(a), .b(b), .y(y_and_d));
logicgates_or_gate_dataflow u9(.a(a), .b(b), .y(y_or_d));
logicgates_not_gate_dataflow u10(.a(a), .b(b), .y(y_not_d));
logicgates_nor_gate_dataflow u11(.a(a), .b(b), .y(y_nor_d));
logicgates_nand_gate_dataflow u12(.a(a), .b(b), .y(y_nand_d));
logicgates_xor_gate_dataflow u13(.a(a), .b(b), .y(y_xor_d));
logicgates_xnor_gate_dataflow u14(.a(a), .b(b), .y(y_xnor_d));
//Behavioral instances
logicgates_and_gate_dataflow u15(.a(a), .b(b), .y(y_and_b));
logicgates_or_gate_dataflow u16(.a(a), .b(b), .y(y_or_b));
logicgates_not_gate_dataflow u17(.a(a), .b(b), .y(y_not_b));
logicgates_nor_gate_dataflow u18(.a(a), .b(b), .y(y_nor_b));
logicgates_nand_gate_dataflow u19(.a(a), .b(b), .y(y_nand_b));
logicgates_xor_gate_dataflow u20(.a(a), .b(b), .y(y_xor_b));
logicgates_xnor_gate_dataflow u21(.a(a), .b(b), .y(y_xnor_b));
initial begin
 $display("A B | And_b d g |or_b d g | not_b d g |nor_b d g | nand_b d g |xor_b d g | xnor_b d g");
 repeat(100)begin
  {a,b}=$random;#10;
  $display("%b %b |%b %b %b |%b %b %b |%b %b | %b %b %b |%b %b %b |%b %b %b|%b %b %b", a, b, 
  y_and_g, y_and_d, y_and_b,
  y_or_g, y_or_d, y_or_b,
  y_not_g, y_not_d, y_not_b,
  y_nor_g, y_nor_d, y_nor_b,
  y_nand_g, y_nand_d, y_nand_b,
  y_xor_g, y_xor_d, y_xor_b,
  y_xnor_g, y_xnor_d, y_xnor_b);
end
end
initial begin
 $dumpfile("dump.vcd");
 $dumpvars(1,tb);
end
endmodule


  
