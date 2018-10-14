//measd(trigger,triggerEn,clock,sTrigger,sEcho,meas,measReady);
//entradas:
//trigger: flanco ascendente que dispara la medicion
//tiggerEn: habilita(high) o desabilita(low) el trigger
//clock: señal cuadrada utilizada para medir el tiempo, se recomienda de 10Khz
//sEcho: pulso devuelto por el sensor
//salidas:
//measReady: indica cuando la medicion ha finalizado(high)
//meas: registro de 8 bits indicando cuanto ciclos de clock la señal de sEcho estuvo en high





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

