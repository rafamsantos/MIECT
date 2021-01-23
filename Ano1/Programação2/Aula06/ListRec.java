import static java.lang.System.*;
import java.util.*;
import java.io.*;


public class ListRec {
	
	public static void main (String[] args)throws IOException {
		File f = new File(args[0]);
		PrintDir(f);
		
	}
	public static void PrintDir(File f){
		out.println(f.getPath());
		if (f.isDirectory()) {
			out.println(f.getPath());
			File[] list = f.listFiles();
			for (int i = 0; i < list.length; i++) {
				PrintDir(list[i]);
			}
		}
	}
}

