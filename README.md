# Ackermann
Collection of Ackermanns function in multiple programming languages

Are to be iterated in a way that computes every value possible, order isn't that important

So here's an implentation of that kind of loop in C:

    int i = 0;
    int n = 0;
   
    while (1)
    {
        int m = i;
        while (m > -1)
        {
            printf("%i\n", m);
            m--;
            n++;
        }
        i++;
        n = 0;
    }

That would make it go through the numbers like this:
![Loop1](/../Documentation/Screenshots/Loop1.png?raw=true)

If you're using ths method here's a list of what your arguments to ack should be:
ack(0,0)
ack(1,0)
ack(0,1)
ack(2,0)
ack(1,1)
ack(0,2)
ack(3,0)
ack(2,1)
ack(1,2)
ack(0,3)
ack(4,0)
ack(3,1)
ack(2,2)
ack(1,3)
ack(0,4)
ack(5,0)
ack(4,1)
ack(3,2)
ack(2,3)
ack(1,4)
ack(0,5)

That should be enough to see if you're iterating correctly


That's one way to do it, but you can also implement it by flipping

Here's an example in C++:
    
    m, n = 0, 0
    flip = False
    while True:
        n = m
        while n > -1:
            if flip:
                ack(n, m)
            else:
                ack(m, n)
                n += 1
            if n != m:
                flip = True
                m += 1
                
This gives you a result that looks like this:

![Flip1](/../Documentation/Screenshots/Flip1.png?raw=true)

Which is still perfectly valid. Just not as clean.

So we advice you to use a for loop like the first example

Oh and here's a helpfull table:

    0,0 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 ... 0,INFINITY
    1,0 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 ... 1,INFINITY
    2,0 2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8 2,9 2,10 ... 2,INFINITY
    3,0 3,1 3,2 3,3 3,4 3,5 3,6 3,7 3,8 3,9 3,10 ... 3,INFINITY
    4,0 4,1 4,2 4,3 4,4 4,5 4,6 4,7 4,8 4,9 4,10 ... 4,INFINITY
    5,0 5,1 5,2 5,3 5,4 5,5 5,6 5,7 5,8 5,9 5,10 ... 5,INFINITY
    6,0 6,1 6,2 6,3 6,4 6,5 6,6 6,7 6,8 6,9 6,10 ... 6,INFINITY
    7,0 7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8 7,9 7,10 ... 7,INFINITY
    8,0 8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8 8,9 8,10 ... 8,INFINITY
    9,0 9,1 9,2 9,3 9,4 9,5 9,6 9,7 9,8 9,9 9,10 ... 9,INFINITY
    10,0 10,1 10,2 10,3 10,4 10,5 10,6 10,7 10,8 10,9 10,10 ... 10,INFINITY
    ...
    INFINITY,0 INFINITY,1 INFINITY,2 INFINITY,3 INFINITY,4 INFINITY,5 INFINITY,6 INFINITY,7 ... INFINITY,INFINITY
