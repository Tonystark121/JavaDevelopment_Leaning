package com.example;

import static org.junit.jupiter.api.Assertions.assertTrue;

import org.Demo.Hibernates;
import org.Demo.JavaCourse;
import org.Demo.PurchaseCourse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;

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
