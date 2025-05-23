/******************** write a constraint to make diagonal elememt zero *********/
 class cons;
   rand bit [3:0] a[2:0][2:0];

 constraint x{foreach(a[i,j])
                 if(i==j)
                  a[i][j]==0;
                else
                     a[i][j]!=0;
                  }
   
   
   function void post_randomize();
     $write("a=%p ",a);
   endfunction
   
 endclass



module tb();
  cons c=new();

initial
begin
  assert(c.randomize());
  end

endmodule