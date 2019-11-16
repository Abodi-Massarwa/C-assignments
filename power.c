#include <stdio.h>
//recursive :)
double Exp(int x){//assuming exponent means : e^x
if(x==0)return 1;
return ((double)2.71828182845904523536028747135266249775724709369995)*Exp(x-1);
}

double Pow(double x,int y){
if(y==0) return 1;

return x*Pow(x,y-1);

}
