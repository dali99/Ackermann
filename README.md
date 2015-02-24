# Ackerman
Collection of Ackermans function in multiple programming languages

Are to be iterated like

    0,0 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 ... 0,INFINITY
    1,0 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 ... 1,INFINITY
    2,0 2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8 2,9 2,10 ... 2,INFINITY
    3,0 3,1 3,2 3,3 3,4 3,5 3,6 3,7 3,8 3,9 3,10 ... 3,INFINITY
    4,0 4,1 4,2 4,3 4,4 4,5 4,6 4,7 4,8 4,9 4,10 ... 4,INFINITY
    5,0 5,1 5,2 5,3 5,4 5,5 5,6 5,7 5,8 5,9 5,10 ... 5,INFINITY
    6,0 6,1 6,2 6,3 6,4 6,5 6,6 6,7 6,8 6,9 6,10 ... 6,INFINITY
    ...
    INFINITY,0 INFINITY,1 INFINITY,2 INFINITY,3 INFINITY,4 INFINITY,5 INFINITY,6 INFINITY,7 ... INFINITY,INFINITY


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

So here's an implentation of this kind of loop in C:

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

