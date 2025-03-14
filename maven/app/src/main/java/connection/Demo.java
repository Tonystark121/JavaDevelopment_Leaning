package connection;

// here we will discuss importance of Class.forName().

class Rajeev {
    static{
        System.out.println("I am in static block.");
    }

    {
        System.out.println("I am in instance block.");
    }
}

public class Demo {
    public static void main(String[] args) throws ClassNotFoundException {
        // using this both static & instance class run.
        // Rajeev a = new Rajeev();

        // To run only static class without creating a object of class

        Class.forName("Rajeev");
    }
}
