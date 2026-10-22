.class public Lcom/conceptglobal/pmc/fotracker/model/UserRoleMapping;
.super Ljava/lang/Object;
.source "UserRoleMapping.java"


# instance fields
.field private FunctionId:I

.field private RoleId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFunctionId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/UserRoleMapping;->FunctionId:I

    return v0
.end method

.method public getRoleId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/UserRoleMapping;->RoleId:I

    return v0
.end method

.method public setFunctionId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/UserRoleMapping;->FunctionId:I

    return-void
.end method

.method public setRoleId(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/UserRoleMapping;->RoleId:I

    return-void
.end method
