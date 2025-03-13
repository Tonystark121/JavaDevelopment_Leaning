package org.Demo;

public class PurchaseCourse {
    private Course course;
    
    public boolean proceedWithPurchase(Course course){
        return course.coursePurchased();
    }
}
