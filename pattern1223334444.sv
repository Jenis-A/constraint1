/****************PATTERN 122333444455555...********************/

class cons ;
  rand int a[];
  constraint x{a.size==9;
  	       foreach(a[i])  
              a[i]==fact(i);}
  
  
  function int fact(int i);
    int b=0;
    int c=0;
    while(b<=i)
      begin
        c=c+(10**b);
        b=b+1;
      end
    return(c*(i+1));
  endfunction
    
  function void post_randomize();
      $display("display=%p",a);  
  endfunction

endclass

module tb;
  cons a1 = new();
  initial 
      begin
    assert(a1.randomize());
  end
endmodule

// Alternative  Method 

class cons ;
  rand int a[];
  constraint x{a.size==11;
  	      foreach(a[i])  
              a[i]==fact(i);}

  function int fact(int i);
    for(i=1;i<=11;i=i+1)
      begin
        for(int j=1;j<=i;j=j+1)
          begin 
            $write("%0d",i);
          end
      end  
  endfunction
     
endclass

module tb;
  cons a1 = new();
  initial begin
      begin
    assert(a1.randomize());     
      end    
  end
endmodule