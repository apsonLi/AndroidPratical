package com.zkyouxi.pratical_pro;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Toast;

import com.zkyucheng.uniqueidHelper.UniqueId;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class SDKTestActivity extends Activity implements View.OnClickListener {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sdktesst);
        findViewById(R.id.sdk_test_btn_login).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(SDKTestActivity.this, "请拉起第二十八天的登陆界面", Toast.LENGTH_SHORT).show();
            }
        });

    }


    @Override
    public void onClick(View view) {

    }
}
