package com.conceptglobal.pmc.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SendAcknowledgeSV {
    private List<String> pmcsvFarmerDetails = new ArrayList();
    private List<String> pmcmarkets = new ArrayList();
    public List<String> pmcAssignmentIds = new ArrayList();
    public List<String> pmcActivityAssignmentIds = new ArrayList();
    private List<String> pmcsvmaping = new ArrayList();
    private List<String> pmcsvactivities = new ArrayList();
    private List<String> pmsvcFarmerCropMapping = new ArrayList();

    public List<String> getPmcAssignmentIds() {
        return this.pmcAssignmentIds;
    }

    public void setPmcAssignmentIds(List<String> list) {
        this.pmcAssignmentIds = list;
    }

    public List<String> getPmcActivityAssignmentIds() {
        return this.pmcActivityAssignmentIds;
    }

    public void setPmcActivityAssignmentIds(List<String> list) {
        this.pmcActivityAssignmentIds = list;
    }

    public List<String> getPmcsvFarmerDetails() {
        return this.pmcsvFarmerDetails;
    }

    public void setPmcsvFarmerDetails(List<String> list) {
        this.pmcsvFarmerDetails = list;
    }

    public List<String> getPmcmarkets() {
        return this.pmcmarkets;
    }

    public void setPmcmarkets(List<String> list) {
        this.pmcmarkets = list;
    }

    public List<String> getPmcsvmaping() {
        return this.pmcsvmaping;
    }

    public void setPmcsvmaping(List<String> list) {
        this.pmcsvmaping = list;
    }

    public List<String> getPmcsvactivities() {
        return this.pmcsvactivities;
    }

    public void setPmcsvactivities(List<String> list) {
        this.pmcsvactivities = list;
    }

    public List<String> getPmsvcFarmerCropMapping() {
        return this.pmsvcFarmerCropMapping;
    }

    public void setPmsvcFarmerCropMapping(List<String> list) {
        this.pmsvcFarmerCropMapping = list;
    }
}
