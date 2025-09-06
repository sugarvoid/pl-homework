import java.io.*;
import java.util.*;
 
public class NameSorter {
	
	ArrayList<String> list;
	
	public NameSorter(){
		
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
		
	public void sort(){
		
		Collections.sort(list);
	}
	
	public void add(String[] names) { 
		
		for (String s : names)
			list.add(s);
	}
	
	public static void main(String[] args) {

		NameSorter merger = new NameSorter();
		String[] list1 = {"Adam", "Sam", "Mike"};
		String[] list2 = {"Becky", "Chelsea", "Molly"};
		String[] list3 = {"Connor", "John", "Scott"};

		merger.add(list1);
		merger.add(list2);
		merger.add(list3);
			
    	System.out.println("List after import:");
    	System.out.println(merger.toString());
		merger.sort();
    	System.out.println("List after sort:");
    	System.out.println(merger.toString());
	}
	
	// Sample Output
	/*
	List after import:
	Adam
	Sam
	Mike
	Becky
	Chelsea
	Molly
	Connor
	John
	Scott

	List after sort:
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
}
