/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

/**
 *
 * @author Admin
 */
public class Validate {
    public static boolean checkName(String name) {
        return name.matches("[\\p{L}\\s]{3,50}");
    }
    public static boolean checkEmailOrPhone(String emailOrPhone){
        if (!emailOrPhone.matches("\\w+@\\w+[.]\\w")) {//email@address.com
            if(!emailOrPhone.matches("\\d{9,11}")) {
                return false;
            }
        }
        return true;
    }
    public static boolean checkPassword(String password) {
        return password.matches("\\w{4,30}");
    }
}
