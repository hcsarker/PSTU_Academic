public class Rectangle {
    int length,breadth;

    public Rectangle(int l,int b){this.length=l;this.breadth=b;}
    void area()
    {
        System.out.println("The area of the Ractangle is: "+(length*breadth));
    }
    void perimeter()
    {
        System.out.println("The perimeter of the Ractangle is: "+(2*(length+breadth)));
    }
}
