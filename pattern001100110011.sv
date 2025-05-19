
/******** PATTERN 00110011001100  ***********/

 class cons;
   rand int a[];
   constraint x{a.size==20;
              foreach(a[i])
              if((i%4==1) || (i%4==0))
                a[i]==0;
              else
                a[i]==1;}
	function void post_randomize();
		$display("a=%p",a);
	endfunction

 endclass


  
 module tb;
   cons a1 = new();
   initial 
       begin
     assert(a1.randomize());
       end
     
endmodule