package com.example;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.example.ReverseString;
import org.junit.jupiter.api.Test;

public class ReverseStringTest {
      @Test 
      void testReverseString(){
        ReverseString  ss = new ReverseString();

        String res = ss.reverseString("Rajeev Kumar");

        assertEquals("ramuK veejaR", res);
      }
}
