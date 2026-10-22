package com.conceptglobal.pmc.fotracker.model;

import com.conceptglobal.pmc.model.Log4Trace;
import com.conceptglobal.pmc.promotions.models.ContentFaourites;
import com.conceptglobal.pmc.promotions.models.UsageDetails;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SendFarmerDetailsModel {
    private List<FoTrackerHeader> foTrackerHeader = new ArrayList();
    private List<FoTrackerDetails> foTrackerDetails = new ArrayList();
    private List<ErrorLogger> errorLogger = new ArrayList();
    private List<UsageDetails> usageDetails = new ArrayList();
    private List<ContentFaourites> favouriteDetails = new ArrayList();
    private List<Log4Trace> Log4Trace = new ArrayList();

    public List<Log4Trace> getLog4Trace() {
        return this.Log4Trace;
    }

    public void setLog4Trace(List<Log4Trace> list) {
        this.Log4Trace = list;
    }

    public List<FoTrackerHeader> getFoTrackerHeader() {
        return this.foTrackerHeader;
    }

    public void setFoTrackerHeader(List<FoTrackerHeader> list) {
        this.foTrackerHeader = list;
    }

    public List<FoTrackerDetails> getFoTrackerDetails() {
        return this.foTrackerDetails;
    }

    public void setFoTrackerDetails(List<FoTrackerDetails> list) {
        this.foTrackerDetails = list;
    }

    public List<UsageDetails> getUsageDetails() {
        return this.usageDetails;
    }

    public void setUsageDetails(List<UsageDetails> list) {
        this.usageDetails = list;
    }

    public List<ContentFaourites> getFavouriteDetails() {
        return this.favouriteDetails;
    }

    public void setFavouriteDetails(List<ContentFaourites> list) {
        this.favouriteDetails = list;
    }

    public List<FoTrackerHeader> getFoTrackerHeaderModel() {
        return this.foTrackerHeader;
    }

    public void setFoTrackerHeaderModel(List<FoTrackerHeader> list) {
        this.foTrackerHeader = list;
    }

    public List<FoTrackerDetails> getFoTrackerDetailsModel() {
        return this.foTrackerDetails;
    }

    public void setFoTrackerDetailsModel(List<FoTrackerDetails> list) {
        this.foTrackerDetails = list;
    }

    public List<ErrorLogger> getErrorLogger() {
        return this.errorLogger;
    }

    public void setErrorLogger(List<ErrorLogger> list) {
        this.errorLogger = list;
    }
}
