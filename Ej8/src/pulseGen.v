`timescale 10us / 10us
//pulseGen(trig,out)
//frente a un flanco positivo de trig,se genera un pulso de ancho 50us en out
module pulseGen(trig,out);
input trig;
output out;
reg out=0;
parameter PERIOD = 5;

 always @(posedge trig)
 	begin: PLS_GEN
       deassign out;
		out <= 1'b1;
		#(PERIOD);
        assign out = 0;
        
	end

endmodule