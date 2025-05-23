/******************** write a constraint to generate fibonacci series *********/
 class cons;
   rand bit[3:0] a[];
   
   constraint y{a.size==10;}
 constraint x{foreach(a[i])
  			 if(i==0)
                  a[i]==0;
              else if(i==1)
                a[i]==1;
              else
                a[i]==a[i-1]+a[i-2];
                  }
   
   
   function void post_randomize();
     $display("a=%p ",a);
   endfunction
   
 endclass



module tb();
  cons c=new();

initial
begin
  assert(c.randomize());
  end

endmodule