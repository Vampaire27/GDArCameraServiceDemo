package com.autonavi.amapauto.gdarcameraservicedemo;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

import androidx.annotation.Nullable;

/**
 * 摄像头服务实现类
 */
public class GDArCameraService extends Service {


    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
