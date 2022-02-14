package com.zkyouxi.pratical_pro.wifi;

import android.content.Context;

/**
 * Created by apson on 2020/7/22.
 */

public class SignalHelper extends SignalInfo {

    /**
     * 信号强度获取
     *
     * @return
     */
    public static SignalBean mobGetNetRssi(Context context) {
        return getNetRssi(context);
    }

}
