#include<stdio.h>

int ack(int m, int n)
{
  if (m == 0)
    return n + 1;
  else if (m > 0 && n == 0)
    return ack(m - 1, 1);
  else if (m > 0 && n > 0)
    return ack(m - 1, ack(m, n - 1));
}

int main()
{
    int i = 0;
    int n = 0;
   
    while (1)
    {
        int m = i;
        while (m > -1)
        {
            printf("%i\n", ack(m, n));
            m--;
            n++;
        }
        i++;
        n = 0;
    }
}
