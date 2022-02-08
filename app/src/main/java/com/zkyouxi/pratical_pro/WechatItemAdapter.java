package com.zkyouxi.pratical_pro;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;

public class WechatItemAdapter extends BaseAdapter {
    Context mContext;

    public WechatItemAdapter(Context context) {
        mContext = context;
    }

    @Override
    public int getCount() {
        return 20;
    }

    @Override
    public Object getItem(int i) {
        return i;
    }

    @Override
    public long getItemId(int i) {
        return 0;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        return LayoutInflater.from(mContext).inflate(R.layout.list_item, null);
    }
}
