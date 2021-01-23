
public class Door {

  // Declare necessary fields here...
  private int r1;
  private int r2;
  private double height;
  private double width;

  /** Constructs a new Door between two rooms.
   * @param r1 Identifier of a room.
   * @param r2 Identifiier of another room.  It cannot be the same as r1!
   * @param w  Door width (in meters).  Must be positive.
   * @param h  Door height (in meters).  Must be positive.
   */
  public Door(int r1, int r2, double w, double h) {
	this.r1 = r1;
	this.r2 = r2;
	this.height = h;
	this.width = w;
  }
  
  public int r1(){
	  
	return this.r1;
  }
  
  public int r2(){
	  
	return this.r2;
  }
  
  public double area(double w, double h){
	  double area;
	  
	  area = this.width * this.height;
	  return area;
  }

}

