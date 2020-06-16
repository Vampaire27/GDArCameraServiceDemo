// IGDCameraStateCallBack.aidl
package com.autonavi.amapauto.gdarcameraservice;

import android.os.ParcelFileDescriptor;
/**
 * 高德AR导航AIDL标准协议接口
 *
 * 摄像头状态回调接口
 */
interface IGDCameraStateCallBack{
    /**
     * 摄像头连接回调
     */
    void onConnected();

    /**
     * 摄像头断开回调
     */
    void onDisconnected();

    /**
     * 摄像头开启回调
     * @param parcelFileDescriptor 文件描述器（共享内存）
     * @param imageSize            图片数据大小
     * @param imageWidth           图片宽度
     * @param imageHeight          图片高度
     * @param memoryfileName       共享文件名
     */
    void onOpened(in ParcelFileDescriptor parcelFileDescriptor, int imageSize, int imageWidth, int imageHeight, String memoryfileName);

    /**
     * 摄像头关闭回调
     * @param code     关闭原因编码
     * @param message  对应提示信息
     */
    void onClosed(int code, String message);

    /**
     * 摄像头相关异常回调
     * @param code     异常原因编码
     * @param message  对应提示信息
     */
    void onError(int code, String message);

}