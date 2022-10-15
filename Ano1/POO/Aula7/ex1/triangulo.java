package Aula7.ex1;

public class triangulo extends Forma{
    
    private double h , l1 , l2;
    public triangulo(double h , double l1 , double l2){
        this.h = h;
        this.l1 = l1;
        this.l2 = l2;
    }
    public double getH(){
        return h;
    }
    public double getL1(){
        return l1;
    }
    public double getL2(){
        return l2;
    }
    public void setH(double h){
        this.h = h;
    }
    public void setL1( double l1){
        this.l1 = l1;
    }
    public void setL2(double l2){
        this.l2 = l2;
    }
    
    public double getArea(double h,double l1 ,double l2){
        double p = (h+l1+l2)/2;
        return Math.sqrt(p*(p-h)*(p-l1)*(p-l2));
    }
    public double getPeri(double h , double l1 , double l2){
        return h+l1+l2;
    }

    @Override
    public boolean equals(Object obj){
        if(this == obj){
            return true;
        }
        if( obj == null){
            return false;
        }
        if(getClass() != obj.getClass()){
            return false;
        }
        triangulo other = (triangulo)obj;

        if(h != other.h){
            return false;
        }
        if(l1 != other.l1){
            return false;
        }
        if(l2 != other.l2){
            return false;
        }
        return true;
    }
}
