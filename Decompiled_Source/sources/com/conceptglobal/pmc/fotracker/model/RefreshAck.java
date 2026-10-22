package com.conceptglobal.pmc.fotracker.model;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class RefreshAck {
    private ArrayList<String> usageDetails = new ArrayList<>();
    private ArrayList<String> foTrackerDetails = new ArrayList<>();
    private ArrayList<String> errorLogger = new ArrayList<>();
    private ArrayList<String> foTrackerHeader = new ArrayList<>();
    private ArrayList<String> Log4Trace = new ArrayList<>();

    public ArrayList<String> getLog4Trace() {
        return this.Log4Trace;
    }

    public void setLog4Trace(ArrayList<String> arrayList) {
        this.Log4Trace = arrayList;
    }

    public ArrayList<String> getFoTrackerDetails() {
        return this.foTrackerDetails;
    }

    public void setFoTrackerDetails(ArrayList<String> arrayList) {
        this.foTrackerDetails = arrayList;
    }

    public ArrayList<String> getErrorLogger() {
        return this.errorLogger;
    }

    public void setErrorLogger(ArrayList<String> arrayList) {
        this.errorLogger = arrayList;
    }

    public ArrayList<String> getFoTrackerHeader() {
        return this.foTrackerHeader;
    }

    public void setFoTrackerHeader(ArrayList<String> arrayList) {
        this.foTrackerHeader = arrayList;
    }

    public ArrayList<String> getUsageDetails() {
        return this.usageDetails;
    }

    public void setUsageDetails(ArrayList<String> arrayList) {
        this.usageDetails = arrayList;
    }
}
