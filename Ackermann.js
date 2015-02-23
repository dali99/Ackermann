var ack = function(m, n){
    if(m === 0){
        return n + 1;
    }else if(m > 0 && n === 0){
        return ack(m - 1, 1);
    }else if(m > 0 && n > 0){
        return ack(m - 1, ack(n, m - 1))
    }
}

var m = 0;
var n = 0;
while(true){
    console.log(ack(m, n))
    m++;
    n++;
}
