"JShell" is a simple way to use java in terminal.

Q. how code run in java?
    "Java is platform independent, it directly run not our what we write i.e Java code first converted into byte code which run by JVM, so its jvm dependent which must be install by every device. The jvm[java virtual Machine] is a subset of JRE[Java Runtime Environment], which involve a lot more stuff to make code life easier which is further a subset of JDK[java development kit]" 

    Due to this we say java as "WORA - write once run anywhere"

# Java + class name to compile in terminal.

Data type: {Primitive-> integer(byte, short, int, long), float(double, float), character, boolean}

To print number of base of 2 -> use 0b before number.

class Calculator {
    int num = 5;
    public int add(int a, int b){
        return a + b;
    }
}

Calculator calc = new Calculator;
    if I talk about memory of calc all its variable will be store in heap. To be more precise local variable stored in stack while instance variable in heap. 

    # there will be a heap memory with address xyz containing num=5 & add(). in stack memory calc = xyz

"This means there is link between stack and Heap memory."

1Impotrant!! : 
        int arr[][] = new int[3][]; // this is called a jagged array.
        arr[0]=new int[4];
        arr[1]=new int[3];
        arr[2]=new int[2];

Doubt: 
    why integer array have default value 0
    for string it's null.
    char it's empty.
    for boolean it's false.'

    String vs String buffer.

    We can't have two public classes in same file of java. why?'

    implementation of hashCode in java.


    Read about upcasting/dpwncasting in java classes.

!If we don't craete an object class won't load, no result will be shown up.

even if we wan't to do so use Class.forName("Mobile")'

Every constructor has a "invisible" method which #SUPER(), which help to refer parent class contructor & methods.

#this() is powerful to access things in same class.

## There is Object class in java which is extended by every class even we don't mention it. This particular class give the ability of super and other important methods.

If we want to create a object which is reference only once we simply create it without assigning it to a variable.

"We have multilevel inheritance, but not multiple inheritence to reduce redundancy. $$$"

overloading: same name but diffrent paramenter.
overriding: same name same paramenter but different method to perform.

# For any import of file use folder/class name to import in java file.

# default have this line: import java.lang.System due to which we use system related stuff.

1Impotrant: other.* t: this explicitely means all files within the folder other not folder within the others.

when sharing your package to entire world It should have unique name.

# TO GET LIBRARIES VISIT: MVN REPOSITORIES.


Memorize this chart.
                                              public                            private
    SAME_CLASS                                  y                                   y
    SAME_PACKAGE(subclass)                      y                                   n
    SAME_PACKAGE(non-subclass)                  y                                   n
    DIFFERENT_PACKAGE                           y                                   n
    DIFFERENT_PACKAGE(non-subclass)             y                                   n


Default: It imples simple it can be accessed in same package.

Protected: Can't be accessed outside the class if not a subclass.'


# Polymorphism -> Many behaviour [compile time(early binding), runtime(late-binding)]


It is possible to create reference of super class but object of normal class.

class Computer{}

class Laptop extends Computer{}

# all three are correct
1. Computer a = new Computer();
2. Laptop b = new Laptop()
3. Computer c = new Laptop() # for this to work inherintence is very important.
4. Laptop d = new Computer() # this is wrong, referencing to child we can't create parent.

When we use final with class we extend it. we can use it with methods, variable, class which prevent any further changes.



# IMPORTANT CONCEPT OF DOWNCAST AND UPCAST:

Mobile a = (Mobile) new Apple(); //this apple is upcasted as, a only access the parent variables/methods and it is done automatically. i.e, explicit mentio of (Mobile) is not necessaty.
        
        // Let's try downcast'

        Apple b = (Apple) a; // here a is downcast to b as it can access the values of of b


## WRAPPER CLASSES - Give extra Methods.
    int -> integer
    char -> character
    double -> Double


integer.parstInt("string") to convert string to int.

Abstract keyword:
    we can't create object of abstract class.'

    @1Important
    abstract class may have abstract class ot not so, but the extend class of abstract method should have all the abstract methods of parent class.

    The extended class of an abstract class is called "concrete Calass"

    "If you have abstract method, then you must make that class abstract, else we can;t able create object of that class."


    A a = new A();
        // a.print();

        # works in case of non static
        A.B b = a.new B(); // to access objects of B, we must create object A then B using A.

        # in case of static
        A.B b = new A.B()


