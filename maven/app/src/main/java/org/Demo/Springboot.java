package org.Demo;

class Springboot implements Course {
    @Override
    public boolean coursePurchased(){
        System.out.println("SpringBoot course purchased.");
        return true;
    }
}
