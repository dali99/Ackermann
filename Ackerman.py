def ack(n, m):
  "Returns Ackerman of input"
  if m == 0:
      return n + 1
  elif m > 0 and n == 0:
      return ack(m - 1, n)
  elif m > 0 and n > 0:
      return ack(m - 1, ack(m, n - 1))

m, n = 0, 0
while n > -1:
    while m > -1:
        print(ack(m, n))
        m += 1
    n += 1