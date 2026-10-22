package com.conceptglobal.pmc.model;

import java.util.List;

/* loaded from: classes.dex */
public class ExpensesRespMOdel {
    private List<ApprovlStatusExpensesModel> ExpenseApprovalStatus;

    public List<ApprovlStatusExpensesModel> getApprovlStatusExpensesModels() {
        return this.ExpenseApprovalStatus;
    }

    public void setApprovlStatusExpensesModels(List<ApprovlStatusExpensesModel> list) {
        this.ExpenseApprovalStatus = list;
    }
}
