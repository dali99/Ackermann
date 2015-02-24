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
	int i = 0, n = 0;
	while(i > -1){
		int m = i;
		while(m > -1){
			std::cout << ack(m, n) << std::endl;
			m--;
			n++;
		}
		i++;
		n = 0;
	}

	return 0;
}
