
/******PATTERN 9 99  999 9999 99999**********/
class cons ;
  rand int a[];
  constraint x{a.size ==10;}
  constraint y{foreach(a[i])    
    a[i]==(10**(i+1))-1;}

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
