package com.conceptglobal.pmc.camera2;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.CamcorderProfile;
import android.media.Image;
import android.media.ImageReader;
import android.media.MediaRecorder;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.util.Log;
import android.util.Size;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.Chronometer;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.RequestOptions;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.fotracker.DataInsertedService;
import com.conceptglobal.pmc.utils.CreateCopyFile;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.material.snackbar.Snackbar;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Semaphore;
import kotlin.time.DurationKt;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class CameraActivity extends AppCompatActivity implements ICameraFacing, IBitmapConnector {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final SparseIntArray ORIENTATIONS;
    private static final int REQUEST_CAMERA_PERMISSION = 1;
    private static final int REQUEST_CODE_READ_PERMISSION = 1;
    public static final int REQUEST_CODE_SETTINGS = 786;
    private static final int REQUEST_CODE_VIDEO_PERMISSION = 786;
    private static final int STATE_PICTURE_TAKEN = 4;
    private static final int STATE_PREVIEW = 0;
    private static final int STATE_WAITING_LOCK = 1;
    private static final int STATE_WAITING_NON_PRECAPTURE = 3;
    private static final int STATE_WAITING_PRECAPTURE = 2;
    private static final String TAG = "Camera2API";
    private static String fileName;
    static Uri tempImageUri;
    private ImageButton mAcceptImage;
    private Handler mBackgroundHandler;
    private HandlerThread mBackgroundThread;
    ImageButton mCamera;
    private CameraDevice mCameraDevice;
    private String mCameraId;
    CameraSettingModel mCameraSettingModel;
    private CameraCaptureSession mCaptureSession;
    private Image mCapturedImage;
    private Chronometer mChronometer;
    private ConstraintLayout mConstraintContainer;
    private ImageButton mDiscardImage;
    List<Size> mHighSpeedVideoresolutions;
    private IBitmapConnector mIBitmapConnector;
    ICameraFacing mICameraFacing;
    private ImageReader mImageReader;
    private ImageView mInternalMemoryImage;
    private MediaRecorder mMediaRecorder;
    private ImageButton mOrientation;
    private CaptureRequest mPreviewRequest;
    private CaptureRequest.Builder mPreviewRequestBuilder;
    private Size mPreviewSize;
    private ConstraintLayout mPrimayContainerImageView;
    private int mSensorOrientation;
    private ImageButton mSettings;
    private ScalingTextureView mTextureView;
    private String mVideoFileName;
    private File mVideoFolder;
    private ImageButton mVideoRecorder;
    private Size mVideoSize;
    String mVideoUpdate;
    String mPhotoImagePath = "";
    String mVideoQuality = "HIGH";
    String mVideResolution = "640*480";
    String mImageQuality = "100";
    String mImageResolution = "1920*1080";
    private String mCameraOrientation = "none";
    String CAMERA_POSITION_FRONT = "";
    String CAMERA_POSITION_BACK = "";
    private boolean mIsImageAvailable = false;
    private int mState = 0;
    private Semaphore mCameraOpenCloseLock = new Semaphore(1);
    private int MAX_PREVIEW_WIDTH = 1920;
    private int MAX_PREVIEW_HEIGHT = 1080;
    private int SCREEN_WIDTH = 0;
    private int SCREEN_HEIGHT = 0;
    private float ASPECT_RATIO_ERROR_RANGE = 0.1f;
    private boolean isVideorecording = false;
    private TextureView.SurfaceTextureListener mSurfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.6
        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            Log.d("camera2", "onSurfaceTextureavailable: w: " + i + "onSurfaceTextureavailable: h: " + i2);
            try {
                AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                builder.setMessage(i + "*" + i2 + IOUtils.LINE_SEPARATOR_UNIX).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.6.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                    }
                });
                builder.create().show();
                CameraActivity.this.openCamera(i, i2);
            } catch (Exception e) {
                AlertDialog.Builder builder2 = new AlertDialog.Builder(CameraActivity.this);
                builder2.setMessage(i + "*" + i2 + IOUtils.LINE_SEPARATOR_UNIX + e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.6.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                    }
                });
                builder2.create().show();
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            Log.d("camera2", "onSurfaceTextureavailable: w: " + i + "onSurfaceTextureavailable: h: " + i2);
        }
    };
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.12
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                CameraActivity.this.mInternalMemoryImage.setVisibility(0);
                CameraActivity.this.displayCapturedImage(intent.getByteArrayExtra("image"));
                CameraActivity.this.mDiscardImage.setVisibility(0);
                CameraActivity.this.mAcceptImage.setVisibility(0);
            } catch (Exception e) {
                AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.12.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.create().show();
            }
        }
    };
    private final CameraDevice.StateCallback mStateCallback = new CameraDevice.StateCallback() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.20
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            try {
                CameraActivity.this.mCameraOpenCloseLock.release();
                CameraActivity.this.mCameraDevice = cameraDevice;
                CameraActivity.this.mMediaRecorder = new MediaRecorder();
                if (CameraActivity.this.isVideorecording) {
                    CameraActivity.this.startRecord(0);
                    CameraActivity.this.mMediaRecorder.start();
                    CameraActivity.this.mChronometer.setBase(SystemClock.elapsedRealtime());
                    CameraActivity.this.mChronometer.setVisibility(0);
                    CameraActivity.this.mChronometer.start();
                } else {
                    CameraActivity.this.createCameraPreviewSession();
                }
            } catch (Exception e) {
                AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.20.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.create().show();
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            try {
                CameraActivity.this.mCameraOpenCloseLock.release();
                cameraDevice.close();
                CameraActivity.this.mCameraDevice = null;
            } catch (Exception e) {
                AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.20.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.create().show();
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            Log.d(CameraActivity.TAG, "onError: " + i);
            try {
                CameraActivity.this.mCameraOpenCloseLock.release();
                cameraDevice.close();
                CameraActivity.this.mCameraDevice = null;
                CameraActivity cameraActivity = CameraActivity.this;
                if (cameraActivity != null) {
                    cameraActivity.finish();
                }
            } catch (Exception e) {
                AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.20.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                    }
                });
                builder.create().show();
            }
        }
    };
    private CameraCaptureSession.CaptureCallback mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.29
        private void process(CaptureResult captureResult) {
            try {
                int i = CameraActivity.this.mState;
                if (i == 1) {
                    try {
                        Integer num = (Integer) captureResult.get(CaptureResult.CONTROL_AF_STATE);
                        if (num == null) {
                            CameraActivity.this.captureStillPicture();
                        } else {
                            if (4 != num.intValue() && 5 != num.intValue()) {
                                if (num.intValue() == 0) {
                                    CameraActivity.this.mState = 4;
                                    CameraActivity.this.captureStillPicture();
                                }
                            }
                            Integer num2 = (Integer) captureResult.get(CaptureResult.CONTROL_AE_STATE);
                            if (num2 != null && num2.intValue() != 2) {
                                CameraActivity.this.runPrecaptureSequence();
                            }
                            CameraActivity.this.mState = 4;
                            CameraActivity.this.captureStillPicture();
                        }
                        return;
                    } catch (Exception e) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                        builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.29.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                            }
                        });
                        builder.create().show();
                    }
                } else if (i != 2) {
                    if (i != 3) {
                        return;
                    }
                    try {
                        Integer num3 = (Integer) captureResult.get(CaptureResult.CONTROL_AE_STATE);
                        if (num3 == null || num3.intValue() != 5) {
                            CameraActivity.this.mState = 4;
                            CameraActivity.this.captureStillPicture();
                            return;
                        }
                        return;
                    } catch (Exception e2) {
                        AlertDialog.Builder builder2 = new AlertDialog.Builder(CameraActivity.this);
                        builder2.setMessage(e2.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.29.3
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                            }
                        });
                        builder2.create().show();
                        return;
                    }
                }
                try {
                    Integer num4 = (Integer) captureResult.get(CaptureResult.CONTROL_AE_STATE);
                    if (num4 == null || num4.intValue() == 5 || num4.intValue() == 4) {
                        CameraActivity.this.mState = 3;
                    }
                } catch (Exception e3) {
                    AlertDialog.Builder builder3 = new AlertDialog.Builder(CameraActivity.this);
                    builder3.setMessage(e3.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.29.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                        }
                    });
                    builder3.create().show();
                }
            } catch (Exception e4) {
                AlertDialog.Builder builder4 = new AlertDialog.Builder(CameraActivity.this);
                builder4.setMessage(e4.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.29.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                    }
                });
                builder4.create().show();
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
            try {
                process(captureResult);
            } catch (Exception e) {
                AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.29.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.create().show();
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            try {
                process(totalCaptureResult);
            } catch (Exception e) {
                AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.29.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.create().show();
            }
        }
    };
    private final ImageReader.OnImageAvailableListener mOnImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.40
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            try {
                if (CameraActivity.this.mIsImageAvailable) {
                    return;
                }
                CameraActivity.this.mCapturedImage = imageReader.acquireNextImage();
                if (CameraActivity.this.mCapturedImage != null) {
                    Log.d(CameraActivity.TAG, "onImageAvailable: captured image width: " + CameraActivity.this.mCapturedImage.getWidth());
                    Log.d(CameraActivity.TAG, "onImageAvailable: captured image height: " + CameraActivity.this.mCapturedImage.getHeight());
                    String[] split = CameraActivity.this.mImageResolution.split("[*]+");
                    CameraActivity.this.mBackgroundHandler.post(new ReducePixelImage(CameraActivity.this.mCapturedImage, Integer.parseInt(split[0]), Integer.parseInt(split[1]), CameraActivity.this));
                    CameraActivity.this.saveTempImageToStorage();
                }
            } catch (Exception e) {
                AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.40.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.create().show();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void saveTempImageToStorage() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void videoRecording() {
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        ORIENTATIONS = sparseIntArray;
        sparseIntArray.append(0, 90);
        sparseIntArray.append(1, 0);
        sparseIntArray.append(2, 270);
        sparseIntArray.append(3, 180);
    }

    public File setACopy(String str) {
        File file;
        File file2 = null;
        try {
            String format = new SimpleDateFormat("dd-Mhh:mm:ss.SSS").format(new Date());
            file = new File(getExternalFilesDir(null), format + "unCompressed.mp4");
        } catch (IOException e) {
            e = e;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file.getAbsolutePath());
            FileInputStream fileInputStream = new FileInputStream(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.close();
                    fileInputStream.close();
                    return file;
                }
            }
        } catch (IOException e2) {
            e = e2;
            file2 = file;
            e.printStackTrace();
            return file2;
        }
    }

    private void acceptImage() {
        this.mAcceptImage.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CameraActivity.this.getIntent().getExtras().getInt("forThreeMinuteVideo") == 3) {
                    try {
                        Intent intent = new Intent();
                        if (!CameraActivity.fileName.isEmpty()) {
                            File aCopy = CameraActivity.this.setACopy(CameraActivity.fileName);
                            intent.putExtra("fileNameThreeMinuteVideo", CameraActivity.fileName);
                            intent.putExtra("fileNameThreeMinuteVideoCopy", aCopy.getAbsolutePath());
                            intent.putExtra("fromVideothubnail", CameraActivity.this.mVideoUpdate);
                            CameraActivity.this.setResult(-1, intent);
                            CameraActivity.this.finish();
                        } else {
                            Toast.makeText(CameraActivity.this, "unable to save the file buddy", 1).show();
                        }
                        return;
                    } catch (Exception e) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                        builder.setMessage(e.getMessage()).setTitle(e.getMessage()).setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                            }
                        });
                        builder.create().show();
                        return;
                    }
                }
                try {
                    Intent intent2 = new Intent();
                    if (!CameraActivity.fileName.isEmpty()) {
                        CreateCopyFile.setACopyFile(CameraActivity.fileName, CameraActivity.this).getAbsolutePath();
                        intent2.putExtra("fileName", CameraActivity.this.mVideoFileName);
                        CameraActivity.this.setResult(-1, intent2);
                        CameraActivity.this.finish();
                    } else {
                        Toast.makeText(CameraActivity.this, "unable to save the file buddy", 1).show();
                    }
                } catch (Exception e2) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(CameraActivity.this);
                    builder2.setMessage(e2.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.1.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder2.create().show();
                }
            }
        });
    }

    private void discardImage() {
        this.mDiscardImage.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    CameraActivity.this.getFilesDir();
                    CameraActivity.this.getFilesDir().getAbsolutePath();
                    if (!CameraActivity.fileName.isEmpty()) {
                        try {
                            CameraActivity.tempImageUri = Uri.fromFile(new File(CameraActivity.this.getApplicationContext().getExternalFilesDir(null), CameraActivity.fileName));
                            CameraActivity.this.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", CameraActivity.tempImageUri));
                            CameraActivity.this.closeCamera();
                            CameraActivity.this.reOpenCamera();
                            CameraActivity.this.mInternalMemoryImage.setVisibility(8);
                            CameraActivity.this.mDiscardImage.setVisibility(8);
                            CameraActivity.this.mAcceptImage.setVisibility(8);
                            CameraActivity.this.mConstraintContainer.setVisibility(8);
                            CameraActivity.this.mIsImageAvailable = false;
                        } catch (Exception e) {
                            AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.2.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                }
                            });
                            builder.create().show();
                        }
                    }
                } catch (Exception e2) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(CameraActivity.this);
                    builder2.setMessage(e2.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.2.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder2.create().show();
                }
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        try {
            if (this.mImageQuality.isEmpty() || this.mImageResolution.isEmpty() || this.mVideoQuality.isEmpty() || this.mVideResolution.isEmpty()) {
                this.mImageQuality = "100";
                this.mImageResolution = "1920*1080";
            }
            this.mCameraSettingModel = new CameraSettingModel(this.mVideoQuality, this.mVideResolution, this.mImageQuality, this.mImageResolution);
            Log.v("video", "image" + this.mVideoQuality + IOUtils.LINE_SEPARATOR_UNIX + this.mVideResolution + IOUtils.LINE_SEPARATOR_UNIX + this.mImageQuality + IOUtils.LINE_SEPARATOR_UNIX + this.mImageResolution);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("Custom_Intent");
            LocalBroadcastManager.getInstance(this).registerReceiver(this.mReceiver, intentFilter);
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        try {
            closeCamera();
            stopBackgroundThread();
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        try {
            closeCamera();
            LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mReceiver);
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
        super.onStop();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    private void stopBackgroundThread() {
        HandlerThread handlerThread = this.mBackgroundThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            try {
                this.mBackgroundThread.join();
                this.mBackgroundThread = null;
                this.mBackgroundHandler = null;
            } catch (InterruptedException e) {
                e.printStackTrace();
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.7
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.create().show();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            startBackGroundProcess();
            reOpenCamera();
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reOpenCamera() {
        try {
            if (this.mTextureView.isAvailable()) {
                openCamera(this.mTextureView.getWidth(), this.mTextureView.getHeight());
            } else {
                this.mTextureView.setSurfaceTextureListener(this.mSurfaceTextureListener);
            }
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCamera(int i, int i2) {
        try {
            askPermission(i, i2);
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                }
            });
            builder.create().show();
        }
    }

    private void startBackGroundProcess() {
        try {
            if (this.mBackgroundThread == null) {
                Log.d("backgroundThread", "backgroundthreadInstance is created");
                HandlerThread handlerThread = new HandlerThread("CameraBackground");
                this.mBackgroundThread = handlerThread;
                handlerThread.start();
                this.mBackgroundHandler = new Handler(this.mBackgroundThread.getLooper());
            }
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.11
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_camera);
        intViews();
        initIntent();
        discardImage();
        acceptImage();
        this.mSettings.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    CameraActivity.this.startActivityForResult(new Intent(CameraActivity.this, (Class<?>) CameraSettings.class), 786);
                } catch (Exception e) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                    builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.13.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder.create().show();
                }
            }
        });
        this.mVideoRecorder.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.14
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0126 -> B:20:0x0148). Please report as a decompilation issue!!! */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = CameraActivity.this.getIntent().getExtras().getInt("forThreeMinuteVideo");
                Integer valueOf = Integer.valueOf(i);
                if (valueOf != null) {
                    valueOf.getClass();
                    if (i == 3) {
                        try {
                            if (!CameraActivity.this.isVideorecording) {
                                CameraActivity.this.isVideorecording = true;
                                CameraActivity.this.mVideoRecorder.setImageDrawable(CameraActivity.this.getResources().getDrawable(android.R.drawable.presence_video_busy));
                                CameraActivity.this.startRecord(DataInsertedService.notify);
                                CameraActivity.this.mMediaRecorder.start();
                                CameraActivity.this.mChronometer.setBase(SystemClock.elapsedRealtime() + 180000);
                                CameraActivity.this.mChronometer.setVisibility(0);
                                CameraActivity.this.mChronometer.start();
                                CameraActivity.this.mMediaRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.14.1
                                    @Override // android.media.MediaRecorder.OnInfoListener
                                    public void onInfo(MediaRecorder mediaRecorder, int i2, int i3) {
                                        if (800 == i2) {
                                            CameraActivity.this.setMediaRecorderInit(CameraActivity.this.isVideorecording, false);
                                        }
                                    }
                                });
                            } else {
                                CameraActivity cameraActivity = CameraActivity.this;
                                cameraActivity.setMediaRecorderInit(cameraActivity.isVideorecording, true);
                            }
                            return;
                        } catch (Exception e) {
                            AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.14.2
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i2) {
                                }
                            });
                            builder.create().show();
                            return;
                        }
                    }
                }
                try {
                    if (!CameraActivity.this.isVideorecording) {
                        CameraActivity.this.isVideorecording = true;
                        CameraActivity.this.mVideoRecorder.setImageDrawable(CameraActivity.this.getResources().getDrawable(android.R.drawable.presence_video_busy));
                        CameraActivity.this.startRecord(30000);
                        CameraActivity.this.mMediaRecorder.start();
                        CameraActivity.this.mChronometer.setBase(SystemClock.elapsedRealtime() + 30000);
                        CameraActivity.this.mChronometer.setVisibility(0);
                        CameraActivity.this.mChronometer.start();
                        CameraActivity.this.mMediaRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.14.3
                            @Override // android.media.MediaRecorder.OnInfoListener
                            public void onInfo(MediaRecorder mediaRecorder, int i2, int i3) {
                                if (800 == i2) {
                                    CameraActivity.this.setMediaRecorderInit(CameraActivity.this.isVideorecording, false);
                                }
                            }
                        });
                    } else {
                        CameraActivity cameraActivity2 = CameraActivity.this;
                        cameraActivity2.setMediaRecorderInit(cameraActivity2.isVideorecording, true);
                    }
                } catch (Exception e2) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(CameraActivity.this);
                    builder2.setMessage(e2.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.14.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                        }
                    });
                    builder2.create().show();
                }
            }
        });
        this.mCamera.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (!CameraActivity.this.mIsImageAvailable) {
                        CameraActivity.this.takePicture();
                    }
                    Toast.makeText(CameraActivity.this, "wait", 0).show();
                } catch (Exception e) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                    builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.15.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder.create().show();
                }
            }
        });
        this.mOrientation.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    CameraActivity.this.toggleCameraDisplayOrientation();
                } catch (Exception e) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                    builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.16.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder.create().show();
                }
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleCameraDisplayOrientation() {
        try {
            if (this.mCameraId.equals(this.mICameraFacing.getBackCameraId())) {
                this.mCameraId = this.mICameraFacing.getFrontCameraId();
                this.mICameraFacing.setCameraFrontFacing();
                closeCamera();
                reOpenCamera();
            } else if (this.mCameraId.equals(this.mICameraFacing.getFrontCameraId())) {
                this.mCameraId = this.mICameraFacing.getBackCameraId();
                this.mICameraFacing.setCameraBackFacing();
                closeCamera();
                reOpenCamera();
            }
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.17
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    private void initIntent() {
        try {
            boolean z = getIntent().getExtras().getBoolean("picture");
            Boolean valueOf = Boolean.valueOf(z);
            Integer.valueOf(getIntent().getExtras().getInt("forThreeMinuteVideo"));
            this.mPhotoImagePath = getIntent().getExtras().getString("image_path");
            String stringExtra = getIntent().getStringExtra("fromVideothubnail");
            this.mVideoUpdate = stringExtra;
            if (stringExtra != null) {
                this.mOrientation.setVisibility(8);
            }
            if (valueOf != null) {
                valueOf.getClass();
                if (z) {
                    this.mCamera.setVisibility(0);
                    this.mVideoRecorder.setVisibility(8);
                    return;
                }
            }
            this.mVideoRecorder.setVisibility(0);
            this.mCamera.setVisibility(8);
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.18
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void takePicture() {
        lockFocus();
    }

    private void lockFocus() {
        try {
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
            this.mState = 1;
            this.mCaptureSession.capture(this.mPreviewRequestBuilder.build(), this.mCaptureCallback, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.19
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    private void askPermission(int i, int i2) {
        setUpCameraOutputs(i, i2);
        try {
            ((CameraManager) getSystemService("camera")).openCamera(this.mCameraId, this.mStateCallback, this.mBackgroundHandler);
        } catch (CameraAccessException | SecurityException e) {
            e.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSnackBar(final String str, final int i) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.21
            @Override // java.lang.Runnable
            public void run() {
                Snackbar.make(this.findViewById(android.R.id.content).getRootView(), str, i).show();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0246 A[Catch: NullPointerException -> 0x0342, CameraAccessException -> 0x0364, TryCatch #2 {CameraAccessException -> 0x0364, NullPointerException -> 0x0342, blocks: (B:3:0x0014, B:5:0x001c, B:7:0x0024, B:8:0x0027, B:9:0x0097, B:11:0x009d, B:14:0x00f1, B:17:0x00f8, B:23:0x011f, B:26:0x012c, B:27:0x01e5, B:33:0x0208, B:35:0x0230, B:37:0x0246, B:38:0x0253, B:41:0x0258, B:44:0x025d, B:46:0x0287, B:47:0x02c8, B:49:0x0308, B:50:0x032b, B:54:0x031a, B:66:0x0185, B:68:0x018b), top: B:2:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0287 A[Catch: NullPointerException -> 0x0342, CameraAccessException -> 0x0364, TryCatch #2 {CameraAccessException -> 0x0364, NullPointerException -> 0x0342, blocks: (B:3:0x0014, B:5:0x001c, B:7:0x0024, B:8:0x0027, B:9:0x0097, B:11:0x009d, B:14:0x00f1, B:17:0x00f8, B:23:0x011f, B:26:0x012c, B:27:0x01e5, B:33:0x0208, B:35:0x0230, B:37:0x0246, B:38:0x0253, B:41:0x0258, B:44:0x025d, B:46:0x0287, B:47:0x02c8, B:49:0x0308, B:50:0x032b, B:54:0x031a, B:66:0x0185, B:68:0x018b), top: B:2:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0308 A[Catch: NullPointerException -> 0x0342, CameraAccessException -> 0x0364, TryCatch #2 {CameraAccessException -> 0x0364, NullPointerException -> 0x0342, blocks: (B:3:0x0014, B:5:0x001c, B:7:0x0024, B:8:0x0027, B:9:0x0097, B:11:0x009d, B:14:0x00f1, B:17:0x00f8, B:23:0x011f, B:26:0x012c, B:27:0x01e5, B:33:0x0208, B:35:0x0230, B:37:0x0246, B:38:0x0253, B:41:0x0258, B:44:0x025d, B:46:0x0287, B:47:0x02c8, B:49:0x0308, B:50:0x032b, B:54:0x031a, B:66:0x0185, B:68:0x018b), top: B:2:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x031a A[Catch: NullPointerException -> 0x0342, CameraAccessException -> 0x0364, TryCatch #2 {CameraAccessException -> 0x0364, NullPointerException -> 0x0342, blocks: (B:3:0x0014, B:5:0x001c, B:7:0x0024, B:8:0x0027, B:9:0x0097, B:11:0x009d, B:14:0x00f1, B:17:0x00f8, B:23:0x011f, B:26:0x012c, B:27:0x01e5, B:33:0x0208, B:35:0x0230, B:37:0x0246, B:38:0x0253, B:41:0x0258, B:44:0x025d, B:46:0x0287, B:47:0x02c8, B:49:0x0308, B:50:0x032b, B:54:0x031a, B:66:0x0185, B:68:0x018b), top: B:2:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x024f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setUpCameraOutputs(int r21, int r22) {
        /*
            Method dump skipped, instructions count: 905
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.camera2.CameraActivity.setUpCameraOutputs(int, int):void");
    }

    private void findCameraIds() {
        try {
            CameraManager cameraManager = (CameraManager) getSystemService("camera");
            try {
                try {
                    AlertDialog.Builder builder = new AlertDialog.Builder(this);
                    builder.setMessage("The list of available camera Id's are and ignoring the firstas it is front facing" + Arrays.asList(cameraManager.getCameraIdList()).toString() + IOUtils.LINE_SEPARATOR_UNIX).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.25
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder.create().show();
                } catch (Exception unused) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(this);
                    builder2.setMessage("error printing the resolutions").setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.26
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder2.create().show();
                }
                int i = 0;
                for (int i2 = 0; i2 < cameraManager.getCameraIdList().length; i2++) {
                    String str = cameraManager.getCameraIdList()[i2];
                    Log.d(TAG, "setCameraOrientation: CAMERA ID: " + str);
                    if (str != null) {
                        CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(cameraManager.getCameraIdList()[i2]);
                        int intValue = ((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue();
                        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                        if (intValue == 0) {
                            new ArrayList(Arrays.asList(streamConfigurationMap.getOutputSizes(256)));
                            this.mICameraFacing.setFrontFacingCamera(str);
                        }
                    }
                }
                while (true) {
                    if (i >= cameraManager.getCameraIdList().length) {
                        break;
                    }
                    String str2 = cameraManager.getCameraIdList()[i];
                    Log.d(TAG, "setCameraOrientation: CAMERA ID: " + str2);
                    if (str2 != null) {
                        CameraCharacteristics cameraCharacteristics2 = cameraManager.getCameraCharacteristics(cameraManager.getCameraIdList()[i]);
                        int intValue2 = ((Integer) cameraCharacteristics2.get(CameraCharacteristics.LENS_FACING)).intValue();
                        StreamConfigurationMap streamConfigurationMap2 = (StreamConfigurationMap) cameraCharacteristics2.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                        if (intValue2 == 1) {
                            new ArrayList(Arrays.asList(streamConfigurationMap2.getOutputSizes(256)));
                            this.mICameraFacing.setBackFacingCamera(str2);
                            break;
                        }
                    }
                    i++;
                }
                this.mICameraFacing.setCameraBackFacing();
                this.mCameraId = this.mICameraFacing.getBackCameraId();
            } catch (CameraAccessException e) {
                e.printStackTrace();
                AlertDialog.Builder builder3 = new AlertDialog.Builder(this);
                builder3.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.27
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                    }
                });
                builder3.create().show();
            }
        } catch (Exception e2) {
            AlertDialog.Builder builder4 = new AlertDialog.Builder(this);
            builder4.setMessage(e2.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.28
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                }
            });
            builder4.create().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runPrecaptureSequence() {
        try {
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
            this.mState = 2;
            this.mCaptureSession.capture(this.mPreviewRequestBuilder.build(), this.mCaptureCallback, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.30
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureStillPicture() {
        Log.d(TAG, "captureStillPicture: capturing picture.");
        try {
            CameraDevice cameraDevice = this.mCameraDevice;
            if (cameraDevice == null) {
                return;
            }
            CaptureRequest.Builder createCaptureRequest = cameraDevice.createCaptureRequest(2);
            createCaptureRequest.addTarget(this.mImageReader.getSurface());
            createCaptureRequest.set(CaptureRequest.CONTROL_AF_MODE, 4);
            createCaptureRequest.set(CaptureRequest.JPEG_ORIENTATION, Integer.valueOf(getOrientation(getWindowManager().getDefaultDisplay().getRotation())));
            CameraCaptureSession.CaptureCallback captureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.31
                @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                    CameraActivity.this.unlockFocus();
                }
            };
            this.mCaptureSession.stopRepeating();
            this.mCaptureSession.abortCaptures();
            this.mCaptureSession.capture(createCaptureRequest.build(), captureCallback, null);
        } catch (CameraAccessException e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.32
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlockFocus() {
        try {
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            this.mCaptureSession.capture(this.mPreviewRequestBuilder.build(), this.mCaptureCallback, this.mBackgroundHandler);
            this.mState = 0;
            this.mCaptureSession.setRepeatingRequest(this.mPreviewRequest, this.mCaptureCallback, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.33
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
            e.printStackTrace();
        }
    }

    private int getOrientation(int i) {
        return ((ORIENTATIONS.get(i) + this.mSensorOrientation) + 270) % 360;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createCameraPreviewSession() {
        try {
            SurfaceTexture surfaceTexture = this.mTextureView.getSurfaceTexture();
            surfaceTexture.setDefaultBufferSize(this.mPreviewSize.getWidth(), this.mPreviewSize.getHeight());
            Surface surface = new Surface(surfaceTexture);
            CaptureRequest.Builder createCaptureRequest = this.mCameraDevice.createCaptureRequest(1);
            this.mPreviewRequestBuilder = createCaptureRequest;
            createCaptureRequest.addTarget(surface);
            this.mCameraDevice.createCaptureSession(Arrays.asList(surface, this.mImageReader.getSurface()), new CameraCaptureSession.StateCallback() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.34
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    if (CameraActivity.this.mCameraDevice == null) {
                        return;
                    }
                    CameraActivity.this.mCaptureSession = cameraCaptureSession;
                    try {
                        CameraActivity.this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AF_MODE, 4);
                        CameraActivity cameraActivity = CameraActivity.this;
                        cameraActivity.mPreviewRequest = cameraActivity.mPreviewRequestBuilder.build();
                        CameraActivity.this.mCaptureSession.setRepeatingRequest(CameraActivity.this.mPreviewRequest, CameraActivity.this.mCaptureCallback, CameraActivity.this.mBackgroundHandler);
                    } catch (CameraAccessException e) {
                        e.printStackTrace();
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    CameraActivity.this.showSnackBar("Failed", 0);
                }
            }, null);
        } catch (CameraAccessException e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.35
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    public void setUpMediaRecorderForLegacy(int i) {
        try {
            getExternalFilesDir(null);
            String format = new SimpleDateFormat("dd-M-yyyy hh:mm:ss.SSS").format(new Date());
            this.mVideoFileName = new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + File.separator + ".VideoCompressor/UNCompressed Videos/", format + "temp_video.mp4").getAbsolutePath();
            this.mMediaRecorder.setVideoSource(2);
            this.mMediaRecorder.setAudioSource(1);
            this.mMediaRecorder.setMaxDuration(i);
            this.mMediaRecorder.setOutputFormat(2);
            this.mMediaRecorder.setOutputFile(this.mVideoFileName);
            this.mMediaRecorder.setVideoEncodingBitRate(DurationKt.NANOS_IN_MILLIS);
            this.mMediaRecorder.setVideoFrameRate(30);
            this.mMediaRecorder.setVideoSize(this.mVideoSize.getWidth(), this.mVideoSize.getHeight());
            this.mMediaRecorder.setVideoEncoder(2);
            this.mMediaRecorder.setAudioEncoder(3);
            this.mMediaRecorder.prepare();
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.36
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            });
            builder.create().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRecord(int i) {
        try {
            if (!this.mHighSpeedVideoresolutions.isEmpty() && this.mHighSpeedVideoresolutions != null) {
                setUpMediaRecorder(i);
                SurfaceTexture surfaceTexture = this.mTextureView.getSurfaceTexture();
                surfaceTexture.setDefaultBufferSize(this.mPreviewSize.getWidth(), this.mPreviewSize.getHeight());
                Surface surface = new Surface(surfaceTexture);
                Surface surface2 = this.mMediaRecorder.getSurface();
                CaptureRequest.Builder createCaptureRequest = this.mCameraDevice.createCaptureRequest(3);
                this.mPreviewRequestBuilder = createCaptureRequest;
                createCaptureRequest.addTarget(surface);
                this.mPreviewRequestBuilder.addTarget(surface2);
                this.mCameraDevice.createCaptureSession(Arrays.asList(surface, surface2), new CameraCaptureSession.StateCallback() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.38
                    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                    public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    }

                    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                    public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                        try {
                            cameraCaptureSession.setRepeatingRequest(CameraActivity.this.mPreviewRequestBuilder.build(), null, null);
                        } catch (CameraAccessException e) {
                            e.printStackTrace();
                        }
                    }
                }, null);
            }
            setUpMediaRecorderForLegacy(i);
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(this.mVideoSize.toString()).setTitle("Current Video Resolution is: ").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.37
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            });
            builder.create().show();
            SurfaceTexture surfaceTexture2 = this.mTextureView.getSurfaceTexture();
            surfaceTexture2.setDefaultBufferSize(this.mPreviewSize.getWidth(), this.mPreviewSize.getHeight());
            Surface surface3 = new Surface(surfaceTexture2);
            Surface surface22 = this.mMediaRecorder.getSurface();
            CaptureRequest.Builder createCaptureRequest2 = this.mCameraDevice.createCaptureRequest(3);
            this.mPreviewRequestBuilder = createCaptureRequest2;
            createCaptureRequest2.addTarget(surface3);
            this.mPreviewRequestBuilder.addTarget(surface22);
            this.mCameraDevice.createCaptureSession(Arrays.asList(surface3, surface22), new CameraCaptureSession.StateCallback() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.38
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    try {
                        cameraCaptureSession.setRepeatingRequest(CameraActivity.this.mPreviewRequestBuilder.build(), null, null);
                    } catch (CameraAccessException e) {
                        e.printStackTrace();
                    }
                }
            }, null);
        } catch (Exception e) {
            AlertDialog.Builder builder2 = new AlertDialog.Builder(this);
            builder2.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.39
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            });
            builder2.create().show();
            e.printStackTrace();
        }
    }

    public static void addImageToGallery(String str, Context context) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("_data", str);
        context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
    }

    @Override // com.conceptglobal.pmc.camera2.ICameraFacing
    public boolean isCameraFrontFacing() {
        return this.mCameraOrientation.equals(this.CAMERA_POSITION_FRONT);
    }

    @Override // com.conceptglobal.pmc.camera2.ICameraFacing
    public boolean isCameraBackFacing() {
        return this.mCameraOrientation.equals(this.CAMERA_POSITION_BACK);
    }

    @Override // com.conceptglobal.pmc.camera2.ICameraFacing
    public void setFrontFacingCamera(String str) {
        this.CAMERA_POSITION_FRONT = str;
    }

    @Override // com.conceptglobal.pmc.camera2.ICameraFacing
    public void setBackFacingCamera(String str) {
        this.CAMERA_POSITION_BACK = str;
    }

    @Override // com.conceptglobal.pmc.camera2.ICameraFacing
    public void setCameraFrontFacing() {
        this.mCameraOrientation = this.CAMERA_POSITION_FRONT;
    }

    @Override // com.conceptglobal.pmc.camera2.ICameraFacing
    public void setCameraBackFacing() {
        this.mCameraOrientation = this.CAMERA_POSITION_BACK;
    }

    @Override // com.conceptglobal.pmc.camera2.ICameraFacing
    public String getBackCameraId() {
        return this.CAMERA_POSITION_BACK;
    }

    @Override // com.conceptglobal.pmc.camera2.ICameraFacing
    public String getFrontCameraId() {
        return this.CAMERA_POSITION_FRONT;
    }

    @Override // com.conceptglobal.pmc.camera2.IBitmapConnector
    public void setReducedBitmap(final Image image) {
        this.mCapturedImage = image;
        Log.d(TAG, "saveTempImageToStorage: saving temp image to disk.");
        this.mBackgroundHandler.post(new ImageSaver(image, this.mPhotoImagePath, new ICallback() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.41
            @Override // com.conceptglobal.pmc.camera2.ICallback
            public void done(Exception exc) {
                try {
                    if (exc == null) {
                        Log.d(CameraActivity.TAG, "onImageSavedCallback: image saved!");
                        CameraActivity.this.mIsImageAvailable = true;
                        Intent intent = new Intent(CameraActivity.this, (Class<?>) ReadImage.class);
                        if (CameraActivity.fileName != null) {
                            intent.putExtra("fileNameOfImage", CameraActivity.fileName);
                        } else {
                            Toast.makeText(CameraActivity.this, "image not available in the storage", 1).show();
                        }
                        CameraActivity.this.startService(intent);
                        Image image2 = image;
                        if (image2 != null) {
                            image2.close();
                            return;
                        }
                        return;
                    }
                    Log.d(CameraActivity.TAG, "onImageSavedCallback: error saving image: " + exc.getMessage());
                    CameraActivity.this.showSnackBar("Error displaying image", -1);
                } catch (Exception e) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                    builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.41.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder.create().show();
                }
            }
        }, this, this.mImageQuality));
    }

    private static class ImageSaver implements Runnable {
        private ICallback mCallback;
        private Image mCapturedImage;
        private Context mContext;
        private String mFileImagePath;
        private final String mFilePath = "";
        private String mImageQuality;

        ImageSaver(Image image, String str, ICallback iCallback, Context context, String str2) {
            this.mFileImagePath = str;
            this.mCallback = iCallback;
            this.mContext = context;
            this.mCapturedImage = image;
            this.mImageQuality = str2;
            String unused = CameraActivity.fileName = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r5 = this;
                android.media.Image r0 = r5.mCapturedImage
                if (r0 == 0) goto L7d
                r1 = 0
                android.media.Image$Plane[] r0 = r0.getPlanes()     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                r2 = 0
                r0 = r0[r2]     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                java.nio.ByteBuffer r0 = r0.getBuffer()     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                int r3 = r0.remaining()     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                byte[] r4 = new byte[r3]     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                r0.get(r4)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeByteArray(r4, r2, r3, r1)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                java.util.Date r2 = new java.util.Date     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                r2.<init>()     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                java.text.SimpleDateFormat r3 = new java.text.SimpleDateFormat     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                java.lang.String r4 = "dd-M-yyyy hh:mm:ss.SSS"
                r3.<init>(r4)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                r3.format(r2)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                java.lang.String r3 = r5.mFileImagePath     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                r2.<init>(r3)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                java.lang.String r3 = r5.mImageQuality     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L69
                int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L69
                android.graphics.Bitmap$CompressFormat r4 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L69
                r0.compress(r4, r3, r2)     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L69
                r2.flush()     // Catch: java.io.IOException -> L45
                r2.close()     // Catch: java.io.IOException -> L45
                goto L63
            L45:
                r0 = move-exception
                goto L60
            L47:
                r0 = move-exception
                goto L4e
            L49:
                r0 = move-exception
                r2 = r1
                goto L6a
            L4c:
                r0 = move-exception
                r2 = r1
            L4e:
                r0.printStackTrace()     // Catch: java.lang.Throwable -> L69
                com.conceptglobal.pmc.camera2.ICallback r3 = r5.mCallback     // Catch: java.lang.Throwable -> L69
                r3.done(r0)     // Catch: java.lang.Throwable -> L69
                if (r2 == 0) goto L63
                r2.flush()     // Catch: java.io.IOException -> L5f
                r2.close()     // Catch: java.io.IOException -> L5f
                goto L63
            L5f:
                r0 = move-exception
            L60:
                r0.printStackTrace()
            L63:
                com.conceptglobal.pmc.camera2.ICallback r0 = r5.mCallback
                r0.done(r1)
                goto L7d
            L69:
                r0 = move-exception
            L6a:
                if (r2 == 0) goto L77
                r2.flush()     // Catch: java.io.IOException -> L73
                r2.close()     // Catch: java.io.IOException -> L73
                goto L77
            L73:
                r2 = move-exception
                r2.printStackTrace()
            L77:
                com.conceptglobal.pmc.camera2.ICallback r2 = r5.mCallback
                r2.done(r1)
                throw r0
            L7d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.camera2.CameraActivity.ImageSaver.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStillshotContainer() {
        closeCamera();
        this.mConstraintContainer.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeCamera() {
        AlertDialog.Builder builder;
        AlertDialog.Builder title;
        DialogInterface.OnClickListener onClickListener;
        try {
            try {
                this.mCameraOpenCloseLock.acquire();
                CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
                if (cameraCaptureSession != null) {
                    cameraCaptureSession.close();
                    this.mCaptureSession = null;
                }
                CameraDevice cameraDevice = this.mCameraDevice;
                if (cameraDevice != null) {
                    cameraDevice.close();
                    this.mCameraDevice = null;
                }
                ImageReader imageReader = this.mImageReader;
                if (imageReader != null) {
                    imageReader.close();
                    this.mImageReader = null;
                }
                try {
                    this.mCameraOpenCloseLock.release();
                } catch (Exception e) {
                    builder = new AlertDialog.Builder(this);
                    title = builder.setMessage(e.getMessage()).setTitle("PMC POC");
                    onClickListener = new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.43
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    };
                    title.setPositiveButton("ok", onClickListener);
                    builder.create().show();
                }
            } catch (InterruptedException e2) {
                AlertDialog.Builder builder2 = new AlertDialog.Builder(this);
                builder2.setMessage("Interrupted while trying to lock camera closing.\n" + e2.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.42
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder2.create().show();
                try {
                    this.mCameraOpenCloseLock.release();
                } catch (Exception e3) {
                    builder = new AlertDialog.Builder(this);
                    title = builder.setMessage(e3.getMessage()).setTitle("PMC POC");
                    onClickListener = new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.43
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    };
                    title.setPositiveButton("ok", onClickListener);
                    builder.create().show();
                }
            }
        } catch (Throwable th) {
            try {
                this.mCameraOpenCloseLock.release();
            } catch (Exception e4) {
                AlertDialog.Builder builder3 = new AlertDialog.Builder(this);
                builder3.setMessage(e4.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.43
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder3.create().show();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayCapturedImage(final byte[] bArr) {
        Log.d(TAG, "displayCaptureImage: displaying stillshot image.");
        try {
            runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.44
                @Override // java.lang.Runnable
                public void run() {
                    Glide.with(this).setDefaultRequestOptions(new RequestOptions().diskCacheStrategy(DiskCacheStrategy.NONE).skipMemoryCache(true)).load(bArr).into(CameraActivity.this.mInternalMemoryImage);
                    CameraActivity.this.showStillshotContainer();
                }
            });
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.45
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    private static class VideoSaver implements Runnable {
        private ICallback mCallback;
        private Context mContext;
        private final File mFile;
        private Image mImage;

        VideoSaver(Image image, File file, ICallback iCallback, Context context) {
            this.mImage = image;
            this.mFile = file;
            this.mCallback = iCallback;
            this.mContext = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r5 = this;
                android.media.Image r0 = r5.mImage
                if (r0 == 0) goto L6f
                android.media.Image$Plane[] r0 = r0.getPlanes()
                r1 = 0
                r0 = r0[r1]
                java.nio.ByteBuffer r0 = r0.getBuffer()
                int r1 = r0.remaining()
                byte[] r1 = new byte[r1]
                r0.get(r1)
                r0 = 0
                java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L3a
                java.io.File r3 = r5.mFile     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L3a
                java.lang.String r4 = "temp_image.jpg"
                r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L3a
                java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L3a
                r3.<init>(r2)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L3a
                r3.write(r1)     // Catch: java.io.IOException -> L35 java.lang.Throwable -> L59
                android.media.Image r1 = r5.mImage
                r1.close()
                r3.close()     // Catch: java.io.IOException -> L33
                goto L53
            L33:
                r1 = move-exception
                goto L50
            L35:
                r1 = move-exception
                goto L3c
            L37:
                r1 = move-exception
                r3 = r0
                goto L5a
            L3a:
                r1 = move-exception
                r3 = r0
            L3c:
                r1.printStackTrace()     // Catch: java.lang.Throwable -> L59
                com.conceptglobal.pmc.camera2.ICallback r2 = r5.mCallback     // Catch: java.lang.Throwable -> L59
                r2.done(r1)     // Catch: java.lang.Throwable -> L59
                android.media.Image r1 = r5.mImage
                r1.close()
                if (r3 == 0) goto L53
                r3.close()     // Catch: java.io.IOException -> L4f
                goto L53
            L4f:
                r1 = move-exception
            L50:
                r1.printStackTrace()
            L53:
                com.conceptglobal.pmc.camera2.ICallback r1 = r5.mCallback
                r1.done(r0)
                goto L6f
            L59:
                r1 = move-exception
            L5a:
                android.media.Image r2 = r5.mImage
                r2.close()
                if (r3 == 0) goto L69
                r3.close()     // Catch: java.io.IOException -> L65
                goto L69
            L65:
                r2 = move-exception
                r2.printStackTrace()
            L69:
                com.conceptglobal.pmc.camera2.ICallback r2 = r5.mCallback
                r2.done(r0)
                throw r1
            L6f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.camera2.CameraActivity.VideoSaver.run():void");
        }
    }

    private void setUpMediaRecorder(int i) throws IOException {
        try {
            this.mVideoFileName = this.mPhotoImagePath;
            this.mMediaRecorder.setOrientationHint(90);
            this.mMediaRecorder.setVideoSource(2);
            this.mMediaRecorder.setAudioSource(1);
            this.mMediaRecorder.setMaxDuration(i);
            if (CamcorderProfile.hasProfile(1)) {
                Log.v("apprently", "result is");
                CamcorderProfile camcorderProfile = CamcorderProfile.get(1);
                camcorderProfile.fileFormat = 2;
                String[] split = this.mVideResolution.split("[*]+");
                if (this.mCameraId.equals(this.mICameraFacing.getBackCameraId())) {
                    Size approriateVideoSize = Utility.getApproriateVideoSize(this.mHighSpeedVideoresolutions, Integer.parseInt(split[0]), Integer.parseInt(split[1]));
                    AlertDialog.Builder message = new AlertDialog.Builder(this).setTitle("resolution of your cam ").setMessage("camera resolution" + approriateVideoSize.getWidth() + "::" + approriateVideoSize.getHeight());
                    message.create();
                    message.show();
                    camcorderProfile.videoFrameWidth = approriateVideoSize.getWidth();
                    camcorderProfile.videoFrameHeight = approriateVideoSize.getHeight();
                }
                camcorderProfile.videoCodec = 2;
                camcorderProfile.audioCodec = 3;
                this.mMediaRecorder.setProfile(camcorderProfile);
            }
            this.mMediaRecorder.setOutputFile(this.mVideoFileName);
            this.mMediaRecorder.setVideoEncodingBitRate(DurationKt.NANOS_IN_MILLIS);
            this.mMediaRecorder.setVideoFrameRate(30);
            if (this.mCameraId.equals(this.mICameraFacing.getFrontCameraId())) {
                this.mMediaRecorder.setOrientationHint(270);
            }
            this.mMediaRecorder.prepare();
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.46
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            });
            builder.create().show();
        }
    }

    private void intViews() {
        this.mOrientation = (ImageButton) findViewById(R.id.switch_orientation);
        this.mDiscardImage = (ImageButton) findViewById(R.id.discard_image);
        this.mAcceptImage = (ImageButton) findViewById(R.id.accept_image);
        this.mVideoRecorder = (ImageButton) findViewById(R.id.record_video);
        this.mConstraintContainer = (ConstraintLayout) findViewById(R.id.image_container);
        this.mInternalMemoryImage = (ImageView) findViewById(R.id.mCapturedBitmap);
        this.mPrimayContainerImageView = (ConstraintLayout) findViewById(R.id.primary_container_image);
        this.mTextureView = (ScalingTextureView) findViewById(R.id.texture);
        this.mCamera = (ImageButton) findViewById(R.id.camera);
        this.mChronometer = (Chronometer) findViewById(R.id.mChronometer);
        ImageButton imageButton = (ImageButton) findViewById(R.id.settings);
        this.mSettings = imageButton;
        imageButton.setVisibility(8);
    }

    public void setMediaRecorderInit(final boolean z, final boolean z2) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.47
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (z) {
                        CameraActivity.this.mChronometer.stop();
                        CameraActivity.this.mChronometer.setVisibility(8);
                        CameraActivity.this.videoRecording();
                        if (z2) {
                            CameraActivity.this.mMediaRecorder.stop();
                        }
                        CameraActivity.this.mMediaRecorder.reset();
                        CameraActivity.this.setVideoRecording();
                        Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(CameraActivity.this.mPhotoImagePath, 1);
                        CameraActivity.this.mConstraintContainer.setVisibility(0);
                        CameraActivity.this.mInternalMemoryImage.setImageBitmap(createVideoThumbnail);
                        CameraActivity.this.mInternalMemoryImage.setVisibility(0);
                        CameraActivity.this.mDiscardImage.setVisibility(0);
                        CameraActivity.this.mAcceptImage.setVisibility(0);
                        CameraActivity.this.mVideoFileName.toCharArray();
                        String unused = CameraActivity.fileName = CameraActivity.this.mPhotoImagePath;
                        CameraActivity.this.mVideoRecorder.setImageDrawable(CameraActivity.this.getResources().getDrawable(android.R.drawable.presence_video_online));
                    }
                } catch (Exception e) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(CameraActivity.this);
                    builder.setMessage(e.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.CameraActivity.47.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder.create().show();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoRecording() {
        this.isVideorecording = false;
    }
}
