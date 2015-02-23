#include <iostream>

int ack(int m, int n){
	if(m == 0)
		return n + 1;
	else if(m > 0 && n == 0)
		return ack(m - 1, 1);
	else if(m > 0 && n > 0)
		return ack(m - 1, ack(m, n - 1));
}

int main(){
	for(int m = 0; m < 10; m++)
		for(int n = 0; n < 10; n++)
			std::cout << ack(m, n) << std::endl;

	return 0;
}
