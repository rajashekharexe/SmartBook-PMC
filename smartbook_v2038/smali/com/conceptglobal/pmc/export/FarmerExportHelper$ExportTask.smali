.class Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;
.super Landroid/os/AsyncTask;
.source "FarmerExportHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/export/FarmerExportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private errorMessage:Ljava/lang/String;

.field private final isPdf:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private totalExported:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    .line 115
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->errorMessage:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->totalExported:I

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->activity:Landroid/app/Activity;

    .line 117
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->isPdf:Z

    .line 118
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .registers 8

    .line 133
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->loadFarmerData(Landroid/content/Context;)Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;

    move-result-object v0

    .line 134
    if-nez v0, :cond_e

    .line 135
    const-string v0, "Failed to open farmer database."

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->errorMessage:Ljava/lang/String;

    .line 136
    return-object p1

    .line 139
    :cond_e
    iget v1, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->totalFarmers:I

    iput v1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->totalExported:I

    .line 140
    iget-object v1, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 141
    const-string v0, "No farmer records found in database."

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->errorMessage:Ljava/lang/String;

    .line 142
    return-object p1

    .line 145
    :cond_27
    iget-object v1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->activity:Landroid/app/Activity;

    # invokes: Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getExportDirectory(Landroid/content/Context;)Ljava/io/File;
    invoke-static {v1}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->access$000(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_53

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_53

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->errorMessage:Ljava/lang/String;

    .line 148
    return-object p1

    .line 151
    :cond_53
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 152
    iget-boolean v3, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->isPdf:Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_69} :catch_af

    const-string v4, "PMC_Farmer_Directory_"

    if-eqz v3, :cond_8f

    .line 153
    :try_start_6d
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".pdf"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v1, v0, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->generatePdf(Landroid/content/Context;Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;Ljava/io/File;)V

    .line 155
    return-object v3

    .line 157
    :cond_8f
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".xlsx"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->generateExcel(Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;Ljava/io/File;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_ae} :catch_af

    .line 159
    return-object v3

    .line 161
    :catch_af
    move-exception v0

    .line 162
    const-string v1, "FarmerExportHelper"

    const-string v2, "Export error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->errorMessage:Ljava/lang/String;

    .line 164
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 108
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 171
    iget-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 174
    :cond_f
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->totalExported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " farmers successfully!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    iget-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->isPdf:Z

    if-eqz v1, :cond_45

    const-string v1, "application/pdf"

    goto :goto_47

    :cond_45
    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    :goto_47
    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->shareFile(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_5c

    .line 178
    :cond_4b
    iget-object p1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->errorMessage:Ljava/lang/String;

    if-eqz p1, :cond_50

    goto :goto_52

    :cond_50
    const-string p1, "Export failed. Please try again."

    .line 179
    :goto_52
    iget-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 181
    :goto_5c
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 108
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .line 122
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 123
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 124
    const-string v1, "Exporting Directory"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extracting database and building "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->isPdf:Z

    if-eqz v2, :cond_25

    const-string v2, "PDF..."

    goto :goto_27

    :cond_25
    const-string v2, "Excel file..."

    :goto_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 127
    iget-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 128
    return-void
.end method
