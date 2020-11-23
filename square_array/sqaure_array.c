// Type your code here, or load an example.
int square(int num);
int main(){
   int num[3] = {2,4,6};
   
   int ans[2];

   for (int i=0; i<=2; i=i+1){
       ans[i] = square(num[i]);
   }
}
int square(int num) {
    return num * num;
}
