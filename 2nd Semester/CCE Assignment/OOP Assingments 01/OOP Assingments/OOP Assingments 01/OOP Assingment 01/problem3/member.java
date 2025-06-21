public class member {
    
    String name,address;
    int age,phonenumber;
    double salary;
    void printSalary(double s)
    {
        this.salary=s;
    }
    void printInfo()
    {
        System.out.println("Name: "+name);
        System.out.println("Age: "+age);
        System.out.println("Address: "+address);
        System.out.println("Phone Number: "+phonenumber);
        System.out.println("Salary: "+salary);
        
    }
}
