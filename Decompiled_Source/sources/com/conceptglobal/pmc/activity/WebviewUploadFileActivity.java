package com.conceptglobal.pmc.activity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.net.MailTo;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.messaging.Constants;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class WebviewUploadFileActivity extends AppCompatActivity {
    private static final int FILECHOOSER_RESULTCODE = 1;
    private static final int INPUT_FILE_REQUEST_CODE = 1;
    private static final String TAG = "WebviewUploadFileActivity";
    private String mCameraPhotoPath;
    private ValueCallback<Uri[]> mFilePathCallback;
    private ValueCallback<Uri> mUploadMessage;
    private WebSettings webSettings;
    private WebView webView;
    private Uri mCapturedImageURI = null;
    String from = "";

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri[] uriArr;
        if (i != 1 || this.mFilePathCallback == null) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        if (i2 == -1) {
            if (intent == null) {
                String str = this.mCameraPhotoPath;
                if (str != null) {
                    uriArr = new Uri[]{Uri.parse(str)};
                }
            } else {
                String dataString = intent.getDataString();
                if (dataString != null) {
                    uriArr = new Uri[]{Uri.parse(dataString)};
                }
            }
            this.mFilePathCallback.onReceiveValue(uriArr);
            this.mFilePathCallback = null;
        }
        uriArr = null;
        this.mFilePathCallback.onReceiveValue(uriArr);
        this.mFilePathCallback = null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_webview);
        if (getIntent().getExtras() != null) {
            this.from = getIntent().getExtras().getString(Constants.MessagePayloadKeys.FROM);
        }
        String str = this.from;
        if (str != null && str.equals("UserCreation")) {
            CustomActionBar.initActionBar(this, "Create User (" + UtilDeclarations.getApplicationVersion(this) + ")");
        } else {
            String str2 = this.from;
            if (str2 != null && str2.equals("ApproveResignations")) {
                CustomActionBar.initActionBar(this, "ApproveResignations (" + UtilDeclarations.getApplicationVersion(this) + ")");
            } else {
                String str3 = this.from;
                if (str3 != null && str3.equals("Abscond")) {
                    CustomActionBar.initActionBar(this, "Abscond (" + UtilDeclarations.getApplicationVersion(this) + ")");
                }
            }
        }
        WebView webView = (WebView) findViewById(R.id.webview);
        this.webView = webView;
        WebSettings settings = webView.getSettings();
        this.webSettings = settings;
        settings.setJavaScriptEnabled(true);
        this.webSettings.setLoadWithOverviewMode(true);
        this.webSettings.setAllowFileAccess(true);
        this.webView.setWebViewClient(new Client());
        this.webView.setWebChromeClient(new ChromeClient());
        String str4 = this.from;
        if (str4 != null && str4.equals("UserCreation")) {
            this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlUserCreation() + ConstantsPMC.getInstance().getUserId());
            return;
        }
        String str5 = this.from;
        if (str5 != null && str5.equals("ApproveResignations")) {
            this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlApproveResignations() + ConstantsPMC.getInstance().getUserId());
            return;
        }
        String str6 = this.from;
        if (str6 == null || !str6.equals("Abscond")) {
            return;
        }
        this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlAbscond() + ConstantsPMC.getInstance().getUserId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File createImageFile() throws IOException {
        return File.createTempFile("JPEG_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, ".jpg", Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES));
    }

    public class ChromeClient extends WebChromeClient {
        public ChromeClient() {
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x007f  */
        @Override // android.webkit.WebChromeClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onShowFileChooser(android.webkit.WebView r5, android.webkit.ValueCallback<android.net.Uri[]> r6, android.webkit.WebChromeClient.FileChooserParams r7) {
            /*
                r4 = this;
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity r5 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.this
                android.webkit.ValueCallback r5 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.access$000(r5)
                r7 = 0
                if (r5 == 0) goto L12
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity r5 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.this
                android.webkit.ValueCallback r5 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.access$000(r5)
                r5.onReceiveValue(r7)
            L12:
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity r5 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.this
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity.access$002(r5, r6)
                android.content.Intent r5 = new android.content.Intent
                java.lang.String r6 = "output"
                r5.<init>(r6)
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity r0 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.this
                android.content.pm.PackageManager r0 = r0.getPackageManager()
                android.content.ComponentName r0 = r5.resolveActivity(r0)
                if (r0 == 0) goto L69
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity r0 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.this     // Catch: java.io.IOException -> L3e
                java.io.File r0 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.access$100(r0)     // Catch: java.io.IOException -> L3e
                java.lang.String r1 = "PhotoPath"
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity r2 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.this     // Catch: java.io.IOException -> L3c
                java.lang.String r2 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.access$200(r2)     // Catch: java.io.IOException -> L3c
                r5.putExtra(r1, r2)     // Catch: java.io.IOException -> L3c
                goto L49
            L3c:
                r1 = move-exception
                goto L40
            L3e:
                r1 = move-exception
                r0 = r7
            L40:
                java.lang.String r2 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.access$300()
                java.lang.String r3 = "Unable to create Image File"
                android.util.Log.e(r2, r3, r1)
            L49:
                if (r0 == 0) goto L6a
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity r7 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.this
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "file:"
                r1.<init>(r2)
                java.lang.String r2 = r0.getAbsolutePath()
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity.access$202(r7, r1)
                android.net.Uri r7 = android.net.Uri.fromFile(r0)
                r5.putExtra(r6, r7)
            L69:
                r7 = r5
            L6a:
                android.content.Intent r5 = new android.content.Intent
                java.lang.String r6 = "android.intent.action.GET_CONTENT"
                r5.<init>(r6)
                java.lang.String r6 = "android.intent.category.OPENABLE"
                r5.addCategory(r6)
                java.lang.String r6 = "image/*"
                r5.setType(r6)
                r6 = 0
                r0 = 1
                if (r7 == 0) goto L84
                android.content.Intent[] r1 = new android.content.Intent[r0]
                r1[r6] = r7
                goto L86
            L84:
                android.content.Intent[] r1 = new android.content.Intent[r6]
            L86:
                android.content.Intent r6 = new android.content.Intent
                java.lang.String r7 = "android.intent.action.CHOOSER"
                r6.<init>(r7)
                java.lang.String r7 = "android.intent.extra.INTENT"
                r6.putExtra(r7, r5)
                java.lang.String r5 = "android.intent.extra.TITLE"
                java.lang.String r7 = "Image Chooser"
                r6.putExtra(r5, r7)
                java.lang.String r5 = "android.intent.extra.INITIAL_INTENTS"
                r6.putExtra(r5, r1)
                com.conceptglobal.pmc.activity.WebviewUploadFileActivity r5 = com.conceptglobal.pmc.activity.WebviewUploadFileActivity.this
                r5.startActivityForResult(r6, r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.activity.WebviewUploadFileActivity.ChromeClient.onShowFileChooser(android.webkit.WebView, android.webkit.ValueCallback, android.webkit.WebChromeClient$FileChooserParams):boolean");
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback, String str) {
            WebviewUploadFileActivity.this.mUploadMessage = valueCallback;
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "AndroidExampleFolder");
            if (!file.exists()) {
                file.mkdirs();
            }
            WebviewUploadFileActivity.this.mCapturedImageURI = Uri.fromFile(new File(file + File.separator + "IMG_" + String.valueOf(System.currentTimeMillis()) + ".jpg"));
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            intent.putExtra("output", WebviewUploadFileActivity.this.mCapturedImageURI);
            Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
            intent2.addCategory("android.intent.category.OPENABLE");
            intent2.setType("image/*");
            Intent createChooser = Intent.createChooser(intent2, "Image Chooser");
            createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", new Parcelable[]{intent});
            WebviewUploadFileActivity.this.startActivityForResult(createChooser, 1);
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback) {
            openFileChooser(valueCallback, "");
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
            openFileChooser(valueCallback, str);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && this.webView.canGoBack()) {
            this.webView.goBack();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public class Client extends WebViewClient {
        ProgressDialog progressDialog;

        public Client() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.contains(MailTo.MAILTO_SCHEME)) {
                webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            }
            webView.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (this.progressDialog == null) {
                ProgressDialog progressDialog = new ProgressDialog(WebviewUploadFileActivity.this);
                this.progressDialog = progressDialog;
                progressDialog.setMessage("Loading...");
                this.progressDialog.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            try {
                if (this.progressDialog.isShowing()) {
                    this.progressDialog.dismiss();
                    this.progressDialog = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }
}
