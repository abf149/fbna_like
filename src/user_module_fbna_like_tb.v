`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps
`include "fbna_pbc.v"

module user_module_fbna_like_tb; 
    
    reg clock;
    reg reset;
    reg  [3:0] io_shiftin_ifmap;
    reg  [2:0] io_in_filt_0;
    reg  [2:0] io_in_filt_1;
    reg  [2:0] io_in_filt_2;
    wire [1:0] io_out_ofmap;   

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 0.5;

    fbna_pbc UUT   (.clock(clock),
                    .reset(reset),
                    .io_shiftin_ifmap(io_shiftin_ifmap),
                    .io_in_filt_0(io_in_filt_0),                                                    
                    .io_in_filt_1(io_in_filt_1),
                    .io_in_filt_2(io_in_filt_2),
                    .io_out_ofmap(io_out_ofmap));

    initial // initial block executes only once
        begin
            $dumpfile("sim.vcd");
            
            //$dumpvars(0, UUT);
            $dumpvars(0,clock);
            $dumpvars(1,reset);
            $dumpvars(2,io_shiftin_ifmap);
            $dumpvars(3,io_in_filt_0);            
            $dumpvars(4,io_in_filt_1);
            $dumpvars(5,io_in_filt_2);            
            $dumpvars(6,io_out_ofmap);

            reset = 1;
            clock = 0;
            #2
            
            reset = 0;
            clock = 0;
            #2
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period

            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1101;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period            
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period     
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period     
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period     
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period     
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period     
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period     
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period     
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period                 
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period             
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period   
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period   
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period   
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period   
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period   
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period   
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period   
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b111;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period               
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b000;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b000;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period             
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b000;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b000;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period  
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b000;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b000;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period  
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b000;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b000;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period  
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b000;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b000;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period  
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b000;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b000;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period  
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b000;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b000;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period  
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b000;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b000;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period              
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period               
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period    
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period    
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period    
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period    
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period    
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period    
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b1111;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period                
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period    
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period    
            
            // values for a and b
            clock = 1;
            reset = 0;
            io_shiftin_ifmap = 4'b0000;
            io_in_filt_0 = 3'b111;
            io_in_filt_1 = 3'b000;
            io_in_filt_2 = 3'b111;
            #period; // wait for period

            clock = 0;
            reset = 0;
            #period; // wait for period                
            
        end
endmodule
