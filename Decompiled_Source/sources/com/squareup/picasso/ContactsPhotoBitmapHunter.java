package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.ContactsContract;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
class ContactsPhotoBitmapHunter extends BitmapHunter {
    private static final int ID_CONTACT = 3;
    private static final int ID_DISPLAY_PHOTO = 4;
    private static final int ID_LOOKUP = 1;
    private static final int ID_THUMBNAIL = 2;
    private static final UriMatcher matcher;
    final Context context;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        matcher = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    ContactsPhotoBitmapHunter(Context context, Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action) {
        super(picasso, dispatcher, cache, stats, action);
        this.context = context;
    }

    @Override // com.squareup.picasso.BitmapHunter
    Bitmap decode(Request request) throws IOException {
        InputStream inputStream;
        try {
            inputStream = getInputStream();
            try {
                Bitmap decodeStream = decodeStream(inputStream, request);
                Utils.closeQuietly(inputStream);
                return decodeStream;
            } catch (Throwable th) {
                th = th;
                Utils.closeQuietly(inputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    @Override // com.squareup.picasso.BitmapHunter
    Picasso.LoadedFrom getLoadedFrom() {
        return Picasso.LoadedFrom.DISK;
    }

    private InputStream getInputStream() throws IOException {
        ContentResolver contentResolver = this.context.getContentResolver();
        Uri uri = getData().uri;
        int match = matcher.match(uri);
        if (match == 1) {
            uri = ContactsContract.Contacts.lookupContact(contentResolver, uri);
            if (uri == null) {
                return null;
            }
        } else {
            if (match != 2) {
                if (match != 3) {
                    if (match != 4) {
                        throw new IllegalStateException("Invalid uri: " + uri);
                    }
                }
            }
            return contentResolver.openInputStream(uri);
        }
        return ContactPhotoStreamIcs.get(contentResolver, uri);
    }

    private Bitmap decodeStream(InputStream inputStream, Request request) throws IOException {
        if (inputStream == null) {
            return null;
        }
        BitmapFactory.Options createBitmapOptions = createBitmapOptions(request);
        if (request.hasSize()) {
            createBitmapOptions.inJustDecodeBounds = true;
            InputStream inputStream2 = getInputStream();
            try {
                BitmapFactory.decodeStream(inputStream2, null, createBitmapOptions);
                Utils.closeQuietly(inputStream2);
                calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions);
            } catch (Throwable th) {
                Utils.closeQuietly(inputStream2);
                throw th;
            }
        }
        return BitmapFactory.decodeStream(inputStream, null, createBitmapOptions);
    }

    private static class ContactPhotoStreamIcs {
        private ContactPhotoStreamIcs() {
        }

        static InputStream get(ContentResolver contentResolver, Uri uri) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
        }
    }
}
