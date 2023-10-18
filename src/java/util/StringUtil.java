/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

/**
 *
 * @author Admin
 */
public class StringUtil {
    public static String[] getDateParts(String date) {
        return date.split("-");
    }
    public static String getString(String value) {
        return value == null? "" : value;        
    }
    public static String getString(Object value) {
        return value == null? "" : String.valueOf(value);        
    }
}
