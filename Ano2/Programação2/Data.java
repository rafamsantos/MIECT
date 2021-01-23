import static java.lang.System.*;
import java.util.Calendar;

public class Data {
  private int dia, mes, ano;

  /** Inicia esta data com o dia de hoje. */
  public Data() {
    // Aqui usamos a classe Calendar da biblioteca standard para obter a data atual.
    Calendar today = Calendar.getInstance();
    dia = today.get(Calendar.DAY_OF_MONTH);
    mes = today.get(Calendar.MONTH) + 1;
    ano = today.get(Calendar.YEAR);
  }

  /** Inicia a data a partir do dia, mes e ano dados. */
  public Data(int dia, int mes, int ano) {
	this.dia=dia;
	this.mes=mes;
	this.ano=ano;
  }

  /** Devolve esta data segundo a norma ISO 8601. */
  public String toString() {
    return String.format("%04d-%02d-%02d", ano, mes, dia);
  }

  /** Indica se ano é bissexto. */
  public static boolean bissexto(int ano) {
    return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
  }

  // Crie métodos para obter o dia, mes e ano da data.
  //...
  public int dia(){
		return dia;
	  }	
  public int mes(){
		return mes;
	  }
  public int ano(){
		return ano;
	  }

  /** Dimensões dos meses num ano comum. */
  private static final
  int[] diasMesComum = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

  /** Devolve o número de dias do mês dado. */
  public static int diasDoMes(int mes, int ano) {
	int i =0;
	
	if(bissexto(ano)==true){
		if((mes==1 || mes ==3 || mes==5 || mes==7 || mes==8 || mes==10 || mes==12)){
				i=31;
			}
		else if(mes==4 || mes==6 || mes==9 ||  mes==11){
				i=30;
			}
		else if(mes==2){
				i=29;
			}
		}
	else if(bissexto(ano)==false){
		if((mes==1 || mes ==3 || mes==5 || mes==7 || mes==8 || mes==10 || mes==12)){
				i=31;
			}
		else if(mes==4 || mes==6 || mes==9 ||  mes==11){
				i=30;
			}
		else if(mes==2){
				i=28;
			}
		}
	return i;
  }

  /** Devolve o mes da data por extenso. */
  public String mesExtenso() {
		String month="";
		switch(mes){
			case 1 : month="Janeiro";
				break;
			case 2: month="Fevereiro";
				break;
			case 3: month="Março";
				break;
			case 4: month="Abril";
				break;
			case 5: month="Maio";
				break;
			case 6: month="Junho";
				break;
			case 7: month="Julho";
				break;
			case 8: month="Agosto";
				break;
			case 9: month="Setembro";
				break;
			case 10: month="Outubro";
				break;
			case 11:month="Novembro";
				break;
			case 12:month="Dezembro";	
			
			}
			return month;

  }


  /** Devolve esta data por extenso. */
  public String extenso() {
	String frase = (dia+ " de " + mesExtenso() +" de " + ano);
	return frase;
  }

  /** Indica se um terno (dia, mes, ano) forma uma data válida. */
  public static boolean dataValida(int dia, int mes, int ano) {
		boolean r=false;
		if(bissexto(ano)==true){
			if((mes==1 || mes==3 || mes==5 || mes==7 || mes==8 || mes==10 || mes==12) && (dia>=1 && dia<=31)){
					r=true;
				}
			else if((mes==4 || mes==6 || mes==9 || mes==11) && (dia>=1 && dia<=30))
				{
					r=true;
				}
			else if(mes==2 && (dia>=1 && dia<=29))
				{
					r=true;
				}
			}
		else if(bissexto(ano)==false)
	{
			if((mes==1 || mes==3 || mes==5 || mes==7 || mes==8 || mes==10 || mes==12) & (dia>=1 && dia<=31))
				{
					r=true;
				}
			else if((mes==4 || mes==6 || mes==9 || mes==11) && (dia>=1 && dia<=30))
			{
					r=true;
			}
			else if(mes==2 && (dia>=1 && dia<=28))
			{
					r=true;
			}		
		}	  
		return r;
}


  public void seguinte() {
if(bissexto(ano)==true)
	   {		
			if((mes==1 || mes==3 || mes==5 || mes==7 || mes==8 || mes==10) && (dia==31))
			{
				dia=1;
				mes=mes+1;
			}
			else if((mes==1 || mes==3 || mes==5 || mes==7 || mes==8 || mes==10) && (dia!=31))
			{
				dia=dia+1;
				mes=mes;
			}
			else if((mes==4 || mes==6 || mes==9 || mes==11) && (dia==30))
			{
				dia=1;
				mes=mes+1;
			}
			else if((mes==4 || mes==6 || mes==9 || mes==11) && (dia!=30))
			{
				dia=dia+1;
				mes=mes;
			}
			else if(mes==2 && (dia<=29))
			{
				dia=1;
				mes=mes+1;
			}
			else if(mes==2 &&(dia!=29))
			{
				dia=dia+1;
				mes=mes;
			}
			else if(mes==12 && dia==31)
			{
				dia=1;
				mes=1;
				ano=ano+1;
			}
			else if(mes==12 && dia==31)
			{
				dia=dia+1;
				mes=mes;
				ano=ano;
			}
	  }
	  else if(bissexto(ano)==false)
	  {
			if((mes==1 || mes==3 || mes==5 || mes==7 || mes==8 || mes==10) & (dia==31))
			{
				dia=1;
				mes=mes+1;
			}
			else if((mes==1 || mes==3 || mes==5 || mes==7 || mes==8 || mes==10) & (dia!=31))
			{
				dia=dia+1;
				mes=mes;
			}
			else if((mes==4 || mes==6 || mes==9 || mes==11) && (dia==30))
			{
				dia=1;
				mes=mes+1;
			}
			else if((mes==4 || mes==6 || mes==9 || mes==11) && (dia!=30))
			{
				dia=dia+1;
				mes=mes;
			}
			else if(mes==2 && (dia==28))
			{
				dia=1;
				mes=mes+1;
			}
			else if(mes==2 && (dia!=28))
			{
				dia=dia+1;
				mes=mes;
			}
			else if(mes==12 && dia==31)
			{
				dia=1;
				mes=1;
				ano=ano+1;
			}
			else if(mes==12 && dia!=31)
			{
				dia=dia+1;
				mes=mes;
				ano=ano;
			}		
	}
  }
  }




