public class Square extends Rectangle{
    void printSquare()
    {
        System.out.println("This is a Square");
    }
    public static void main(String[] args) {
        Square s= new Square();
        s.printRect();
        s.printShape();
    }
}
