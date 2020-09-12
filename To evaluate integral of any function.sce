/*AIM: TO  EVALUATE THE INTEGRAL OF ANY FUNCTION USING
 a)TRAPEZOIDAL RULE
 b)SIMPSON'S 1/3 RULE
 c)SCILAB INBUILT FUNCTION
 d)SIMPSON'S 3/8 RULE
 AUTHOR: VISHU SAINI BSC PHYSICS HONS SEC A 2ND YEAR
 
 FUNCITONS:
 GLOBAL VARIABLES:
 
 */
 
 
 clc
 clear all
 ////Function declaration////
 function y=f(x)
     y=sin(x);
 endfunction
 
 

 
 ////Trapezoidal Rule//// 
 
 /* Evaluates the definite integral of a function f(x), from a to b.
 Function Name: trapez(a,b,n,f)
 Input :        a=initial limit(real no.)
                b=final limit(real no.)
                n=no. of sub-intervals(the higher the value of ‘n’ the better is the result.
                f=function whose integral has to be calculated
                endfunction
 Output:        Intergral of f(x) from x=a to x= b 
 logic:         Trapezoidal rule
 */



funcprot(0);      //switch scilab functions protection mode

function integral=trapez(a, b, n, f)//function definition of trapezoidal
    h=(b-a)/n;                 // h = strip width 
    sum=0;
    for i=1:n-1
        x=a+i*h;
        sum=sum+2*f(x);
    end
    integral=(h/2)*(f(a)+f(b)+sum);     //trapezoidal rule
endfunction

//input a,b,n
disp('Enter inputs for Executing Trapezoidal Rule')
a=input('enter a ')
b=input('enter b ')
n=input('enter n ')


integral=trapez(a,b,n,f)       //calling the trapez() function


disp('Integral calculated usign trapezoidal rule')
disp(integral)



////SIMPSON'S 1/3 RULE////


 /* Evaluates the definite integral of a function f(x), from a to b.
 Function Name: simpson1by3(a,b,n,f)
 Input :        a=initial limit(real no.)
                b=final limit(real no.)
                n=no. of sub-intervals(the higher the value of ‘n’ the better is the result.
                f= funciton whose integral has to be calculated
 Output:        Intergral of f(x) from x=a to x= b 
 logic:         Simpson's 1/3 rule
 */

function integral=simpson1by3(a,b,n,f)
 h=(b-a)/n;
 sum=0;
     for i=1:n-1
     x=a+i*h;
        if modulo(i,2)==0
         sum=sum+2*f(x);
        else
        sum=sum+4*f(x);
        end
    end
 integral=(h/3)*(f(a)+f(b)+sum);
endfunction




integral=simpson1by3(a,b,n,f)       //calling the simpson1by3() function


disp('Integral calculated usign Simpsons 1/3 rule')
disp(integral)




////SIMPSON'S 3/8 RULE////


 /* Evaluates the definite integral of a function f(x), from a to b.
 Function Name: simpson1by3(a,b,n,f)
 Input :        a=initial limit(real no.)
                b=final limit(real no.)
                n=no. of sub-intervals(the higher the value of ‘n’ the better is the result.
                f= funciton whose integral has to be calculated
 Output:        Intergral of f(x) from x=a to x= b 
 logic:         Simpson's 1/3 rule
 */


function integral=simpson3by8(a,b,n,f)//function definition of simpson
    h=(b-a)/n;
    sum=0;
    for i=1:n-1
        x=a+i*h;
        if modulo(i,3)==0
            sum=sum+2*f(x);
        else 
            sum=sum+3*f(x);
        end 
    end
    integral=(3*h/8)*(f(a)+f(b)+sum);
endfunction





integral=simpson1by3(a,b,n,f)       //calling the simpson3by8() function


disp('Integral calculated usign Simpsons 3/8 rule')
disp(integral)














////SCILAB'S INBUILT FUNCTION////





