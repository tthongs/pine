#include<stdio.h>
void main(){
    int ct=5;
    printf("%d",ct);
    while(ct>1){
        printf("%d",ct);
        while(ct>4){
            printf("%d",ct);
            if(ct>0){
                break;
            }
            printf("%d",ct);
            ct-=1;
        }
        ct-=1;
    }
}