package org.example;

public class Pallindrome {
    public boolean isPall(String s){
        ReverseString str = new ReverseString();
        String res = str.reverseString(s);
        System.out.println(res + " " + s);
        return res.equals(s);
    }
}
