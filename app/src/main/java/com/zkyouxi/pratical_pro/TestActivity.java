package com.zkyouxi.pratical_pro;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Toast;

import com.zkyucheng.uniqueidHelper.UniqueId;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class TestActivity extends Activity implements View.OnClickListener {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sdktesst);
//        Button button = findViewById(R.id.sdk_test_btn_login);
        Button button = findViewById(getResources().getIdentifier("sdk_test_btn_login", "id", getPackageName()));
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(TestActivity.this, "onclick sucess ", Toast.LENGTH_SHORT).show();
            }
        });//  nullPointExev
    }


    @Override
    public void onClick(View view) {

    }

    public static void main(String... args) {

        System.out.println(args.length);
        System.out.println(args[0]);
    }
}
