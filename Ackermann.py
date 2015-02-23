def ack(m, n):
  "Returns Ackerman of input"
  if m == 0:
      return n + 1
  elif m > 0 and n == 0:
      return ack(m - 1, 1)
  elif m > 0 and n > 0:
      return ack(m - 1, ack(m, n - 1))

i = 0
while True:
  for x in range(9):
      print(ack(i, x))
  i += 1
