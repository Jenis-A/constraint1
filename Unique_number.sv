//**************** Uniqe number without using unique keyword **************/
class A;
  rand bit [4:0] a[];
  constraint con{a.size() == 30;}
 constraint com{foreach(a[i])
   foreach(a[j])
     if(i!=j)
       a[i]!=a[j];}

  function void post_randomize();   
    $display("%p",a);
  endfunction
  
endclass

module tb;
  A a1;
  initial begin
    a1 =  new();
    assert(a1.randomize());
  end
endmodule