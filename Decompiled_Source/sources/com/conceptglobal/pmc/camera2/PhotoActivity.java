package com.conceptglobal.pmc.camera2;

import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.Size;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import com.conceptglobal.pmc.camera2.PhotoActivity;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PhotoActivity extends AppCompatActivity {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final SparseIntArray ORIENTATIONS;
    private static final String TAG = "AndroidCameraApi";
    private CameraCaptureSession cameraCaptureSessions;
    private CameraDevice cameraDevice;
    private String cameraId;
    private CaptureRequest.Builder captureRequestBuilder;
    private File file;
    private Size imageDimension;
    private ImageReader imageReader;
    private ImageView ivPhoto;
    private LinearLayout lytBottom;
    private Handler mBackgroundHandler;
    private HandlerThread mBackgroundThread;
    private ImageView takePictureButton;
    private TextureView textureView;
    private final TextureView.SurfaceTextureListener textureListener = new TextureView.SurfaceTextureListener() { // from class: com.conceptglobal.pmc.camera2.PhotoActivity.1
        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            PhotoActivity.this.openCamera();
        }
    };
    private final CameraDevice.StateCallback stateCallback = new CameraDevice.StateCallback() { // from class: com.conceptglobal.pmc.camera2.PhotoActivity.2
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            try {
                Log.e(PhotoActivity.TAG, "onOpened");
                PLog.eCam("AndroidCameraApiCamera State Callback logic", "Camera Opened");
                PhotoActivity.this.cameraDevice = cameraDevice;
                if (PhotoActivity.this.isFinishing() || PhotoActivity.this.isDestroyed()) {
                    return;
                }
                PhotoActivity.this.createCameraPreview();
            } catch (Exception e) {
                PLog.ecam("AndroidCameraApi Camera onOpened", e);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            cameraDevice.close();
            PhotoActivity.this.cameraDevice = null;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            if (PhotoActivity.this.cameraDevice != null) {
                cameraDevice.close();
                PhotoActivity.this.cameraDevice = null;
            }
            PLog.eCam("AndroidCameraApiCamera State Callback logic", "onError");
        }
    };
    private final ImageReader.OnImageAvailableListener readerListener = new AnonymousClass3();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        ORIENTATIONS = sparseIntArray;
        sparseIntArray.append(0, 90);
        sparseIntArray.append(1, 0);
        sparseIntArray.append(2, 270);
        sparseIntArray.append(3, 180);
    }

    /* renamed from: com.conceptglobal.pmc.camera2.PhotoActivity$3, reason: invalid class name */
    class AnonymousClass3 implements ImageReader.OnImageAvailableListener {
        AnonymousClass3() {
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            Image image = null;
            try {
                try {
                    PLog.eCam("AndroidCameraApi ImageReader logic", "ImageAvailable");
                    image = imageReader.acquireLatestImage();
                    ByteBuffer buffer = image.getPlanes()[0].getBuffer();
                    byte[] bArr = new byte[buffer.capacity()];
                    buffer.get(bArr);
                    save(bArr);
                    if (PhotoActivity.this.file != null && PhotoActivity.this.file.exists()) {
                        PhotoActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.camera2.PhotoActivity$3$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                PhotoActivity.AnonymousClass3.this.m194xcbc4ad2d();
                            }
                        });
                    } else {
                        Log.e(PhotoActivity.TAG, "File is null or doesn't exist");
                        PhotoActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.camera2.PhotoActivity$3$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                PhotoActivity.AnonymousClass3.this.m195x413ed36e();
                            }
                        });
                    }
                    if (image == null) {
                        return;
                    }
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                    PLog.ecam("AndroidCameraApi ImageReader on ImageAvailable logic", e);
                    if (0 == 0) {
                        return;
                    }
                } catch (IOException e2) {
                    Log.e(PhotoActivity.TAG, "Error saving image", e2);
                    PLog.ecam("AndroidCameraApi ImageReader on ImageAvailable logic", e2);
                    if (0 == 0) {
                        return;
                    }
                } catch (Exception e3) {
                    Log.e(PhotoActivity.TAG, "Error saving image", e3);
                    PLog.ecam("AndroidCameraApi After Capture  on ImageAvailable send to photoSaveActivity", e3);
                    if (0 == 0) {
                        return;
                    }
                }
                image.close();
            } catch (Throwable th) {
                if (0 != 0) {
                    image.close();
                }
                throw th;
            }
        }

        /* renamed from: lambda$onImageAvailable$0$com-conceptglobal-pmc-camera2-PhotoActivity$3, reason: not valid java name */
        /* synthetic */ void m194xcbc4ad2d() {
            Intent intent = new Intent(PhotoActivity.this, (Class<?>) PhotoSaveActivity.class);
            intent.putExtra("imagePath", PhotoActivity.this.file.getAbsolutePath());
            PhotoActivity.this.startActivityForResult(intent, 1009);
        }

        /* renamed from: lambda$onImageAvailable$1$com-conceptglobal-pmc-camera2-PhotoActivity$3, reason: not valid java name */
        /* synthetic */ void m195x413ed36e() {
            Toast.makeText(PhotoActivity.this, "Image not saved properly", 0).show();
        }

        private void save(byte[] bArr) throws IOException {
            FileOutputStream fileOutputStream = new FileOutputStream(PhotoActivity.this.file);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private void save(byte[] bArr) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(this.file);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_photo);
        this.textureView = (TextureView) findViewById(R.id.texture);
        this.takePictureButton = (ImageView) findViewById(R.id.btn_takepicture);
        this.ivPhoto = (ImageView) findViewById(R.id.ivPhoto);
        this.textureView.setSurfaceTextureListener(this.textureListener);
        this.takePictureButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.PhotoActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhotoActivity.this.m193lambda$onCreate$1$comconceptglobalpmccamera2PhotoActivity(view);
            }
        });
    }

    /* renamed from: lambda$onCreate$1$com-conceptglobal-pmc-camera2-PhotoActivity, reason: not valid java name */
    /* synthetic */ void m193lambda$onCreate$1$comconceptglobalpmccamera2PhotoActivity(View view) {
        this.takePictureButton.setVisibility(8);
        takePicture();
        new Handler().postDelayed(new Runnable() { // from class: com.conceptglobal.pmc.camera2.PhotoActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PhotoActivity.this.m192lambda$onCreate$0$comconceptglobalpmccamera2PhotoActivity();
            }
        }, 1000L);
    }

    /* renamed from: lambda$onCreate$0$com-conceptglobal-pmc-camera2-PhotoActivity, reason: not valid java name */
    /* synthetic */ void m192lambda$onCreate$0$comconceptglobalpmccamera2PhotoActivity() {
        this.takePictureButton.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCamera() {
        CameraManager cameraManager = (CameraManager) getSystemService("camera");
        try {
            String str = cameraManager.getCameraIdList()[0];
            this.cameraId = str;
            this.imageDimension = ((StreamConfigurationMap) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(SurfaceTexture.class)[0];
            if (ActivityCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
                ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 200);
                return;
            }
            ImageReader newInstance = ImageReader.newInstance(640, 480, 256, 1);
            this.imageReader = newInstance;
            newInstance.setOnImageAvailableListener(this.readerListener, this.mBackgroundHandler);
            cameraManager.openCamera(this.cameraId, this.stateCallback, (Handler) null);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            PLog.ecam("AndroidCameraApi capturing image logic", e);
        } catch (Exception e2) {
            e2.printStackTrace();
            PLog.ecam("AndroidCameraApi capturing image logic", e2);
        }
    }

    protected void createCameraPreview() {
        try {
            SurfaceTexture surfaceTexture = this.textureView.getSurfaceTexture();
            if (surfaceTexture == null) {
                Log.w(TAG, "SurfaceTexture is null");
                return;
            }
            surfaceTexture.setDefaultBufferSize(this.imageDimension.getWidth(), this.imageDimension.getHeight());
            Surface surface = new Surface(surfaceTexture);
            CaptureRequest.Builder createCaptureRequest = this.cameraDevice.createCaptureRequest(1);
            this.captureRequestBuilder = createCaptureRequest;
            createCaptureRequest.addTarget(surface);
            this.cameraDevice.createCaptureSession(Arrays.asList(surface), new CameraCaptureSession.StateCallback() { // from class: com.conceptglobal.pmc.camera2.PhotoActivity.4
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    PLog.eCam("AndroidCameraApiCameraDevice captureSession logic", "session captured");
                    if (PhotoActivity.this.cameraDevice == null) {
                        return;
                    }
                    PhotoActivity.this.cameraCaptureSessions = cameraCaptureSession;
                    PhotoActivity.this.updatePreview();
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    Toast.makeText(PhotoActivity.this, "Preview failed", 0).show();
                }
            }, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            PLog.ecam("AndroidCameraApi CameraPreview Creation logic", e);
        }
    }

    protected void updatePreview() {
        if (this.cameraDevice == null || this.cameraCaptureSessions == null || isFinishing()) {
            PLog.eCam("AndroidCameraApi updatePreview", "cameraDevice or session is null (possibly already closed)");
            return;
        }
        try {
            this.captureRequestBuilder.set(CaptureRequest.CONTROL_MODE, 1);
            this.cameraCaptureSessions.setRepeatingRequest(this.captureRequestBuilder.build(), null, this.mBackgroundHandler);
        } catch (CameraAccessException | IllegalStateException e) {
            e.printStackTrace();
            PLog.ecam("AndroidCameraApi updatePreview error", e);
        }
        PLog.eCam("AndroidCameraApi CameraPreview Creation logic", "Camera Opened");
    }

    protected void takePicture() {
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice == null) {
            Log.e(TAG, "CameraDevice is null");
            PLog.eCam("AndroidCameraApi CameraPreview Update logic", "updatePreview error");
            return;
        }
        try {
            final CaptureRequest.Builder createCaptureRequest = cameraDevice.createCaptureRequest(2);
            createCaptureRequest.addTarget(this.imageReader.getSurface());
            createCaptureRequest.set(CaptureRequest.CONTROL_MODE, 1);
            createCaptureRequest.set(CaptureRequest.JPEG_ORIENTATION, Integer.valueOf(ORIENTATIONS.get(getWindowManager().getDefaultDisplay().getRotation())));
            this.file = new File(getIntent().getStringExtra("imagePath"));
            this.cameraDevice.createCaptureSession(Arrays.asList(this.imageReader.getSurface(), new Surface(this.textureView.getSurfaceTexture())), new CameraCaptureSession.StateCallback() { // from class: com.conceptglobal.pmc.camera2.PhotoActivity.5
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    try {
                        PLog.eCam("AndroidCameraApiCameraDevice captureSession logic", "session captured");
                        cameraCaptureSession.capture(createCaptureRequest.build(), new CameraCaptureSession.CaptureCallback() { // from class: com.conceptglobal.pmc.camera2.PhotoActivity.5.1
                            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession2, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                                super.onCaptureCompleted(cameraCaptureSession2, captureRequest, totalCaptureResult);
                                PLog.eCam("AndroidCameraApi capturelistner logic", "captured");
                                if (PhotoActivity.this.isFinishing() || PhotoActivity.this.isDestroyed()) {
                                    return;
                                }
                                PhotoActivity.this.createCameraPreview();
                            }
                        }, PhotoActivity.this.mBackgroundHandler);
                    } catch (CameraAccessException e) {
                        e.printStackTrace();
                        PLog.ecam("AndroidCameraApi CameraPreview Update logic", e);
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    Toast.makeText(PhotoActivity.this, "Capture Failed", 0).show();
                }
            }, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            PLog.ecam("AndroidCameraApi CameraPreview Update logic", e);
        }
    }

    private void startBackgroundThread() {
        HandlerThread handlerThread = new HandlerThread("CameraBackground");
        this.mBackgroundThread = handlerThread;
        handlerThread.start();
        this.mBackgroundHandler = new Handler(this.mBackgroundThread.getLooper());
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
            }
        }
    }

    private void closeCamera() {
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            cameraDevice.close();
            this.cameraDevice = null;
        }
        ImageReader imageReader = this.imageReader;
        if (imageReader != null) {
            imageReader.close();
            this.imageReader = null;
        }
        CameraCaptureSession cameraCaptureSession = this.cameraCaptureSessions;
        if (cameraCaptureSession != null) {
            try {
                cameraCaptureSession.stopRepeating();
                this.cameraCaptureSessions.abortCaptures();
                this.cameraCaptureSessions.close();
            } catch (CameraAccessException | IllegalStateException e) {
                PLog.ecam("AndroidCameraApi closeCamera error", e);
            }
            this.cameraCaptureSessions = null;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.e(TAG, "onResume");
        PLog.eCam("AndroidCameraApionResume", "Resume called");
        startBackgroundThread();
        if (this.textureView.isAvailable()) {
            openCamera();
        } else {
            this.textureView.setSurfaceTextureListener(this.textureListener);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        Log.e(TAG, "onPause");
        PLog.eCam("AndroidCameraApionPause", "Pause called");
        super.onPause();
        closeCamera();
        stopBackgroundThread();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 200 || iArr[0] == 0) {
            return;
        }
        Toast.makeText(this, "Camera permission is required", 1).show();
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1009 && i2 == -1) {
            setResult(-1, intent);
            finish();
        }
    }
}
