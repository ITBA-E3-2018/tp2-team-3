`timescale 10us / 10us
module testBench;
measd my_meas (trigger,triggerEn,clock,sTrigger,sEcho,meas,measReady);
reg t=0;

clock_gen cl(clock);
wire triggerEn=1;
reg trigger=0;
wire [7:0]meas;
wire clock;
wire measReady;
reg sEcho=0;
wire sTrigger;



 initial begin

    #3
    trigger=1;
    #1
    trigger=0;
    #5
    sEcho=1;
    #700
    sEcho=0;
    #10;

    #3
    trigger=1;
    #1
    trigger=0;
    #5
    sEcho=1;
    #300
    sEcho=0;
    #10;

   
    $finish;

  end

reg dummy;
  reg[8*64:0] dumpfile_path = "output.vcd";

  initial begin
    dummy = $value$plusargs("VCD_PATH=%s", dumpfile_path);
    $dumpfile(dumpfile_path);
    $dumpvars(0,testBench);
  end


endmodule
