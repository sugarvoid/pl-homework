import java.io.*;
import java.util.*;
 
public class SortedList {
	
	ArrayList<String> list;
	
	public SortedList(){
		
		list = new ArrayList<String>();
	}
	
	public String toString()
	{
		String result = "";
		
		for (String s : list)
		{
			result = result + s + "\n";
		}
		
		return result;
	}
	
	public void addList(String[] names) { 
		
		for (String s : names)
			list.add(s);
		
		Collections.sort(list);
	}
	
	public static void main(String[] args) {

		String[] list1 = {"Adam", "Sam", "Mike"};
		String[] list2 = {"Becky", "Chelsea", "Molly"};
		String[] list3 = {"Connor", "John", "Scott"};

		SortedList list = new SortedList();
		list.addList(list1);
    	System.out.println("After first add:");
    	System.out.println(list.toString());

		list.addList(list2);
    	System.out.println("After second add:");
    	System.out.println(list.toString());

		list.addList(list3);
    	System.out.println("After third add:");
    	System.out.println(list.toString());
	}
}
	
// Sample Output
/*
After first addList:
Adam
Mike
Sam

After second addList:
Adam
Becky
Chelsea
Mike
Molly
Sam

After third addList:
Adam
Becky
Chelsea
Connor
John
Mike
Molly
Sam
Scott  
*/
