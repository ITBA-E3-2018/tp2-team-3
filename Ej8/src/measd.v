module measd(trigger,triggerEn,clock,sTrigger,sEcho,meas,measReady);
input trigger, triggerEn, clock, sEcho;
output  measReady,sTrigger;
wire measReady;
wire sTrigger;
output wire [7:0] meas;
wire trigger, triggerEn, clock, clk, trig, sEcho;

and(trig,trigger,triggerEn,measReady);
and(clk,sEcho,clock);
counter my_counter(meas, clk, sTrigger);
pulseGen pg(trig,sTrigger);
not(measReady,sEcho);

endmodule

