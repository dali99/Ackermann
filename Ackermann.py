def ack(m, n):
    "Returns Ackerman of input"
    if m == 0:
        return n + 1
    elif m > 0 and n == 0:
        return ack(m - 1, 1)
    elif m > 0 and n > 0:
        return ack(m - 1, ack(m, n - 1))

i, n = 0, 0
while i < 10:
    m = i
    while m > -1:
        print(ack(m, n))
        m -= 1
        n += 1
    i += 1
    n = 0