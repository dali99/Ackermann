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
  for (int i = 0; i > -1; i++)
  {
    for (int j = i; j > -1; j--)
    {
      ack(i,j)
    }
  }
}
