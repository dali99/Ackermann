local function ack(m, n)
	if m == 0 then
		return n + 1
	elseif m > 0 and n == 0 then
		return ack(m - 1, 1)
	elseif m > 0 and n > 0 then
		return ack(m - 1, ack(m, n - 1))
	end
end

for m = 0, 10 do
	for n = 0, 10 do
		print(ack(m, n))
	end
end
