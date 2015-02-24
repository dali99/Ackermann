local function ack(m, n)
    if m == 0 then
        return n + 1
    elseif m > 0 and n == 0 then
        return ack(m - 1, 1)
    elseif m > 0 and n > 0 then
        return ack(m - 1, ack(m, n - 1))
    end
end

local i, n = 0, 0
while i > -1 do
    local m = i
    while m > -1 do
        print(ack(m, n))
        m = m - 1
        n = n + 1
    end
    i = i + 1
    n = 0
end