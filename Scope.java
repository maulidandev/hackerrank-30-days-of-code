import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;


class Difference {
  	private int[] elements;
  	public int maximumDifference;

	// Add your code here
    public Difference(int[] elements){
        this.elements = elements;
    }

    public void computeDifference(){
        int max = this.elements[0];
        int min = this.elements[0];

        for(int i=1; i<this.elements.length; i++){
            if(max < this.elements[i])
                max = this.elements[i];

            if(min > this.elements[i])
                min = this.elements[i];
        }

        this.maximumDifference = Math.abs(max - min);
    }

    public int maximumDifference(){
        return this.maximumDifference;
    }

} // End of Difference class

public class Scope {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] a = new int[n];
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }
        sc.close();

        Difference difference = new Difference(a);

        difference.computeDifference();

        System.out.print(difference.maximumDifference);
    }
}