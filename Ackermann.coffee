ack = (m, n) ->
  if m == 0 then return n + 1
  else if m > 0 and n > 0 then return ack(m - 1, ack(m, n - 1))
  else if m > 0 then return ack(m - 1, 1)



i = 0
while true
    m = i
    n = 0
    while m > -1
        print(ack(m, n))
        m--
        n++
    i++
    n = 0
