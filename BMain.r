# CMD TO CREATE JAVA PROJECT: gradle init --type java-application

# cmd to compile java application : gradle.bat run

# cmd to run java application : ./gradle run

If working with Thread, use immutable variable and vice versa.

Else use the feature Thread Safe.

@Test Applied over method to mark as test.
import org.junit.jupiter.api.Test;
visibility of @Test Annotated method can be prublic,protected default.
Also inform test engine what method needs to run.


Gradle follows convention over configuration, meaning:

src/main/java/ is for application code.
src/test/java/ is for test code.
If tests are outside src/test/java/, Gradle will not find them automatically.



# IMPLEMENTATION OF JUINT 5

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.example.Pallindrome;
import org.junit.jupiter.api.Test;

public class PallindromTest {
    @Test 
    void testPallindrom(){
        Pallindrome p = new Pallindrome();
        boolean res = p.isPall("madam");

        assertEquals(true, res, ()->"The pallindrom check have some error.");
    }
}

'The only difference between using string with ()-> will be evaluated only when it fails
else in latter case will be evaluated in each case.

Opposite of asserNotEquals() if equal return false else true. rest same functionality.'

assertTrue(str.equals(s)) -> this pass if true else false based on condition in braces.

similar is assertFalse() -> opposite of above method.

assertArrayEquals() method:
    actual and expected arrays are equal.

assertThrows() -> match expected and actual exception. 

assertEqualsTimeout -> match time taken to expected time.

assertEqualsTimeout(Duration.ofMilli(10), ()-> array.sortArray(unsorted));

@BeforeEach -> this run the code block before every test. used in intialization.
@AfterEach -> this run the code block after every test. used in cleanup
@BeforeAll -> executed only once before each test.
@AfterAll -> executed exact once after each test completes.


Example Code:

@TestInstance(TestInstance.Lifecycle.PER_CLASS) // this ensure constructor run only once for each class.

// @TestInstance(TestInstance.Lifecycle.PER_CLASS) this ennsure constructor run for each method.
public class CourseTest {

    private PurchaseCourse pc;

    // This is because two object of cless is created so constructor run twice.
    CourseTest(){
        System.out.println("Hi I am in constructor.");
    }

    @BeforeEach
    void init(){
        pc = new PurchaseCourse();
        System.out.println("In before each block.");
    }

    @Test
    void testCoursePurchaseA(){
        boolean status = pc.proceedWithPurchase(new Hibernates());
        System.out.println("In test block.");
        assertTrue(status);
    }

    @Test 
    void testCoursePurchaseB(){
        boolean status = pc.proceedWithPurchase(new Hibernates());
        System.out.println("In test block.");
        assertTrue(status);
    }
}

Version control System:
    Local VCS
    Centralized VCS 
    Distributed VCS


Before GIT we are using Beetkeeper
Linux -> Linus Torvalds (founder)

git config -> Give list of some cmd
git config --global --list -> This give admin name/email.


If you want to set your details: git config --global user.name "Rajeev Kumar" similary set email.

git diff -> to check the diff in updated code.and do the same.

git rm --cached file_name -> to delete file from git if added /