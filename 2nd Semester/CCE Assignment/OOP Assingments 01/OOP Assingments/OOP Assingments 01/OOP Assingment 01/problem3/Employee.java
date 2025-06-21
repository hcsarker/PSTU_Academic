public class Employee extends member {
    public static void main(String[] args) {
        Employee m= new Employee();
        m.name="Mr Khalid";
        m.age=27;
        String department;

        m.address="Dhaka, Bangladesh";
        m.phonenumber=1712345678;
        m.printSalary(20000d);
        m.printInfo();
        
    }
}
