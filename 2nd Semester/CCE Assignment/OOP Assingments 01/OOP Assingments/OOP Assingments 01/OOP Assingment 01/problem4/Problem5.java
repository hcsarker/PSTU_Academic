import java.util.Scanner;

public class Problem5 {
    public static void main(String[] args) {
        Scanner s= new Scanner(System.in);
        int[] d1= new int[15];
        int[] d2= new int[15];
        for(int i=0;i<15;i++)
        {
           
           System.out.println("Enter "+(i+1)+" number Values(lenght,breadth): ");
           d1[i]=s.nextInt();
           d2[i]=s.nextInt();

        }
        for(int i=0;i<15;i++)
        {
            System.out.println("For "+(i+1)+" ");
           Rectangle r= new Rectangle(d1[i],d2[i]);
           r.area();
           r.perimeter();
        }
    }
}
