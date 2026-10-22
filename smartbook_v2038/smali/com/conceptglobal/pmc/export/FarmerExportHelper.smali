.class public Lcom/conceptglobal/pmc/export/FarmerExportHelper;
.super Ljava/lang/Object;
.source "FarmerExportHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;,
        Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;,
        Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;,
        Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FarmerExportHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getExportDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static appendNumCell(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .registers 5

    .line 1010
    const-string v0, "      <c r=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    if-lez p3, :cond_1e

    const-string p1, " s=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    :cond_1e
    const-string p1, "><v>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</v></c>\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    return-void
.end method

.method private static appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 1004
    const-string v0, "      <c r=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" t=\"inlineStr\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    if-lez p3, :cond_20

    const-string p1, " s=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_20
    const-string p1, "><is><t>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</t></is></c>\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    return-void
.end method

.method private static cleanStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 543
    if-eqz p0, :cond_14

    const-string v0, "null"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_14

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_14
    :goto_14
    const-string p0, ""

    :goto_16
    return-object p0
.end method

.method private static closeAppDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .line 353
    if-nez p0, :cond_3

    return-void

    .line 355
    :cond_3
    :try_start_3
    const-string v0, "com.conceptglobal.pmc.database.DataBaseHandler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 356
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 357
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_2e

    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "closeDatabase"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 360
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2d

    .line 361
    return-void

    .line 363
    :catchall_2d
    move-exception v0

    :cond_2e
    nop

    .line 366
    :try_start_2f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 367
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_3a

    .line 369
    :catchall_39
    move-exception p0

    :cond_3a
    :goto_3a
    nop

    .line 370
    return-void
.end method

.method private static decryptSafe(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 207
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 208
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_53

    .line 211
    :cond_18
    :try_start_18
    const-string v0, "com.conceptglobal.pmc.utils.Encryption"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 212
    const-string v1, "decrypt"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 213
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "Empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_50

    return-object p0

    .line 217
    :catchall_50
    move-exception v0

    :cond_51
    nop

    .line 218
    return-object p0

    .line 209
    :cond_53
    :goto_53
    return-object v0
.end method

.method private static drawPageFooter(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 6

    .line 809
    const v0, -0x616162

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 810
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 811
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 812
    const-string v0, "PMC Smartbook - Deepak Fertilisers and Petrochemicals Corp."

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v2, 0x444d0000    # 820.0f

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 814
    const v0, 0x440bc000    # 559.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p2, v0, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 815
    return-void
.end method

.method private static drawTableHeader(Landroid/graphics/Canvas;Landroid/graphics/Paint;I[I[Ljava/lang/String;)I
    .registers 14

    .line 794
    const v0, -0xffb479

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 795
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-float v3, v1

    int-to-float v4, p2

    array-length v1, p3

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    aget v1, p3, v1

    int-to-float v5, v1

    add-int/lit8 v1, p2, 0x16

    int-to-float v6, v1

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 797
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 798
    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 799
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 801
    nop

    :goto_2c
    array-length v2, p4

    if-ge v0, v2, :cond_3f

    .line 802
    aget-object v2, p4, v0

    aget v3, p3, v0

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    add-int/lit8 v4, p2, 0xf

    int-to-float v4, v4

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 805
    :cond_3f
    return v1
.end method

.method private static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1016
    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 1017
    :cond_5
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1018
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1019
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1020
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1021
    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1017
    return-object p0
.end method

.method private static findFileRecursive(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .registers 8

    .line 337
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_37

    if-gez p2, :cond_c

    goto :goto_37

    .line 338
    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    .line 340
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 341
    if-eqz p0, :cond_36

    .line 342
    array-length v1, p0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_36

    aget-object v3, p0, v2

    .line 343
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 344
    add-int/lit8 v4, p2, -0x1

    invoke-static {v3, p1, v4}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->findFileRecursive(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 345
    if-eqz v3, :cond_33

    return-object v3

    .line 342
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 349
    :cond_36
    return-object v0

    .line 337
    :cond_37
    :goto_37
    return-object v0
.end method

.method public static generateExcel(Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;Ljava/io/File;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 824
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 827
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "[Content_Types].xml"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 828
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<Types xmlns=\"http://schemas.openxmlformats.org/package/2006/content-types\">\n  <Default Extension=\"rels\" ContentType=\"application/vnd.openxmlformats-package.relationships+xml\"/>\n  <Default Extension=\"xml\" ContentType=\"application/xml\"/>\n  <Override PartName=\"/xl/workbook.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml\"/>\n  <Override PartName=\"/xl/styles.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml\"/>\n  <Override PartName=\"/xl/worksheets/sheet1.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml\"/>\n  <Override PartName=\"/xl/worksheets/sheet2.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml\"/>\n  <Override PartName=\"/xl/worksheets/sheet3.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml\"/>\n</Types>"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->writeZipString(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 839
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 842
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "_rels/.rels"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 843
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<Relationships xmlns=\"http://schemas.openxmlformats.org/package/2006/relationships\">\n  <Relationship Id=\"rId1\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument\" Target=\"xl/workbook.xml\"/>\n</Relationships>"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->writeZipString(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 848
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 851
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "xl/_rels/workbook.xml.rels"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 852
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<Relationships xmlns=\"http://schemas.openxmlformats.org/package/2006/relationships\">\n  <Relationship Id=\"rId1\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet\" Target=\"worksheets/sheet1.xml\"/>\n  <Relationship Id=\"rId2\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet\" Target=\"worksheets/sheet2.xml\"/>\n  <Relationship Id=\"rId3\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet\" Target=\"worksheets/sheet3.xml\"/>\n  <Relationship Id=\"rId4\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles\" Target=\"styles.xml\"/>\n</Relationships>"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->writeZipString(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 860
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 863
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "xl/workbook.xml"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 864
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<workbook xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\" xmlns:r=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships\">\n  <sheets>\n    <sheet name=\"Village Summary\" sheetId=\"1\" r:id=\"rId1\"/>\n    <sheet name=\"Saarthie Farmers\" sheetId=\"2\" r:id=\"rId2\"/>\n    <sheet name=\"Normal Farmers\" sheetId=\"3\" r:id=\"rId3\"/>\n  </sheets>\n</workbook>"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->writeZipString(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 873
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 876
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "xl/styles.xml"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 877
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<styleSheet xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\">\n  <fonts count=\"2\">\n    <font><sz val=\"11\"/><color rgb=\"FF1A1A1A\"/><name val=\"Calibri\"/></font>\n    <font><b/><sz val=\"11\"/><color rgb=\"FFFFFFFF\"/><name val=\"Calibri\"/></font>\n  </fonts>\n  <fills count=\"3\">\n    <fill><patternFill patternType=\"none\"/></fill>\n    <fill><patternFill patternType=\"gray125\"/></fill>\n    <fill><patternFill patternType=\"solid\"><fgColor rgb=\"FF004B87\"/></patternFill></fill>\n  </fills>\n  <borders count=\"2\">\n    <border><left/><right/><top/><bottom/></border>\n    <border><left style=\"thin\"><color rgb=\"FFD1D5DB\"/></left><right style=\"thin\"><color rgb=\"FFD1D5DB\"/></right><top style=\"thin\"><color rgb=\"FFD1D5DB\"/></top><bottom style=\"thin\"><color rgb=\"FFD1D5DB\"/></bottom></border>\n  </borders>\n  <cellStyleXfs count=\"1\">\n    <xf numFmtId=\"0\" fontId=\"0\" fillId=\"0\" borderId=\"0\"/>\n  </cellStyleXfs>\n  <cellXfs count=\"3\">\n    <xf numFmtId=\"0\" fontId=\"0\" fillId=\"0\" borderId=\"1\" xfId=\"0\" applyBorder=\"1\"/>\n    <xf numFmtId=\"0\" fontId=\"1\" fillId=\"2\" borderId=\"1\" xfId=\"0\" applyFont=\"1\" applyFill=\"1\" applyBorder=\"1\"/>\n    <xf numFmtId=\"0\" fontId=\"0\" fillId=\"0\" borderId=\"1\" xfId=\"0\" applyBorder=\"1\"/>\n  </cellXfs>\n</styleSheet>"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->writeZipString(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 902
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 905
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "xl/worksheets/sheet1.xml"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v3, "<worksheet xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    const-string v3, "  <cols>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    const-string v3, "    <col min=\"1\" max=\"1\" width=\"8\" customWidth=\"1\"/>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    const-string v3, "    <col min=\"2\" max=\"2\" width=\"30\" customWidth=\"1\"/>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v3, "    <col min=\"3\" max=\"3\" width=\"18\" customWidth=\"1\"/>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    const-string v3, "    <col min=\"4\" max=\"4\" width=\"18\" customWidth=\"1\"/>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    const-string v3, "    <col min=\"5\" max=\"5\" width=\"18\" customWidth=\"1\"/>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    const-string v3, "  </cols>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    const-string v3, "  <sheetData>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    const-string v3, "    <row r=\"1\">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string v3, "A1"

    const-string v4, "Sl No."

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 920
    const-string v3, "B1"

    const-string v4, "Village Name"

    invoke-static {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 921
    const-string v3, "C1"

    const-string v4, "Saarthie Farmers"

    invoke-static {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 922
    const-string v3, "D1"

    const-string v4, "Normal Farmers"

    invoke-static {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 923
    const-string v3, "E1"

    const-string v4, "Total Farmers"

    invoke-static {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 924
    const-string v3, "    </row>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    nop

    .line 927
    nop

    .line 928
    iget-object v4, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->summaryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_e3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "E"

    const-string v13, "D"

    const-string v14, "C"

    const-string v15, "B"

    const-string v5, "A"

    const-string v7, "\">\n"

    const-string v0, "    <row r=\""

    if-eqz v11, :cond_18a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;

    .line 929
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, v6, -0x1

    const/4 v7, 0x0

    invoke-static {v2, v0, v5, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendNumCell(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v11, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->village:Ljava/lang/String;

    invoke-static {v2, v0, v5, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v5, v11, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->saarthieCount:I

    invoke-static {v2, v0, v5, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendNumCell(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v5, v11, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->normalCount:I

    invoke-static {v2, v0, v5, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendNumCell(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v5, v11, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->totalCount:I

    invoke-static {v2, v0, v5, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendNumCell(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 935
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    iget v0, v11, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->saarthieCount:I

    add-int/2addr v8, v0

    .line 938
    iget v0, v11, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->normalCount:I

    add-int/2addr v9, v0

    .line 939
    iget v0, v11, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->totalCount:I

    add-int/2addr v10, v0

    .line 940
    add-int/lit8 v6, v6, 0x1

    .line 941
    const/4 v5, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_e3

    .line 943
    :cond_18a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static {v2, v0, v4, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GRAND TOTAL"

    invoke-static {v2, v0, v4, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v8, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendNumCell(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v9, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendNumCell(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v10, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendNumCell(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 949
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const-string v0, "  </sheetData>\n</worksheet>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->writeZipString(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 953
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 956
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v2, "xl/worksheets/sheet2.xml"

    invoke-direct {v0, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->writeFarmerSheet(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)V

    .line 958
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 961
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "xl/worksheets/sheet3.xml"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 962
    iget-object v0, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->writeFarmerSheet(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)V

    .line 963
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 965
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 966
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 967
    return-void
.end method

.method public static generatePdf(Landroid/content/Context;Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;Ljava/io/File;)V
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 547
    move-object/from16 v0, p1

    new-instance v1, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {v1}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 556
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 557
    nop

    .line 566
    new-instance v2, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    const/16 v10, 0x253

    const/16 v11, 0x34a

    invoke-direct {v2, v10, v11, v9}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v2

    .line 567
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v12

    .line 568
    invoke-virtual {v12}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v13

    .line 570
    nop

    .line 573
    const v14, -0xffb479

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 575
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 576
    const/16 v2, 0x38

    int-to-float v2, v2

    const-string v3, "DEEPAK FERTILISERS AND PETROCHEMICALS"

    const/high16 v15, 0x42100000    # 36.0f

    invoke-virtual {v13, v3, v15, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 578
    const v2, -0xe19f6f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 580
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 581
    const/16 v2, 0x4c

    int-to-float v2, v2

    const-string v3, "PMC Farmer Directory & Executive Summary"

    invoke-virtual {v13, v3, v15, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 583
    const v2, -0x99999a

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 585
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 586
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMMM yyyy, hh:mm a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generated on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5c

    int-to-float v3, v3

    invoke-virtual {v13, v2, v15, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 589
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 590
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 591
    const/high16 v3, 0x42100000    # 36.0f

    const/16 v2, 0x66

    int-to-float v5, v2

    const v16, 0x440bc000    # 559.0f

    move-object v2, v13

    move v4, v5

    move/from16 v17, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 592
    nop

    .line 595
    const v2, -0x17110b

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 596
    const/16 v2, 0x74

    int-to-float v7, v2

    const v5, 0x440bc000    # 559.0f

    const/16 v2, 0x9e

    int-to-float v6, v2

    move-object v2, v13

    move v4, v7

    move/from16 v16, v6

    move/from16 v17, v7

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 597
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 598
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 599
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 600
    move-object v2, v13

    move/from16 v4, v17

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 601
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 603
    const v7, -0xe5e5e6

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 604
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 605
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total Farmers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->totalFarmers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x86

    int-to-float v3, v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {v13, v2, v4, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saarthie Farmers: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x433a0000    # 186.0f

    invoke-virtual {v13, v2, v5, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normal Farmers: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x43b20000    # 356.0f

    invoke-virtual {v13, v2, v5, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total Villages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->summaryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x96

    int-to-float v3, v3

    invoke-virtual {v13, v2, v4, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 610
    nop

    .line 613
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 615
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 616
    const-string v2, "SECTION 1: VILLAGE-WISE SUMMARY"

    const/16 v3, 0xae

    int-to-float v3, v3

    invoke-virtual {v13, v2, v15, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 617
    nop

    .line 620
    const/4 v6, 0x6

    new-array v5, v6, [I

    fill-array-data v5, :array_63a

    .line 621
    const-string v2, "Total"

    const-string v4, "Sl"

    const-string v3, "Village Name"

    const-string v15, "Saarthie"

    const-string v14, "Normal"

    filled-new-array {v4, v3, v15, v14, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb6

    invoke-static {v13, v8, v6, v5, v2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawTableHeader(Landroid/graphics/Canvas;Landroid/graphics/Paint;I[I[Ljava/lang/String;)I

    move-result v2

    .line 623
    nop

    .line 624
    nop

    .line 625
    nop

    .line 626
    nop

    .line 628
    iget-object v6, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->summaryList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object v6, v12

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x1

    move v12, v2

    move-object v2, v13

    const/4 v13, 0x0

    :goto_1c3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    const/16 v27, 0x3

    const/16 v28, 0x2

    if-eqz v25, :cond_2f1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v10, v25

    check-cast v10, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;

    .line 629
    const/16 v7, 0x2f8

    if-le v12, v7, :cond_207

    .line 630
    invoke-static {v2, v8, v9}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawPageFooter(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 631
    invoke-virtual {v1, v6}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 632
    add-int/lit8 v9, v9, 0x1

    .line 633
    new-instance v2, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    const/16 v6, 0x253

    invoke-direct {v2, v6, v11, v9}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v2

    .line 634
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 635
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    .line 636
    nop

    .line 637
    const-string v7, "Total"

    filled-new-array {v4, v3, v15, v14, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x28

    invoke-static {v6, v8, v12, v5, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawTableHeader(Landroid/graphics/Canvas;Landroid/graphics/Paint;I[I[Ljava/lang/String;)I

    move-result v12

    move/from16 v29, v9

    move v7, v12

    move-object v12, v2

    move-object v9, v6

    goto :goto_20c

    .line 629
    :cond_207
    move/from16 v29, v9

    move v7, v12

    move-object v9, v2

    move-object v12, v6

    .line 640
    :goto_20c
    rem-int/lit8 v2, v24, 0x2

    if-nez v2, :cond_212

    const/4 v6, 0x1

    goto :goto_213

    :cond_212
    const/4 v6, 0x0

    .line 641
    :goto_213
    if-eqz v6, :cond_241

    .line 642
    const v2, -0x80604

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 643
    const/high16 v6, 0x42100000    # 36.0f

    int-to-float v2, v7

    const v26, 0x440bc000    # 559.0f

    add-int/lit8 v11, v7, 0x12

    int-to-float v11, v11

    move/from16 v30, v2

    move-object v2, v9

    move-object/from16 v31, v3

    move v3, v6

    move-object v6, v4

    move/from16 v4, v30

    move-object/from16 v30, v5

    move/from16 v5, v26

    move-object/from16 v32, v6

    const/16 v17, 0x6

    move v6, v11

    move v11, v7

    move-object/from16 v25, v14

    const v14, -0xe5e5e6

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_24f

    .line 641
    :cond_241
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    move v11, v7

    move-object/from16 v25, v14

    const v14, -0xe5e5e6

    const/16 v17, 0x6

    .line 646
    :goto_24f
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 648
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 649
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget v3, v30, v6

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    add-int/lit8 v4, v11, 0xd

    int-to-float v4, v4

    invoke-virtual {v9, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 650
    iget-object v2, v10, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->village:Ljava/lang/String;

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget v5, v30, v3

    add-int/lit8 v5, v5, 0x6

    int-to-float v3, v5

    invoke-virtual {v9, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 651
    iget v2, v10, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->saarthieCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget v3, v30, v28

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {v9, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 652
    iget v2, v10, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->normalCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget v3, v30, v27

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {v9, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 653
    iget v2, v10, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->totalCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget v3, v30, v3

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {v9, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 655
    const v2, -0x2e2a25

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 657
    const/high16 v3, 0x42100000    # 36.0f

    add-int/lit8 v11, v11, 0x12

    int-to-float v5, v11

    const v18, 0x440bc000    # 559.0f

    move-object v2, v9

    move v4, v5

    move/from16 v19, v5

    move/from16 v5, v18

    move/from16 v6, v19

    const/high16 v14, 0x41100000    # 9.0f

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 659
    iget v2, v10, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->saarthieCount:I

    add-int/2addr v13, v2

    .line 660
    iget v2, v10, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->normalCount:I

    add-int v21, v21, v2

    .line 661
    iget v2, v10, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->totalCount:I

    add-int v22, v22, v2

    .line 662
    nop

    .line 663
    add-int/lit8 v24, v24, 0x1

    .line 664
    move-object v2, v9

    move-object v6, v12

    move-object/from16 v14, v25

    move/from16 v9, v29

    move-object/from16 v5, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    const v7, -0xe5e5e6

    const/16 v10, 0x253

    move v12, v11

    const/16 v11, 0x34a

    goto/16 :goto_1c3

    .line 667
    :cond_2f1
    move-object/from16 v32, v4

    move-object/from16 v30, v5

    const/high16 v14, 0x41100000    # 9.0f

    const/16 v17, 0x6

    const v3, -0x261d14

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 668
    const/high16 v3, 0x42100000    # 36.0f

    int-to-float v4, v12

    const v5, 0x440bc000    # 559.0f

    add-int/lit8 v7, v12, 0x14

    int-to-float v7, v7

    move-object v10, v2

    move-object v11, v6

    move v6, v7

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 669
    const v2, -0xffb479

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 670
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 671
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 672
    aget v2, v30, v3

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    add-int/lit8 v12, v12, 0xe

    int-to-float v3, v12

    const-string v4, "GRAND TOTAL"

    invoke-virtual {v10, v4, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 673
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget v4, v30, v28

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    invoke-virtual {v10, v2, v4, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 674
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget v4, v30, v27

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    invoke-virtual {v10, v2, v4, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 675
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aget v4, v30, v4

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    invoke-virtual {v10, v2, v4, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 676
    nop

    .line 678
    invoke-static {v10, v8, v9}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawPageFooter(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 679
    invoke-virtual {v1, v11}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 682
    const/16 v2, 0x19b

    const/16 v3, 0x22f

    const/16 v4, 0x24

    const/16 v5, 0x47

    const/16 v6, 0xdd

    filled-new-array {v4, v5, v6, v2, v3}, [I

    move-result-object v10

    .line 683
    const-string v2, "Farmer Name"

    const-string v3, "Mobile Number"

    const-string v4, "Village"

    move-object/from16 v5, v32

    filled-new-array {v5, v4, v2, v3}, [Ljava/lang/String;

    move-result-object v11

    .line 686
    const/4 v2, 0x1

    add-int/2addr v9, v2

    .line 687
    new-instance v2, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    const/16 v3, 0x253

    const/16 v4, 0x34a

    invoke-direct {v2, v3, v4, v9}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v2

    .line 688
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 689
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    .line 690
    nop

    .line 692
    const v4, -0xffb479

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 693
    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 694
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PART A: SAARTHIE FARMERS DIRECTORY ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x36

    int-to-float v12, v5

    const/high16 v5, 0x42100000    # 36.0f

    invoke-virtual {v3, v4, v5, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 696
    nop

    .line 697
    const/16 v13, 0x42

    invoke-static {v3, v8, v13, v10, v11}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawTableHeader(Landroid/graphics/Canvas;Landroid/graphics/Paint;I[I[Ljava/lang/String;)I

    move-result v4

    .line 699
    nop

    .line 700
    iget-object v5, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v19, 0x1

    :goto_3d9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4be

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;

    .line 701
    const/16 v5, 0x30c

    if-le v4, v5, :cond_413

    .line 702
    invoke-static {v3, v8, v9}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawPageFooter(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 703
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 704
    add-int/lit8 v9, v9, 0x1

    .line 705
    new-instance v2, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    const/16 v3, 0x253

    const/16 v4, 0x34a

    invoke-direct {v2, v3, v4, v9}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v2

    .line 706
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    .line 708
    nop

    .line 709
    const/16 v4, 0x28

    invoke-static {v3, v8, v4, v10, v11}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawTableHeader(Landroid/graphics/Canvas;Landroid/graphics/Paint;I[I[Ljava/lang/String;)I

    move-result v5

    move-object v6, v3

    move/from16 v20, v9

    move-object v9, v2

    goto :goto_418

    .line 701
    :cond_413
    move-object v6, v3

    move v5, v4

    move/from16 v20, v9

    move-object v9, v2

    .line 712
    :goto_418
    rem-int/lit8 v2, v19, 0x2

    if-nez v2, :cond_43c

    .line 713
    const v2, -0x80604

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    const/high16 v3, 0x42100000    # 36.0f

    int-to-float v4, v5

    const v21, 0x440bc000    # 559.0f

    add-int/lit8 v2, v5, 0x12

    int-to-float v2, v2

    move/from16 v22, v2

    move-object v2, v6

    move/from16 v24, v5

    move/from16 v5, v21

    move-object v13, v6

    move/from16 v6, v22

    move-object/from16 v33, v7

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_441

    .line 712
    :cond_43c
    move/from16 v24, v5

    move-object v13, v6

    move-object/from16 v33, v7

    .line 717
    :goto_441
    const v2, -0xe5e5e6

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 718
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 719
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v7, 0x0

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 720
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget v3, v10, v7

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    add-int/lit8 v5, v24, 0xd

    int-to-float v4, v5

    invoke-virtual {v13, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 721
    move-object/from16 v5, v33

    iget-object v2, v5, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->village:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget v6, v10, v3

    add-int/lit8 v6, v6, 0x6

    int-to-float v3, v6

    invoke-virtual {v13, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 722
    iget-object v2, v5, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->name:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aget v3, v10, v28

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {v13, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 723
    iget-object v2, v5, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->mobile:Ljava/lang/String;

    aget v3, v10, v27

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {v13, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 725
    const v2, -0x2e2a25

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 726
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 727
    const/high16 v3, 0x42100000    # 36.0f

    add-int/lit8 v6, v24, 0x12

    int-to-float v5, v6

    const v22, 0x440bc000    # 559.0f

    move-object v2, v13

    move v4, v5

    move/from16 v24, v5

    move/from16 v5, v22

    move/from16 v22, v6

    move/from16 v6, v24

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 729
    nop

    .line 730
    add-int/lit8 v19, v19, 0x1

    .line 731
    move-object v2, v9

    move-object v3, v13

    move/from16 v9, v20

    move/from16 v4, v22

    const/16 v13, 0x42

    goto/16 :goto_3d9

    .line 733
    :cond_4be
    invoke-static {v3, v8, v9}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawPageFooter(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 734
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 737
    const/4 v2, 0x1

    add-int/2addr v9, v2

    .line 738
    new-instance v2, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    const/16 v3, 0x253

    const/16 v4, 0x34a

    invoke-direct {v2, v3, v4, v9}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v2

    .line 739
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 740
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    .line 741
    nop

    .line 743
    const v4, -0xffb479

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 744
    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 745
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PART B: REGULAR / NORMAL FARMERS DIRECTORY ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x42100000    # 36.0f

    invoke-virtual {v3, v4, v5, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 747
    nop

    .line 748
    const/16 v4, 0x42

    invoke-static {v3, v8, v4, v10, v11}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawTableHeader(Landroid/graphics/Canvas;Landroid/graphics/Paint;I[I[Ljava/lang/String;)I

    move-result v4

    .line 750
    nop

    .line 751
    iget-object v0, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v9

    const/4 v9, 0x1

    :goto_525
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_623

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;

    .line 752
    const/16 v6, 0x30c

    if-le v4, v6, :cond_561

    .line 753
    invoke-static {v3, v8, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawPageFooter(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 754
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 755
    add-int/lit8 v5, v5, 0x1

    .line 756
    new-instance v2, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    const/16 v13, 0x253

    const/16 v15, 0x34a

    invoke-direct {v2, v13, v15, v5}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v2

    .line 757
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 758
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    .line 759
    nop

    .line 760
    const/16 v7, 0x28

    invoke-static {v3, v8, v7, v10, v11}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawTableHeader(Landroid/graphics/Canvas;Landroid/graphics/Paint;I[I[Ljava/lang/String;)I

    move-result v4

    move-object/from16 v16, v2

    move-object v6, v3

    move/from16 v19, v5

    move v5, v4

    goto :goto_56d

    .line 752
    :cond_561
    const/16 v7, 0x28

    const/16 v13, 0x253

    const/16 v15, 0x34a

    move-object/from16 v16, v2

    move-object v6, v3

    move/from16 v19, v5

    move v5, v4

    .line 763
    :goto_56d
    rem-int/lit8 v2, v9, 0x2

    if-nez v2, :cond_598

    .line 764
    const v4, -0x80604

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 765
    const/high16 v3, 0x42100000    # 36.0f

    int-to-float v2, v5

    const v20, 0x440bc000    # 559.0f

    add-int/lit8 v4, v5, 0x12

    int-to-float v4, v4

    move/from16 v21, v2

    move-object v2, v6

    move/from16 v22, v4

    const v24, -0x80604

    move/from16 v4, v21

    move/from16 v21, v5

    move/from16 v5, v20

    move-object v13, v6

    move/from16 v6, v22

    const/16 v20, 0x28

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5a0

    .line 763
    :cond_598
    move/from16 v21, v5

    move-object v13, v6

    const/16 v20, 0x28

    const v24, -0x80604

    .line 768
    :goto_5a0
    const v7, -0xe5e5e6

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 769
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 770
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 771
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget v3, v10, v6

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    add-int/lit8 v5, v21, 0xd

    int-to-float v4, v5

    invoke-virtual {v13, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 772
    iget-object v2, v12, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->village:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/16 v18, 0x1

    aget v3, v10, v18

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {v13, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 773
    iget-object v2, v12, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->name:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aget v3, v10, v28

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {v13, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 774
    iget-object v2, v12, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->mobile:Ljava/lang/String;

    aget v3, v10, v27

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {v13, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 776
    const v12, -0x2e2a25

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 777
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 778
    const/high16 v3, 0x42100000    # 36.0f

    add-int/lit8 v4, v21, 0x12

    int-to-float v2, v4

    const v21, 0x440bc000    # 559.0f

    move/from16 v22, v2

    move-object v2, v13

    move/from16 v23, v4

    move/from16 v4, v22

    const/high16 v25, 0x3f000000    # 0.5f

    move/from16 v5, v21

    const/16 v21, 0x0

    move/from16 v6, v22

    const v22, -0xe5e5e6

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 780
    nop

    .line 781
    add-int/lit8 v9, v9, 0x1

    .line 782
    move-object v3, v13

    move-object/from16 v2, v16

    move/from16 v5, v19

    move/from16 v4, v23

    goto/16 :goto_525

    .line 784
    :cond_623
    invoke-static {v3, v8, v5}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->drawPageFooter(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 785
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 787
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 788
    invoke-virtual {v1, v0}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 789
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 790
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 791
    return-void

    :array_63a
    .array-data 4
        0x24
        0x47
        0x11e
        0x17d
        0x1d7
        0x22f
    .end array-data
.end method

.method private static getAppDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 15

    .line 224
    const-string v0, "getInstance"

    const-string v1, "com.conceptglobal.pmc.database.DataBaseHandler"

    const-string v2, "FarmerExportHelper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 225
    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 226
    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 227
    if-eqz v5, :cond_3c

    .line 228
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "openDatabase"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 229
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    .line 230
    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 231
    const-string v6, "Successfully acquired database from DataBaseHandler singleton."

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_3d

    .line 232
    return-object v5

    .line 237
    :cond_3c
    goto :goto_58

    .line 235
    :catchall_3d
    move-exception v5

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataBaseHandler.openDatabase reflection attempt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_58
    const/4 v5, 0x1

    :try_start_59
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 242
    const-string v6, "datapath"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    if-eqz v1, :cond_9b

    .line 245
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9b

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 247
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening database from DataBaseHandler.datapath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_9a
    .catchall {:try_start_59 .. :try_end_9a} :catchall_9c

    return-object p0

    .line 253
    :cond_9b
    goto :goto_b7

    .line 251
    :catchall_9c
    move-exception v1

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataBaseHandler.datapath check attempt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_b7
    :try_start_b7
    const-string v1, "com.conceptglobal.pmc.utils.FileUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 258
    const-string v6, "getDataDir"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 259
    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 261
    const-string v6, "com.conceptglobal.pmc.utils.ConstantDeclarations"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 262
    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 263
    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDatabasePath"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 265
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    if-eqz v1, :cond_131

    if-eqz v0, :cond_131

    .line 268
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_131

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening database from FileUtils + ConstantDeclarations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_130
    .catchall {:try_start_b7 .. :try_end_130} :catchall_132

    return-object p0

    .line 276
    :cond_131
    goto :goto_14d

    .line 274
    :catchall_132
    move-exception v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileUtils/ConstantDeclarations check attempt: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_14d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    if-eqz p0, :cond_1df

    .line 281
    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_16a

    .line 283
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_16a

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_16a
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_180

    .line 288
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_180

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 292
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/storage/emulated/0/Android/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sdcard/Android/data/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_1df
    const-string v7, "PMCLivedeepakfertilizers/Database/pmc.sqlite"

    const-string v8, "PMCLivedeepakfertilizersMigration/Database/pmc.sqlite"

    const-string v9, "PMCPatch/Database/pmc.sqlite"

    const-string v10, "PMC/Database/pmc.sqlite"

    const-string v11, "Database/pmc.sqlite"

    const-string v12, "databases/pmc.sqlite"

    const-string v13, "pmc.sqlite"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f5
    :goto_1f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_249

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 308
    if-eqz v6, :cond_1f5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_20a

    goto :goto_1f5

    .line 309
    :cond_20a
    const/4 v7, 0x0

    :goto_20b
    const/4 v8, 0x7

    if-ge v7, v8, :cond_248

    aget-object v8, v1, v7

    .line 310
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_245

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_245

    .line 312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discovered database file at: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :try_start_23b
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_243
    .catchall {:try_start_23b .. :try_end_243} :catchall_244

    return-object p0

    .line 315
    :catchall_244
    move-exception v8

    .line 309
    :cond_245
    add-int/lit8 v7, v7, 0x1

    goto :goto_20b

    .line 318
    :cond_248
    goto :goto_1f5

    .line 321
    :cond_249
    if-eqz p0, :cond_282

    .line 322
    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 323
    const-string v0, "pmc.sqlite"

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->findFileRecursive(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 324
    if-eqz p0, :cond_282

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_282

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recursive search discovered database at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :try_start_278
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_280
    .catchall {:try_start_278 .. :try_end_280} :catchall_281

    return-object p0

    .line 328
    :catchall_281
    move-exception p0

    .line 332
    :cond_282
    const-string p0, "Could not locate pmc.sqlite through any discovery method."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-object v3
.end method

.method private static getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 5

    .line 373
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 374
    :cond_4
    const/4 v1, 0x0

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 375
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 376
    return v1

    .line 374
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 379
    :cond_19
    return v0
.end method

.method private static getExportDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 185
    const-string v0, "Smartbook_Exports"

    .line 187
    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    .line 188
    if-nez v2, :cond_13

    .line 189
    :try_start_b
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_10

    goto :goto_14

    .line 194
    :catchall_10
    move-exception v1

    move-object v1, v2

    goto :goto_1e

    .line 188
    :cond_13
    move-object v1, v2

    .line 191
    :goto_14
    if-eqz v1, :cond_1e

    .line 192
    :try_start_16
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    move-object v1, v2

    goto :goto_1e

    .line 194
    :catchall_1d
    move-exception v2

    :cond_1e
    :goto_1e
    nop

    .line 196
    if-nez v1, :cond_2a

    .line 197
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    :cond_2a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_33

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 203
    :cond_33
    return-object v1
.end method

.method public static loadFarmerData(Landroid/content/Context;)Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;
    .registers 25

    .line 383
    const-string v1, "FarmerExportHelper"

    new-instance v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;-><init>()V

    .line 384
    invoke-static/range {p0 .. p0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getAppDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 385
    const/4 v4, 0x0

    if-nez v3, :cond_f

    return-object v4

    .line 387
    :cond_f
    nop

    .line 390
    :try_start_10
    const-string v0, "SELECT * FROM FarmerMaster"

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_18

    .line 397
    move-object v5, v0

    goto :goto_28

    .line 391
    :catchall_18
    move-exception v0

    .line 393
    :try_start_19
    const-string v0, "SELECT * FROM farmermaster"

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_21

    .line 396
    move-object v5, v0

    goto :goto_28

    .line 394
    :catchall_21
    move-exception v0

    .line 395
    :try_start_22
    const-string v5, "Queries to FarmerMaster and farmermaster failed"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28d
    .catchall {:try_start_22 .. :try_end_27} :catchall_28a

    move-object v5, v4

    .line 399
    :goto_28
    if-eqz v5, :cond_281

    :try_start_2a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_281

    .line 400
    const-string v0, "FarmerName"

    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 401
    const-string v6, "Mobile"

    invoke-static {v5, v6}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 402
    const-string v7, "VillageName"

    invoke-static {v5, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 403
    const-string v8, "IsActive"

    invoke-static {v5, v8}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 404
    const-string v9, "Status"

    invoke-static {v5, v9}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 405
    const-string v10, "IsSaarthie"

    invoke-static {v5, v10}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 406
    const-string v11, "SaarthieFarmerID"

    invoke-static {v5, v11}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 407
    const-string v12, "ParentSaarthieFarmerID"

    invoke-static {v5, v12}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 408
    const-string v13, "RespondentNo"

    invoke-static {v5, v13}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->getColIdx(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 410
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_6b} :catch_27e
    .catchall {:try_start_2a .. :try_end_6b} :catchall_27b

    .line 414
    :goto_6b
    const-string v15, "0"

    if-ltz v8, :cond_a0

    .line 415
    :try_start_6f
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 416
    if-eqz v16, :cond_9d

    .line 417
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 418
    move/from16 v16, v8

    const-string v8, "false"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_93

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 419
    move/from16 v17, v0

    move/from16 v19, v6

    move/from16 v23, v7

    move/from16 v18, v9

    goto/16 :goto_1f6

    .line 418
    :cond_93
    move/from16 v17, v0

    move/from16 v19, v6

    move/from16 v23, v7

    move/from16 v18, v9

    goto/16 :goto_1f6

    .line 416
    :cond_9d
    move/from16 v16, v8

    goto :goto_a2

    .line 414
    :cond_a0
    move/from16 v16, v8

    .line 425
    :cond_a2
    :goto_a2
    if-ltz v9, :cond_d0

    .line 426
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 427
    if-eqz v4, :cond_d0

    .line 428
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c6

    const-string v8, "5"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_ba} :catch_27e
    .catchall {:try_start_6f .. :try_end_ba} :catchall_27b

    if-eqz v4, :cond_d0

    .line 430
    move/from16 v17, v0

    move/from16 v19, v6

    move/from16 v23, v7

    move/from16 v18, v9

    goto/16 :goto_1f6

    .line 429
    :cond_c6
    move/from16 v17, v0

    move/from16 v19, v6

    move/from16 v23, v7

    move/from16 v18, v9

    goto/16 :goto_1f6

    .line 436
    :cond_d0
    const-string v4, ""

    if-ltz v0, :cond_d9

    :try_start_d4
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_da

    :cond_d9
    move-object v8, v4

    .line 437
    :goto_da
    invoke-static {v8}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->decryptSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 438
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_100

    if-ltz v13, :cond_100

    .line 439
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    const-string v0, "Farmer #"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_102

    .line 438
    :cond_100
    move/from16 v17, v0

    .line 441
    :goto_102
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 442
    move/from16 v19, v6

    move/from16 v23, v7

    move/from16 v18, v9

    goto/16 :goto_1f6

    .line 446
    :cond_110
    if-ltz v6, :cond_117

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_118

    :cond_117
    move-object v0, v4

    .line 447
    :goto_118
    invoke-static {v0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->decryptSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    if-ltz v7, :cond_122

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 451
    :cond_122
    invoke-static {v4}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->decryptSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v18
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_12a} :catch_27e
    .catchall {:try_start_d4 .. :try_end_12a} :catchall_27b

    move/from16 v19, v6

    const-string v6, "null"

    if-nez v18, :cond_136

    :try_start_130
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_138

    .line 453
    :cond_136
    const-string v4, "Unknown"

    .line 457
    :cond_138
    if-ltz v10, :cond_13f

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_141

    :cond_13f
    const/16 v18, 0x0

    .line 458
    :goto_141
    if-ltz v11, :cond_148

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_14a

    :cond_148
    const/16 v20, 0x0

    .line 459
    :goto_14a
    if-ltz v12, :cond_151

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_153

    :cond_151
    const/16 v21, 0x0

    .line 461
    :goto_153
    nop

    .line 462
    const/16 v22, 0x1

    if-eqz v18, :cond_17a

    .line 463
    move/from16 v23, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 464
    move/from16 v18, v9

    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_178

    const-string v9, "true"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_178

    const-string v9, "yes"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17e

    .line 465
    :cond_178
    const/4 v7, 0x1

    goto :goto_17f

    .line 462
    :cond_17a
    move/from16 v23, v7

    move/from16 v18, v9

    .line 468
    :cond_17e
    const/4 v7, 0x0

    :goto_17f
    if-nez v7, :cond_19a

    if-eqz v20, :cond_19a

    .line 469
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 470
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_19a

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_19a

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19a

    .line 471
    const/4 v7, 0x1

    .line 474
    :cond_19a
    if-nez v7, :cond_1b5

    if-eqz v21, :cond_1b5

    .line 475
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 476
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1b5

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b5

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b5

    .line 477
    const/4 v7, 0x1

    .line 481
    :cond_1b5
    new-instance v6, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;-><init>()V

    .line 482
    iput-object v8, v6, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->name:Ljava/lang/String;

    .line 483
    iput-object v0, v6, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->mobile:Ljava/lang/String;

    .line 484
    iput-object v4, v6, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->village:Ljava/lang/String;

    .line 485
    iput-boolean v7, v6, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->isSaarthie:Z

    .line 487
    if-eqz v7, :cond_1ca

    .line 488
    iget-object v0, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1cf

    .line 490
    :cond_1ca
    iget-object v0, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :goto_1cf
    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;

    .line 494
    if-nez v0, :cond_1e1

    .line 495
    new-instance v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;-><init>()V

    .line 496
    iput-object v4, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->village:Ljava/lang/String;

    .line 497
    invoke-interface {v14, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_1e1
    if-eqz v7, :cond_1ea

    .line 500
    iget v4, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->saarthieCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->saarthieCount:I

    goto :goto_1f0

    .line 502
    :cond_1ea
    iget v4, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->normalCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->normalCount:I

    .line 504
    :goto_1f0
    iget v4, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->totalCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->totalCount:I

    .line 506
    :goto_1f6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_26e

    .line 509
    new-instance v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$2;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$2;-><init>()V

    .line 517
    iget-object v4, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 518
    iget-object v4, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->summaryList:Ljava/util/List;

    .line 521
    iget-object v0, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->summaryList:Ljava/util/List;

    new-instance v4, Lcom/conceptglobal/pmc/export/FarmerExportHelper$3;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$3;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 528
    iget-object v0, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->totalFarmers:I

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->totalFarmers:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " farmers (Saarthie: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    .line 530
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Normal: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_26d} :catch_27e
    .catchall {:try_start_130 .. :try_end_26d} :catchall_27b

    goto :goto_281

    .line 506
    :cond_26e
    move/from16 v8, v16

    move/from16 v0, v17

    move/from16 v9, v18

    move/from16 v6, v19

    move/from16 v7, v23

    const/4 v4, 0x0

    goto/16 :goto_6b

    .line 535
    :catchall_27b
    move-exception v0

    move-object v4, v5

    goto :goto_29c

    .line 532
    :catch_27e
    move-exception v0

    move-object v4, v5

    goto :goto_28f

    .line 535
    :cond_281
    :goto_281
    if-eqz v5, :cond_286

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_286
    :goto_286
    invoke-static {v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->closeAppDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 537
    goto :goto_29a

    .line 535
    :catchall_28a
    move-exception v0

    const/4 v4, 0x0

    goto :goto_29c

    .line 532
    :catch_28d
    move-exception v0

    const/4 v4, 0x0

    .line 533
    :goto_28f
    :try_start_28f
    const-string v5, "Error reading farmers from database"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_294
    .catchall {:try_start_28f .. :try_end_294} :catchall_29b

    .line 535
    if-eqz v4, :cond_286

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_286

    .line 539
    :goto_29a
    return-object v2

    .line 535
    :catchall_29b
    move-exception v0

    :goto_29c
    if-eqz v4, :cond_2a1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_2a1
    invoke-static {v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->closeAppDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 537
    throw v0
.end method

.method public static shareFile(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    .line 1032
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_22

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1035
    goto :goto_26

    .line 1036
    :cond_22
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1039
    :goto_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1042
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1044
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1046
    const-string v0, "Share Farmer Directory"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    .line 1059
    goto :goto_a1

    .line 1047
    :catch_55
    move-exception v0

    .line 1048
    const-string v1, "FarmerExportHelper"

    const-string v2, "Error sharing file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    :try_start_5d
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1052
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1053
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    const p2, 0x10000001

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1055
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_80} :catch_81

    .line 1058
    goto :goto_a1

    .line 1056
    :catch_81
    move-exception p2

    .line 1057
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Saved to Documents/Smartbook_Exports: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1060
    :goto_a1
    return-void
.end method

.method public static showExportDialog(Landroid/app/Activity;)V
    .registers 2

    .line 71
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 73
    :cond_9
    new-instance v0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    return-void

    .line 71
    :cond_12
    :goto_12
    return-void
.end method

.method private static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 818
    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 819
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_c

    return-object p0

    .line 820
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writeFarmerSheet(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    const-string v1, "<worksheet xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const-string v1, "  <cols>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string v1, "    <col min=\"1\" max=\"1\" width=\"8\" customWidth=\"1\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    const-string v1, "    <col min=\"2\" max=\"2\" width=\"28\" customWidth=\"1\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v1, "    <col min=\"3\" max=\"3\" width=\"32\" customWidth=\"1\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v1, "    <col min=\"4\" max=\"4\" width=\"20\" customWidth=\"1\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v1, "  </cols>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    const-string v1, "  <sheetData>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    const-string v1, "    <row r=\"1\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const-string v1, "A1"

    const-string v2, "Sl No."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 983
    const-string v1, "B1"

    const-string v2, "Village"

    invoke-static {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 984
    const-string v1, "C1"

    const-string v2, "Farmer Name"

    invoke-static {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 985
    const-string v1, "D1"

    const-string v2, "Mobile Number"

    invoke-static {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 986
    const-string v1, "    </row>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    nop

    .line 989
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x2

    :goto_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;

    .line 990
    const-string v5, "    <row r=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendNumCell(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 992
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->village:Ljava/lang/String;

    invoke-static {v0, v5, v6, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 993
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->name:Ljava/lang/String;

    invoke-static {v0, v5, v6, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 994
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->mobile:Ljava/lang/String;

    invoke-static {v0, v5, v4, v7}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->appendStrCell(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 995
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    add-int/2addr v2, v3

    .line 997
    goto/16 :goto_5f

    .line 999
    :cond_e1
    const-string p1, "  </sheetData>\n</worksheet>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->writeZipString(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method private static writeZipString(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1025
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1026
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 1027
    return-void
.end method
