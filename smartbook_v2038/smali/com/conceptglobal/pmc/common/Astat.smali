.class public Lcom/conceptglobal/pmc/common/Astat;
.super Ljava/lang/Object;
.source "Astat.java"


# static fields
.field public static CISNAVIGATION:Ljava/lang/String; = "CSListNavigation"

.field public static CompressImageURL:[Ljava/lang/String; = null

.field public static final KEY_AGE_SELECTION:I = 0x6

.field public static final KEY_APPROVED:I = 0x1

.field public static final KEY_BANK_SELECTION:I = 0xb

.field public static final KEY_BRANCH_SELECTION:I = 0xc

.field public static final KEY_CADNUMBER_SELECTION:I = 0x10

.field public static final KEY_CASE_TYPE:I = 0x3a

.field public static final KEY_COMMODITYQUALITY_SELECTION:I = 0x8

.field public static final KEY_CROP_SELECTION:I = 0x7

.field public static KEY_CSID_NAVIGATION:Ljava/lang/String; = "csid_selection"

.field public static KEY_CS_LAB_NAVIGATION:Ljava/lang/String; = "csid_lab_selection"

.field public static final KEY_DEPOSITE_TYPE:I = 0x38

.field public static final KEY_DISTRICT_SELECTION:I = 0x3

.field public static final KEY_DO_NUMBER_SELECTION:I = 0x11

.field public static KEY_EMPTY:Ljava/lang/String; = ""

.field public static final KEY_FAILED:I = 0x3

.field public static final KEY_GUNNYQUALITY_SELECTION:I = 0x9

.field public static final KEY_INSURANCE_APPLICABLE:I = 0x36

.field public static final KEY_INSURANCE_COPY:I = 0x35

.field public static final KEY_INSUREDBY_SELECTION:I = 0xd

.field public static final KEY_INSURED_By:I = 0x3c

.field public static KEY_LAB_COMPLETION:Ljava/lang/String; = "lab_done"

.field public static final KEY_LAB_NAME:I = 0x3b

.field public static final KEY_LAB_REPORT_SELECTION:I = 0xf

.field public static final KEY_LAB_SELECTION:I = 0xa

.field public static KEY_LIST_QUERY:Ljava/lang/String; = "list_query"

.field public static KEY_LIST_SELECTION:Ljava/lang/String; = "list_selection"

.field public static KEY_MSG_VALIDATION:Ljava/lang/String; = null

.field public static KEY_NA:Ljava/lang/String; = "NA"

.field public static final KEY_NO_VARIETY:I = -0x1

.field public static final KEY_NUTRAL:I = 0x0

.field public static final KEY_PURPOSE_OF_STORAGE:I = 0x39

.field public static final KEY_REJECTED:I = 0x2

.field public static final KEY_SAMPLING_CAD_NUMBER:I = 0x3e

.field public static final KEY_SAMPLING_DO_NUMBER:I = 0x3f

.field public static final KEY_SAMPLING_DRAWNBY:I = 0x33

.field public static final KEY_SAMPLING_VOLUME:I = 0x32

.field public static final KEY_SATE_SELECTION:I = 0x2

.field public static final KEY_SCAN:I = 0xe

.field public static KEY_SCAN_WAREHOUSEID:Ljava/lang/String; = "warehouseid_scan"

.field public static final KEY_SECURITY_TABLENAME:Ljava/lang/String; = "SecurityGuardVisits"

.field public static final KEY_SHEDNAME_SELECTION:I = 0x3d

.field public static final KEY_STATES:I = 0x1

.field public static KEY_STATIC_LIST:Ljava/lang/String; = "static_list"

.field public static KEY_STATIC_LIST_TYPE:Ljava/lang/String; = "static_list_type"

.field public static final KEY_STATUS_CODE:I = 0x0

.field public static final KEY_TAKEN_BY:I = 0x34

.field public static final KEY_TALUKA_SELECTION:I = 0x4

.field public static KEY_VARIETYID:Ljava/lang/String; = "Varietyid"

.field public static KEY_VARIETYID_NAVIGATION:Ljava/lang/String; = "Varietyid_selection"

.field public static final KEY_VILLAGE_SELECTION:I = 0x5

.field public static final KEY_YES_NO:I = 0x37

.field public static LABNAVIGATION:Ljava/lang/String; = "LabListNavigation"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/conceptglobal/pmc/common/Astat;->CompressImageURL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
