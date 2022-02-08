package com.zkyouxi.pratical_pro;

import android.content.Context;
import android.widget.Toast;

public class ToastUtil {

    public static void show(Context con) {
        Toast.makeText(con, "掌昆游戏", Toast.LENGTH_SHORT).show();
    }


    public static boolean returnTest() {
        return false;
    }

    public static int returnTest1() {
        return 1;
    }


    public static double returnTest2() {
        return 1;
    }


    public static float returnTest3() {
        return 1f;
    }
}
