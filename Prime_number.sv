/************ Prime Number  ***********************/        
class A;
  rand int a[];
  constraint con{a.size() == 30;}
 constraint com{foreach(a[i])
  		 a[i] == prime(i);}

function int prime(input int j);
  if((j == 0) || (j == 1))
    begin
    prime = 0;
    end
  else 
     begin
       for(int k = 2; k < j ; k = k + 1)
         begin
           if( j%k == 0 )
             begin
               prime = 0;
               break;
             end
     	   else
               prime = 1;
         end
     end
  
  if(prime == 1)
    return j;
  else
    return 2;
endfunction

  function void post_randomize();
    a=a.unique();
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