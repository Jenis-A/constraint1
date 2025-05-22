/***************** Power of 2 *****************/

class cons;
  rand int a[];
  
  constraint  y{a.size==10;}
  constraint x{foreach(a[i])
    a[i]==2**(i);}
  
  function void post_randomize();
    $display("%p",a);
  endfunction

endclass

module tb;
  cons c=new();
  initial
    begin
      assert(c.randomize()); 
    end
endmodule
               
