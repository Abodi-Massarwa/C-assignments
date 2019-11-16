#include <stdio.h>
#include "myMath.h"
int main(){
program();
return 0;}

void program(){
double x,func1,func2,func3;
printf("please enter a real number :");
scanf("%lf",&x);

func1= sub(add((float)Exp((int)x),(float)Pow(x,3)),2);
func2= add( mul(x,3),mul(Pow(x,2),2));
func3= sub((float)div(mul(Pow(x,3),4),5),(float)mul(x,2));

printf("the value of f(X)= e^x+x^3-2 at the point %.4f is:%.4f\n",x,func1);
printf("the value of f(X)= 3x+2x^2 at the point %.4f is: %.4f\n",x,func2);
printf("the value of f(X)= (4x^3)/5 -2x at the point %.4f is:%.4f\n",x,func3);


}
