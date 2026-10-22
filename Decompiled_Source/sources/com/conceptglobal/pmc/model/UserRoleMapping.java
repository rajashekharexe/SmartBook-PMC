package com.conceptglobal.pmc.model;

import java.io.Serializable;

/* loaded from: classes.dex */
public class UserRoleMapping implements Serializable {
    private int FunctionId;
    private int RoleId;

    public int getRoleId() {
        return this.RoleId;
    }

    public void setRoleId(int i) {
        this.RoleId = i;
    }

    public int getFunctionId() {
        return this.FunctionId;
    }

    public void setFunctionId(int i) {
        this.FunctionId = i;
    }
}
