func ackermann(_ m: Int, _ n: Int) -> Int {
    var result: Int

    if m == 0 {
        result = n + 1
    }
    else if n == 0 {
        result = ackermann(m-1, 1)
    }
    else {
        result = ackermann(m-1, ackermann(m, n-1))
    }

    return result
}

var i = 0
var n = 0

while true {
    var m = i
    while m > -1 {
        print("ackermann(\(m), \(n)) = \(ackermann(m, n))")
        m -= 1
        n += 1
    }
    i += 1
    n = 0
}
