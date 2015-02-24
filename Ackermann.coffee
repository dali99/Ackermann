ack = (m, n) ->
  if m == 0 then return n + 1
  else if m > 0 then return ack(m - 1, 1)
  else if m > 0 and n > 0 then return ack(m - 1, ack(m, n - 1))
i = 0
while i > -1
  j = i
  while j > -1
    console.log ack(i,j)
    j--
  i++
