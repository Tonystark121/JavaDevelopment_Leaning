package org.example;

public class ReverseString {
    public String reverseString(String s){
        char[] arr = s.toCharArray();

        int i=0, j=s.length() - 1;

        while(i<j){
            char c = arr[i];
            arr[i] = arr[j];
            arr[j] = c;
            i++; j--;
        }

        return new String(arr);

    }
}
