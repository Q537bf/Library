//library
unit test;
interface
Function puiss_eq_num(a:longint):longint;
Function puiss(a,b:longint):longint;
Function conca(a,b:longint):longint;
Function num_de_ch(a:longint):longint;
Function bn(a:longint):longint;
Function sn(a:longint):longint;
Function combien_div(a:longint):longint;
Function find_ch(a,ch:longint):longint;
Procedure list_chiffres_num(a:longint; var T:array of integer);
Function som_divs(a:longint):longint;
Function decalage(a:longint):longint;
Function del_ch(nb,c:longint):longint;
Function Comb_ch(n,c:longint):longint;
implementation
//Function to  cal how many of that  ch are in that number//*
Function Comb_ch(n,c:longint):longint;
var
x:longint;
begin 
x:=0;
while (n <> 0) do 
    begin 
      if (n mod 10 = c) then
             x:=x+1;
      n:= n div 10;
    end;
 comb_ch:=x;
 end;      
//find the digit  of the position from right to left //
Function find_ch(a,ch:longint):longint;
  var 
  x,s,p:longint;
  t:boolean;
   begin 
   x:=1;
   t:=false;
   s:=0;
   p:=1;
    while (a <> 0)  do 
           begin 
             if (a mod 10 = ch) then 
                     begin
                      t:=true;
                      s:=x*p+s;
                      p:=p*10;
                      writeln(s);
                      end;
                      
             x:=x+1;
             a:= a div 10 ;
           end;
           
    if  (t=true)  then 
          begin     
            find_ch:=s;
          end
   else 
     begin
       find_ch:=0;
     end;
     end;
                   
                    
// somme de divs//
Function som_divs(a:longint):longint;
var
s,i:longint;
begin 
s:=1;
for i:=2 to a div 2 do 
        begin 
           if (a mod i =0) then
               begin 
               s:=s+i;
               end;
         end;
   som_divs:=s;
   end;            
// Procedure to give the list of ch of a number //
Procedure list_chiffres_num(a:longint; var T:array of integer);
   var 
   i:longint;
   begin 
     for i:=0 to num_de_ch(a) do 
         begin 
         T[i]:=a mod 10;
	     a:= a div 10 ;
	     end;
	        
	end;     
// calcule de la somme des diviseurs//
Function combien_div(a:longint):longint;
var
i,s:longint;
begin 
s:=1;
  For i:=2 to a div 2 do 
     begin 
      if (a mod i =0) then 
         begin 
         s := s+1;
         end;
     end;
combien_div:=s;
end;         
//calcule le 10**p de num ex puiss(888)=1000//
Function puiss_eq_num(a:longint):longint;
 var 
 p:longint;
 begin 
 p:=1;
  while (a <> 0) do 
    begin 
    a:=a div 10 ;
    p:=p*10;
    end;
puiss_eq_num:=p;
end;
//delete digit //
Function del_ch(nb,c:longint):longint;
var 
x:longint;

begin
x:= nb mod puiss(c-1,10);
nb:=((nb -x)div puiss(c-1,10)-(nb mod puiss(c,10)) div puiss(c-1,10))div 10;

del_ch:=conca(nb,x);
end;


//decalage de a//
Function decalage(a:longint):longint;
var 
p:longint;
begin 
p:=puiss(num_de_ch(a)-1,10);

writeln(p);
a:= (a - (a div p)*p)*10+(a div p) ; 
decalage:=a;
end;
//cal  a la puiss b //
Function puiss(a,b:longint):longint;
 var 
 p:longint;
 begin
 p:=1;
 while (a <> 0) do 
    begin 
    p:=p*b;
    a:=a-1;
    end;
puiss:=p;
end;
//conca deux num//
Function conca(a,b:longint):longint;
begin 
conca:=a*puiss_eq_num(b)+b;
end;
//how many digits in nmber//
Function num_de_ch(a:longint):longint;
var 
x:longint;
begin 
x:=0;
while (a <> 0) do 
   begin 
    a:= a div 10 ;
    x:=x+1;
    end;
num_de_ch:=x;
end;
//The biggest number//
Function bn(a:longint):longint;
 var 
 x:longint;
 begin 
  x:=a mod 10;
  while (a <>  0) do 
     begin
       if (a mod 10 > x) then 
          begin 
          x:= a mod 10;
          end ;
     a := a div 10 ;
     end;
 bn:=x;
 end;
 // The smallest number//
 Function sn(a:longint):longint;
 var 
 x:longint;
 begin 
  x:=a mod 10;
  while (a <>  0) do 
     begin
       if (a mod 10 < x) then 
          begin 
          x:= a mod 10;
          end ;
     a := a div 10 ;
     end;
 sn:=x;
 end;
 

       
            
end.


