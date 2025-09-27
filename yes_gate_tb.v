// yes_gate_tb.v

module yes_gate_tb;
	
	reg a;
	wire y;
	
	yes_gate uut
	(
		.a(a),
		.y(y)
	);
	
	initial begin
		$dumpfile("yes_gate.vcd");
		$dumpvars(0,yes_gate_tb);
		
		$display("A B | Y");
		$display("---------");
		a = 0; #10;
		$display("%b | %b",a,y);
		a = 1; #10;
		$display("%b | %b",a,y);
		
		$finish; 
	end
endmodule
		