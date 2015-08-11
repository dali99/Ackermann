public class Ackermann {
	static int m = 0;
	static int n = 0;
	public static void main(String[] args){
		
		int i = 0;
		while(true){
			int m = i;
			while(m > -1){
				System.out.println(ackermann(m, n));
				m++;
				n--;
			}
			i++;
			n = 0;
		}
	}
	
	public static int ackermann(int m, int n){
		if(m == 0){
			return n + 1;
		}
		else if(m > 0 && n == 0){
			return ackermann(m - 1, 1);
		}
		else if (m > 0 && n > 0){
			return ackermann(m - 1, ackermann(m, n - 1));
		}
		return -1;
	}
}
