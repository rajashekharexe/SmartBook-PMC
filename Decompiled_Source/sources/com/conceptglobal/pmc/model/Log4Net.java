package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class Log4Net {
    private String date;
    private String exception;
    private String exceptionAt;
    private int id;
    private String level;
    private String logger;
    private String message;
    private String thread;
    private int userId;

    public String getDate() {
        return this.date;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public String getThread() {
        return this.thread;
    }

    public void setThread(String str) {
        this.thread = str;
    }

    public String getLevel() {
        return this.level;
    }

    public void setLevel(String str) {
        this.level = str;
    }

    public String getLogger() {
        return this.logger;
    }

    public void setLogger(String str) {
        this.logger = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getException() {
        return this.exception;
    }

    public void setException(String str) {
        this.exception = str;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setUserId(int i) {
        this.userId = i;
    }

    public String getExceptionAt() {
        return this.exceptionAt;
    }

    public void setExceptionAt(String str) {
        this.exceptionAt = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }
}
