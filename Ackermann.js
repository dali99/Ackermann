var ack = function(m, n){
    if(m === 0){
        return n + 1;
    }else if(m > 0 && n === 0){
        return ack(m - 1, 1);
    }else if(m > 0 && n > 0){
        return ack(m - 1, ack(m, n - 1));
    }
};

var i = 0;
var n = 0;
while(i > -1){
    var m = i;
    while(m > -1){
        console.log(ack(m, n));
        m--;
        n++;
    }
    i++;
    n = 0;
}