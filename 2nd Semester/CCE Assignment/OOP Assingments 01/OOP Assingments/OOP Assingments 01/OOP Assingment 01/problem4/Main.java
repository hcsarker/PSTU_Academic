public class Main {
    public static void main(String[] args) {
        Rectangle s = new Rectangle(20, 40);
        s.area();
        s.perimeter();
        Square sq = new Square(10);
        sq.area();
        sq.perimeter();
    }
}

class Square {
    private int side;

    public Square(int side) {
        this.side = side;
    }

    public void area() {
        int area = side * side;
        System.out.println("Area of square: " + area);
    }

    public void perimeter() {
        int perimeter = 4 * side;
        System.out.println("Perimeter of square: " + perimeter);
    }
}

class Rectangle {
    private int length;
    private int width;

    public Rectangle(int length, int width) {
        this.length = length;
        this.width = width;
    }

    public void area() {
        int area = length * width;
        System.out.println("Area of rectangle: " + area);
    }

    public void perimeter() {
        int perimeter = 2 * (length + width);
        System.out.println("Perimeter of rectangle: " + perimeter);
    }
}
