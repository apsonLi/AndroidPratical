package com.zkyouxi.pratical_pro;

import android.app.Activity;

import java.lang.reflect.Method;

public class ReflectMethodTest {
    public static void main(String... args) {
//        ReflectClassTest test = new ReflectClassTest();
//        test
        try {
            Class claz = Class.forName("com.zkyouxi.pratical_pro.ReflectClassTest");
            Object object = claz.newInstance();//  com.zkyouxi.pratical_pro.MainActivity object = new com.zkyouxi.pratical_pro.MainActivity();
            Method method = claz.getDeclaredMethod("reflectMethod", String.class);
            method.setAccessible(true);
            method.invoke(object, "test");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.toString());
        }
        System.out.println("sss");
    }
}
