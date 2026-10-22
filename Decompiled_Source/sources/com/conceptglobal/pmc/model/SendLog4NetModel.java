package com.conceptglobal.pmc.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SendLog4NetModel {
    private List<Log4Net> log4net = new ArrayList();
    private List<SyncErrorLogModel> syncErrorLog = new ArrayList();

    public List<Log4Net> getLog4net() {
        return this.log4net;
    }

    public void setLog4net(List<Log4Net> list) {
        this.log4net = list;
    }

    public List<SyncErrorLogModel> getSyncErrorLog() {
        return this.syncErrorLog;
    }

    public void setSyncErrorLog(List<SyncErrorLogModel> list) {
        this.syncErrorLog = list;
    }
}
