local function ack(m, n)
    if m == 0 then
        return n + 1
    elseif m > 0 and n == 0 then
        return ack(m - 1, 1)
    elseif m > 0 and n > 0 then
        return ack(m - 1, ack(m, n - 1))
    end
end

local m, n = 0, 0
while n > -1 do
    while m > -1 do
        print(ack(m, n))
        m = m + 1
    end
    n = n + 1
end