Anonymous Class:
    A a = new A(){
            public void print(){
                System.out.println("This is new method to Print");
            }
        }; // this is called anonymus class with no name but within class A.
        a.print();

    where A is a class with method print.

    we can use it with abstract class to directly create instance of abstract methods with extending the class and create its object


1Important Methods examples:

class Computer {
    // this is basic method.
    public void code(){}
}

# instead of this we can use interface.
interface Computer{
    void code();
    # use implements instead of extends. 
}

class Laptop extends Computer {
    // this overlap the
    public void code(){
        System.out.println("code, compile, run");
    }
}

class Desktop extends Computer {
    public void code(){
        System.out.println("code, compile, run: faster");
    }
}

class Developer{
    public void devApp(Computer lap){
        lap.code();
    }
}

public class Hello {
    public static void main(String[] args) {
        Computer lap = new Laptop();
        Computer desk = new Desktop();
        Developer rajeev = new Developer();
        // here i getting error as I am expecting a laptop object but I am passing a desktop object.


        // to overcome this either we can create a new class which take desktop as an arguments the most easiest way but again the problem is code lengthy what if this is used only once.

        // the second and most generous way is creating a new main generic class which have same method and use extended version of this code.
        rajeev.devApp(lap);
    }


1. Abstract Class
Can have both abstract (without body) and concrete (with body) methods.
Can have constructors.
Can have instance variables.
Supports single inheritance (a class can extend only one abstract class).
Can have access modifiers (public, protected, private).
Used when classes share common behavior but also require some implementation.

2. Interface
Only contains abstract methods (Java 7 and earlier).
Since Java 8, interfaces can have default methods (with implementation) and static methods.
Since Java 9, they can also have private methods.
All fields are public, static, and final by default (constants only).
Supports multiple inheritance (a class can implement multiple interfaces).
Used when unrelated classes need to share common behavior but don't share a common ancestor.


All the variable in interface is final and static so must be finalised.


## ENUM '

// ## All about enum class. 
// this is class
enum Laptop{
    // all this are objects. the special this here is objects are present inside the class itself.
    Macbook(2000), XPS(2500), Surface(1800), Lenevo;

    private int price;
    // since class a constructor is here. which set value according to constructor.

    private Laptop(){
        this.price = 1000;
    }

    private Laptop(int price){
        this.price = price;
    }
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }

    
}

// Associated method. s.ordinal() this acts as an array
// Status[] ss = Status.values();
//         System.out.println(ss[2]); this make it to act as array
// can also use with loop conditions, switch cases
public class Hello {
    public static void main(String[] args) {
        // to create 
        // Laptop a =  Laptop.Macbook;
        // System.out.println(a.getPrice());

        for(Laptop a: Laptop.values()){
            System.out.println(a + " " + a.getPrice());
        }
    }
}

1Important: Method calls are determined at runtime, based on the actual object type (B).

This is called dynamic method dispatch (runtime polymorphism) or Late Binding.



Types of Intefaces:     
    {Normal(two or more methods.), Fundamental/Sam(Single Abstract Method) Marker(with no methods. then why it is required. serialize & deserialize concept. )}


()-> this also works in case of functional Interface.


Example:

# can pass parameter as well
interface A {
    void show();
}

public class Hello {
    public static void main(String[] args) {
       A a = () -> System.out.println("hey rajeev!");

       a.show();
    }
}

Both works same: 
    // A a = (i,j) -> i+j;

    // A a = new A() {
    //     public int show(int a, int b){
    //         return a + b;
    //     }
    // };
    // System.out.println(a.show(4, 6));


### EXCEPTIONS THINGS.

1. compile time error
2. runtime error involve handling of exceptions.
3. logical error


Objects -> throwables -> [error, exception] -> Error -> [IO error, VME(out of memory), Thread death] -> exception -> [runtime exception, IO exception, sql exception] -> runtime -> [NULL pointer, Arithmetic, ArrayIndex]

runtime is classed unchecked exception while other two is called checked exception

## EXCEPTION HANDLING CODE:

there are four keywords:
    try,catch,throw, throws all these keywords helps in handling exception.

class RajeevException extends Exception{
    public RajeevException(String s){
        // System.out.println(s);
        // here first it runs the parent exception the is of parent class then of child if we super, else in reverse order.
        super (s);
    }
}

