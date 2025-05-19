
/******PATTERN 001002003004005*********/
class cons ;
  rand int a[];
  constraint x{a.size inside {[10:30]};}
  constraint y{foreach(a[i])    
    if(i%3==2)
      a[i]==i/3+1;
     else
      a[i]==0;}

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

