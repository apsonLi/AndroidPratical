package com.zkyouxi.pratical_pro;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;


import com.zkyouxi.basse.UiUtil;
import com.zkyouxi.net.UiutileTest;
import com.zkyucheng.uniqueidHelper.UniqueId;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class MainActivity extends Activity implements View.OnClickListener {

    private String a;
    private int b;
    private static long attach = 1;
    //风灵 pc ，八门神器
    private static Boolean isInit;
    private static boolean isInitx;

    public static void main(String... args) {
        System.out.println(isInit == null ? "a" : "b");
        System.out.println(isInitx);
        System.out.println(isInit);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        UniqueId uniqueId = new UniqueId();
        uniqueId.getUniqueID(this);
        ((ImageView) findViewById(R.id.wecat)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(MainActivity.this, "点击微信", Toast.LENGTH_SHORT).show();
            }
        });
//        A a = new A();
        ListView listView = findViewById(R.id.wechat_lv);
        WechatItemAdapter wechatItemAdapter = new WechatItemAdapter(this);
        listView.setAdapter(wechatItemAdapter);
//                ImageView Button TextView


        try {
            Method method = this.getClass().getDeclaredMethod("reflectMethod");
            method.invoke(this, "test");
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

    }


    @Override
    public void onClick(View view) {

    }
}
