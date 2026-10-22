package com.conceptglobal.pmc.fragments;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.imaterialdesign.widget.TextView;
import com.conceptglobal.pmc.adapter.NavDrawerAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.model.NavDrawerItem;
import com.conceptglobal.pmc.utils.CircleImageView;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FragmentDrawer extends Fragment {
    private static final int CAMERA_CAPTURE_IMAGE_REQUEST_CODE = 100;
    private static String TAG = "FragmentDrawer";
    private static int[] drawables;
    private static String[] titles;
    private NavDrawerAdapter adapter;
    private byte[] bitmapdata;
    private View containerView;
    private FragmentDrawerListener drawerListener;
    private File imageFile;
    public DrawerLayout mDrawerLayout;
    private ActionBarDrawerToggle mDrawerToggle;
    private CircleImageView profilePic;
    private String profilePicPath;
    private RecyclerView recyclerView;

    public interface ClickListener {
        void onClick(View view, int i);

        void onLongClick(View view, int i);
    }

    public interface FragmentDrawerListener {
        void onDrawerItemSelected(View view, int i);
    }

    public FragmentDrawer() {
        ConstantsPMC.getInstance();
        this.profilePicPath = ConstantsPMC.profilePicPath;
    }

    public void setDrawerListener(FragmentDrawerListener fragmentDrawerListener) {
        this.drawerListener = fragmentDrawerListener;
    }

    public List<NavDrawerItem> getData(Activity activity) {
        ArrayList arrayList = new ArrayList();
        TypedArray obtainTypedArray = activity.getResources().obtainTypedArray(R.array.nav_drawer_icons);
        for (int i = 0; i < titles.length; i++) {
            NavDrawerItem navDrawerItem = new NavDrawerItem();
            navDrawerItem.setTitle(GetDataFromDB.getInstance().getValue(titles[i]));
            navDrawerItem.setDrawable(obtainTypedArray.getResourceId(i, -1));
            arrayList.add(navDrawerItem);
        }
        obtainTypedArray.recycle();
        return arrayList;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        titles = getActivity().getResources().getStringArray(R.array.nav_drawer_labels);
        drawables = getActivity().getResources().getIntArray(R.array.nav_drawer_icons);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_nav_drawer, viewGroup, false);
        ((RelativeLayout) inflate.findViewById(R.id.nav_header_container)).setOnClickListener(null);
        this.profilePic = (CircleImageView) inflate.findViewById(R.id.profile_image);
        File file = new File(this.profilePicPath);
        this.imageFile = file;
        if (file.exists()) {
            this.profilePic.setImageBitmap(BitmapFactory.decodeFile(this.profilePicPath));
        }
        this.profilePic.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FragmentDrawer.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                Uri uriForFile = FileProvider.getUriForFile(FragmentDrawer.this.getActivity(), "com.conceptglobal.pmcdeepakfertilizers.provider", FragmentDrawer.this.imageFile);
                intent.putExtra("output", uriForFile);
                if (Build.VERSION.SDK_INT <= 21) {
                    intent.setClipData(ClipData.newRawUri("", uriForFile));
                    intent.addFlags(3);
                }
                intent.putExtra("output", uriForFile);
                FragmentDrawer.this.startActivityForResult(intent, 100);
            }
        });
        try {
            ((TextView) inflate.findViewById(R.id.txtusername)).setText(GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getUserName()));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
        this.recyclerView = (RecyclerView) inflate.findViewById(R.id.drawerList);
        setAdapter();
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.recyclerView.addOnItemTouchListener(new RecyclerTouchListener(getActivity(), this.recyclerView, new ClickListener() { // from class: com.conceptglobal.pmc.fragments.FragmentDrawer.2
            @Override // com.conceptglobal.pmc.fragments.FragmentDrawer.ClickListener
            public void onLongClick(View view, int i) {
            }

            @Override // com.conceptglobal.pmc.fragments.FragmentDrawer.ClickListener
            public void onClick(View view, int i) {
                FragmentDrawer.this.drawerListener.onDrawerItemSelected(view, i);
                FragmentDrawer.this.mDrawerLayout.closeDrawer(FragmentDrawer.this.containerView);
            }
        }));
        return inflate;
    }

    public void setAdapter() {
        NavDrawerAdapter navDrawerAdapter = new NavDrawerAdapter(getActivity(), getData(getActivity()));
        this.adapter = navDrawerAdapter;
        this.recyclerView.setAdapter(navDrawerAdapter);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 100 && this.imageFile.exists()) {
            new ImageCompress(this.profilePicPath).execute(new String[0]);
        }
    }

    public void setUp(int i, DrawerLayout drawerLayout, final Toolbar toolbar) {
        this.containerView = getActivity().findViewById(i);
        this.mDrawerLayout = drawerLayout;
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(getActivity(), drawerLayout, toolbar, R.string.drawer_open, R.string.drawer_close) { // from class: com.conceptglobal.pmc.fragments.FragmentDrawer.3
            @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerOpened(View view) {
                super.onDrawerOpened(view);
                FragmentDrawer.this.getActivity().invalidateOptionsMenu();
            }

            @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerClosed(View view) {
                super.onDrawerClosed(view);
                FragmentDrawer.this.getActivity().invalidateOptionsMenu();
            }

            @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerSlide(View view, float f) {
                super.onDrawerSlide(view, f);
                toolbar.setAlpha(1.0f - (f / 2.0f));
            }
        };
        this.mDrawerToggle = actionBarDrawerToggle;
        this.mDrawerLayout.setDrawerListener(actionBarDrawerToggle);
        this.mDrawerLayout.post(new Runnable() { // from class: com.conceptglobal.pmc.fragments.FragmentDrawer.4
            @Override // java.lang.Runnable
            public void run() {
                FragmentDrawer.this.mDrawerToggle.syncState();
            }
        });
    }

    static class RecyclerTouchListener implements RecyclerView.OnItemTouchListener {
        private ClickListener clickListener;
        private GestureDetector gestureDetector;

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        }

        public RecyclerTouchListener(Context context, final RecyclerView recyclerView, final ClickListener clickListener) {
            this.clickListener = clickListener;
            this.gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.conceptglobal.pmc.fragments.FragmentDrawer.RecyclerTouchListener.1
                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public boolean onSingleTapUp(MotionEvent motionEvent) {
                    return true;
                }

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent motionEvent) {
                    ClickListener clickListener2;
                    View findChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
                    if (findChildViewUnder == null || (clickListener2 = clickListener) == null) {
                        return;
                    }
                    clickListener2.onLongClick(findChildViewUnder, recyclerView.getChildPosition(findChildViewUnder));
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            View findChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
            if (findChildViewUnder == null || this.clickListener == null || !this.gestureDetector.onTouchEvent(motionEvent)) {
                return false;
            }
            this.clickListener.onClick(findChildViewUnder, recyclerView.getChildPosition(findChildViewUnder));
            return false;
        }
    }

    private class ImageCompress extends AsyncTask<String, Void, String> {
        private String path;

        public ImageCompress(String str) {
            this.path = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            String compressImage = FragmentDrawer.this.compressImage(this.path);
            try {
                InsertDataIntoDB.insertProfileImage(compressImage);
            } catch (Exception e) {
                PLog.e(FragmentDrawer.TAG, e);
            }
            return compressImage;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((ImageCompress) str);
            FragmentDrawer.this.profilePic.setImageBitmap(BitmapFactory.decodeFile(str));
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x007e -> B:10:0x007e). Please report as a decompilation issue!!! */
    public String compressImage(String str) {
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap bitmap3;
        Matrix matrix;
        String realPathFromURI = getRealPathFromURI(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap decodeFile = BitmapFactory.decodeFile(realPathFromURI, options);
        int i = options.outHeight;
        int i2 = options.outWidth;
        float f = i2 / i;
        float f2 = i;
        if (f2 > 616.0f || i2 > 412.0f) {
            if (f < 0.66883117f) {
                i2 = (int) ((616.0f / f2) * i2);
                i = (int) 616.0f;
            } else {
                i = f > 0.66883117f ? (int) ((412.0f / i2) * f2) : (int) 616.0f;
                i2 = (int) 412.0f;
            }
        }
        options.inSampleSize = calculateInSampleSize(options, i2, i);
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inTempStorage = new byte[16384];
        try {
            decodeFile = BitmapFactory.decodeFile(realPathFromURI, options);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                decodeFile.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                this.bitmapdata = byteArrayOutputStream.toByteArray();
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(TAG, e);
            }
        } catch (OutOfMemoryError unused) {
        }
        try {
            bitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError e2) {
            PLog.e(TAG, e2);
            bitmap = null;
        }
        Bitmap bitmap4 = bitmap;
        float f3 = i2;
        float f4 = f3 / options.outWidth;
        float f5 = i;
        float f6 = f5 / options.outHeight;
        float f7 = f3 / 2.0f;
        float f8 = f5 / 2.0f;
        Matrix matrix2 = new Matrix();
        matrix2.setScale(f4, f6, f7, f8);
        Canvas canvas = new Canvas(bitmap4);
        canvas.setMatrix(matrix2);
        canvas.drawBitmap(decodeFile, f7 - (decodeFile.getWidth() / 2), f8 - (decodeFile.getHeight() / 2), new Paint(2));
        try {
            int attributeInt = new ExifInterface(realPathFromURI).getAttributeInt("Orientation", 0);
            Log.d("EXIF", "Exif: " + attributeInt);
            matrix = new Matrix();
            if (attributeInt == 6) {
                matrix.postRotate(90.0f);
                Log.d("EXIF", "Exif: " + attributeInt);
            } else if (attributeInt == 3) {
                matrix.postRotate(180.0f);
                Log.d("EXIF", "Exif: " + attributeInt);
            } else if (attributeInt == 8) {
                matrix.postRotate(270.0f);
                Log.d("EXIF", "Exif: " + attributeInt);
            }
            bitmap2 = bitmap4;
        } catch (IOException e3) {
            e = e3;
            bitmap2 = bitmap4;
        }
        try {
            bitmap3 = Bitmap.createBitmap(bitmap4, 0, 0, bitmap4.getWidth(), bitmap4.getHeight(), matrix, true);
        } catch (IOException e4) {
            e = e4;
            PLog.e(TAG, e);
            bitmap3 = bitmap2;
            bitmap3.compress(Bitmap.CompressFormat.JPEG, 80, new FileOutputStream(realPathFromURI));
            int sizeOf = sizeOf(bitmap3);
            System.out.println("size is:::" + sizeOf);
            return realPathFromURI;
        }
        try {
            bitmap3.compress(Bitmap.CompressFormat.JPEG, 80, new FileOutputStream(realPathFromURI));
            int sizeOf2 = sizeOf(bitmap3);
            System.out.println("size is:::" + sizeOf2);
        } catch (FileNotFoundException e5) {
            PLog.e(TAG, e5);
        }
        return realPathFromURI;
    }

    protected int sizeOf(Bitmap bitmap) {
        return bitmap.getByteCount();
    }

    private String getRealPathFromURI(String str) {
        Uri parse = Uri.parse(str);
        Cursor query = getContext().getContentResolver().query(parse, null, null, null, null);
        if (query == null) {
            return parse.getPath();
        }
        query.moveToFirst();
        return query.getString(query.getColumnIndex("_data"));
    }

    public int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int round;
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 > i2 || i4 > i) {
            round = Math.round(i3 / i2);
            int round2 = Math.round(i4 / i);
            if (round >= round2) {
                round = round2;
            }
        } else {
            round = 1;
        }
        while ((i4 * i3) / (round * round) > i * i2 * 2) {
            round++;
        }
        return round;
    }
}
