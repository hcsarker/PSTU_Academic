public class Rectangle extends Parallelogram {
    public Rectangle(Point p1, Point p2, Point p3, Point p4) {
        super(p1, p2, p3, p4);
    }

    // Calculate the area of a rectangle
    public double calculateArea() {
        return Math.abs((p1.getX() - p2.getX()) * (p1.getY() - p3.getY()));
    }
}