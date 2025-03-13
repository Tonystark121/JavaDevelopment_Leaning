package com.example;

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
