module test;
    reg a,b,c;
    wire s, cr;
    full_adder obj(.a(a), .b(b), .c(c), .s(s), .cr(cr));
   
    initial begin
    a=0;
    b=0;
    c=0;
    #10 c=1;
    #10 b=1;
        c=0;
    #10 c=1;
    #10 b=1;
    #10 a=1;
        b=0;
        c=0;
    #10 c=1;
    #10 b=1;
        c=0;
    #10 c=1;
    end
   
    initial begin 
        $monitor("a=%d b=%d c=%d s=%d cr=%d", a, b, c, s, cr);
    end
endmodule