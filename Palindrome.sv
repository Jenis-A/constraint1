 /*************** Palindrome *************************/               
               
class  cons;  
  rand int t1,num;
  rand bit t2;
 
  constraint  x{t1 inside {[0:50]};}
  constraint y{num==fun(t1,t2);}
  
  
  function int fun(int n,t2);    
    int temp=0;
    int l1;
    int p1=n;
    
     if(t2)
      n=n/10;  //assume n=25, then 25/10=2;
      while(n>0)
       begin
        l1=n%10; //l1=2/10=2
        temp=temp*10+l1; //temp=0*10+2=2;
        n=n/10;  //2
        p1=p1*10; //p1=25*10=250;
       end
      temp=p1+temp; //temp=250+2=252;
      return temp;//252
  
 endfunction 
  
  function void post_randomize();
    $display("%p",num);
   endfunction

endclass



module tb;
  cons c=new();
  initial 
    begin
      repeat(5)
      c.randomize();
    end
endmodule
          
             