 int fact(int n);
int main() 
{
    int n = 7;
    fact(n);
}
 int fact(int n)
{   int fact = 1;
        for(int i = 1; i <= n; ++i)
 {
            fact *= i;
 }
}
