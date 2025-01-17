
import static java.lang.System.*;

public class House {

  public House(String houseType,int maxSize,int extensionSize) {
    this.houseType = houseType;
    this.extensionSize = extensionSize;
    rooms = new Room[maxSize];
    size = 0;
    doors = new Door[maxSize];
    numDoors = 0;
  }

  public House(String houseType) {
    this(houseType,8,4);
  } 

  public int size() {
    return size;
  }

  public int maxSize() {
    return rooms.length;
  }

  public Room room(int i) {
    return rooms[i];
  }

  public int addRoom(Room r) {
    if (size == rooms.length) {
			extendHouse();
		}
		rooms[size] = r;
		size++;
		return size-1;
  }

  private void extendHouse() {
    Room [] newRooms = new Room[rooms.length+extensionSize];
    arraycopy(rooms, 0, newRooms, 0, rooms.length);
    rooms = newRooms;
  } 

  private String houseType;
  private int extensionSize;
  private Room [] rooms;
  private int size;
  private Door [] doors;
  private int numDoors;

  public void addDoor(Door d) {
		if (numDoors == doors.length) {
			extendHouseDoors();
		}
		doors[numDoors] = d;
		numDoors++;
	}

	// Intern Methods
  private void extendHouseDoors() {
		Room [] newRooms = new Room[rooms.length+extensionSize];
		arraycopy(rooms, 0, newRooms, 0, rooms.length);
		rooms = newRooms;
  }
 
  public int numDoors() {
    return numDoors;
  }

  public int maxNumDoors() {
    return doors.length;
  }

  // RESPOSTAS...

}