public class Hello {
    public static void main(String[] args) {
        int i=18;
        int j=0;

        try {
            if(j==0) 
                throw new RajeevException("I am in My own exception.");
            i = i/j;
            System.out.println(i);
        } 
        catch (ArithmeticException a){
            System.out.println("This is invalid division." + a);
        }
        catch (Exception e) {
            System.out.println("This default exception." + e);
        }

        System.out.println("Here program ends");
    }
}


throws exception : this simple transfer the load to handle exception to child class/inherit class.

class A {
    public void show() throws ClassNotFoundException {
        Class.forName("calc");
    }
}

public class Hello {
    public static void main(String[] args) {
        A a = new A();
        try {
            a.show();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Something went wrong.");
        }

        // a.show();
    }
}



## Ways to input take input in Java.


    // ways to take inpiut.
    // int n = System.in.read(); // take input ascii value.
    // System.out.println(n); // this gives a IO exception error.

    // System.out.println("Enter a number: ");

    // InputStreamReader in = new InputStreamReader(System.in);

    // // the profit of using this that it input from file, system, folder, network.
    // BufferedReader bf = new BufferedReader(in);
    since we are creating a connection or opening a file/folder so it is not necessary close.

    // int n = Integer.parseInt(bf.readLine());  // as this values as string so output as that.

    // System.out.println(n);

     // after all the process use 
    // bf.close();


    Latest way.

    Scanner sc = new Scanner(System.in);
    System.out.println("Enter a number: ");
    int n = sc.nextInt(); // have specific method to take input different data type.

    System.out.println(n);


# Try with Finally

irrespective of try/catch it will be evaluated first.The main use case is when we want to close opened resource/connection during execution.

1Implementation examples:
    BufferedReader bf = null;
        try{
            
            InputStreamReader in = new InputStreamReader(System.in);
            bf = new BufferedReader(in);

            int n = Integer.parseInt(bf.readLine());

            System.out.println(n);
        }
        finally{
            bf.close();
        }


        // the better syntax could be:
            // this automatically close the connection/resource without use of finally
        try(BufferedReader br = new BufferedReader(new InputStreamReader(System.in))){
            int num = Integer.parseInt(br.readLine());
            System.out.println(num);
        }

Let's Learn about Thread.'

To run methods parallely.

Read about concept of schedular in OS, how it is related ot core in OS


// Every thread must have a run method/object.
// we can get/set priority also set some standard using Thread.Max/Min/Norm also.
// we can use Thread.sleep() to make wait the execution, due to this order of exectution is alternate.


class A extends Thread {
    public void run() {
       for(int i=0;i<10;i++){
        System.out.println("Hi Rajeev!");
        try {
            Thread.sleep(10);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
       }
    }
}
class B extends Thread {
    public void run() {
        for(int i=0;i<10;i++){
         System.out.println("Hi Ranjan!");
         try {
            Thread.sleep(10);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        }
     }
}

public class Hello {
    public static void main(String[] args){
        A a = new A();
        B b = new B();
        System.out.println(a.getPriority());
        a.start();
        b.start();
    }
}


class Z{}

class A extends Z implements Runnable {
    public void run() {
       for(int i=0;i<10;i++){
        System.out.println("Hi Rajeev!");
        try {
            Thread.sleep(10);
        } catch (InterruptedException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
       }
    }
}
class B implements Runnable {
    public void run() {
        for(int i=0;i<10;i++){
         System.out.println("Hi Ranjan!");
         try {
            Thread.sleep(10);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        }
     }
}

// Now again what if class A extends a class X, in that case we won't able to use Thread and A class together as multiple inheritence won;t work in java.

// To overcome this issue, we instead using it as inheritence of Thread we implement it as Runnable.

// By doing this we can still extend it to inherit its parent properites.


public class Hello {
    public static void main(String[] args){
        # Runnable a = new A();
        # Runnable b = new B();

        # Using annonymous class we can prevent the use of class and reduce code space. Here is the implementaion.

        Runnable a = () -> {
            for(int i=0;i<10;i++)
                System.out.println("Hi Rajeev!");
            try {
                Thread.sleep(10);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        };
        Runnable b = () -> {
            for(int i=0;i<10;i++)
                System.out.println("Hi Ranjan!");
            try {
                Thread.sleep(10);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        };

        Thread t1 = new Thread(a);
        Thread t2 = new Thread(b);

        t1.start();
        t2.start();
       
    }
}'