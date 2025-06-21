public class Square extends Rectangle {
    public Square(Point p1, Point p2, Point p3, Point p4) {
        super(p1, p2, p3, p4);
    }

    // Calculate the area of a square
    public double calculateArea() {
        return Math.pow(p1.getX() - p2.getX(), 2);
    }
}