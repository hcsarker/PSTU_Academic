public class Main {
    public static void main(String[] args) {
        // Create Point objects for the endpoints
        Point p1 = new Point(0, 0);
        Point p2 = new Point(0, 2);
        Point p3 = new Point(3, 2);
        Point p4 = new Point(3, 0);

        // Create objects of different shapes
        Quadrilateral quadrilateral = new Quadrilateral(p1, p2, p3, p4);
        Trapezoid trapezoid = new Trapezoid(p1, p2, p3, p4);
        Perallelogram parallelogram = new Perallelogram(p1, p2, p3, p4);
        Rectangle rectangle = new Rectangle(p1, p2, p3, p4);
        Square square = new Square(p1, p2, p3, p4);

        // Calculate and output the areas
        System.out.println("Area of Quadrilateral: N/A"); // No specific formula for a generic quadrilateral
        System.out.println("Area of Trapezoid: " + trapezoid.calculateArea());
        System.out.println("Area of Parallelogram: " + perallelogram.calculateArea());
        System.out.println("Area of Rectangle: " + rectangle.calculateArea());
        System.out.println("Area of Square: " + square.calculateArea());
    }
}





