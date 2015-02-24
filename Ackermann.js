var ack = function(m, n){
    if(m === 0){
        return n + 1;
    }else if(m > 0 && n === 0){
        return ack(m - 1, 1);
    }else if(m > 0 && n > 0){
        return ack(m - 1, ack(m, n - 1));
    }
};

for(n = 0; n > -1; n++){
    for(m = 0; m > -1; m++){
        console.log(ack(m, n));
    }
}
