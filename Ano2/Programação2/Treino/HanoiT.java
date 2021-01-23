
public class HanoiT {
	
	public static void main (String[] args) {
		int n = 4;
		moverDiscos(n,"1","3","2");
	}
	public static void moverDiscos(int n, String origem, String destino , String auxiliar){
		assert n>= 0;
		if(n > 0){
			moverDiscos(n-1 , origem , auxiliar , destino);
			System.out.println(" Move disco "+ n +" da torre "+origem+"  para a torre "+ destino);
			moverDiscos(n-1,auxiliar, destino,origem);
		}
	}
}

