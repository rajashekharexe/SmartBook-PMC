package org.apache.http.io;

import org.apache.http.HttpMessage;

/* loaded from: classes2.dex */
public interface HttpMessageWriterFactory<T extends HttpMessage> {
    HttpMessageWriter create(SessionOutputBuffer sessionOutputBuffer);
}
