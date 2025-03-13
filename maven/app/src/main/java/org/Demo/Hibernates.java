package org.Demo;

public class Hibernates implements Course {
    @Override
    public boolean coursePurchased(){
        System.out.println("Hibernates course purchased.");
        return true;
    }
}
