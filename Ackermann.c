#include<stdio.h>

int ack(m, n)
{
  if (m == 0)
    return n + 1;
  else if (m > 0 && n == 0)
    return ack(m - 1, 1);
  else if (m > 0 && n > 0)
    return ack(m - 1, ack(m, n - 1))
}

int main(void)
{
  int i = 0
  
  while (true)
  {
    for (int x = 0; x < 10; x++)
    {
      printf("%i\n", ack(i, x));
    }
  i++
  }
}
