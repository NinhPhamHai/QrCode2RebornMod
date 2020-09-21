.class public Lcom/utility/files/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/utility/files/FileUtils$FileTransferListener;,
        Lcom/utility/files/FileUtils$FileType;,
        Lcom/utility/files/FileUtils$Size;
    }
.end annotation


# static fields
.field private static final ANSI_INVALID_CHARACTERS:Ljava/lang/String; = "\\:*?\"<>|"

.field public static final REQUEST_CODE_GRANT_URI_PERMISSION:I = 0x478

.field private static final SDCARD_NAME:Ljava/lang/String; = "SDCARD_NAME"

.field private static final TREE_URI:Ljava/lang/String; = "TREE_URI"


# instance fields
.field private volatile cancel:Z

.field private inChannel:Ljava/nio/channels/FileChannel;

.field private mCurrentProgress:J

.field private mFileTransferListener:Lcom/utility/files/FileUtils$FileTransferListener;

.field private mTotalSize:J

.field private mTransferred:J

.field private outChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/utility/files/FileUtils;->mTotalSize:J

    .line 3
    iput-wide v0, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    .line 4
    iput-wide v0, p0, Lcom/utility/files/FileUtils;->mCurrentProgress:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/utility/files/FileUtils;->cancel:Z

    return-void
.end method

.method private addFolderToZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const-string v2, "/"

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    const-string v6, ""

    .line 4
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5, p3}, Lcom/utility/files/FileUtils;->addTreeFileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5, p3}, Lcom/utility/files/FileUtils;->addTreeFileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Ljava/util/zip/ZipEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :cond_2
    return-void
.end method

.method private addTreeFileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/utility/files/FileUtils;->addFolderToZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x400

    .line 4
    new-array v1, v1, [B

    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p2, Ljava/util/zip/ZipEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 7
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p3, v1, p2, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static containsNomediaFile(Ljava/io/File;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/utility/files/FileUtils$6;

    invoke-direct {v0}, Lcom/utility/files/FileUtils$6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n**********\nFolder contains nomedia file: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n**********"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static convertSizeFile(J)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    const-wide/32 v3, 0x40000000

    cmp-long v5, p0, v3

    if-ltz v5, :cond_0

    long-to-double p0, p0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v1

    div-double/2addr p0, v1

    div-double/2addr p0, v1

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GB"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v5, p0, v3

    if-ltz v5, :cond_1

    long-to-double p0, p0

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v1

    div-double/2addr p0, v1

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MB"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    long-to-double v3, p0

    cmpl-double v5, v3, v1

    if-lez v5, :cond_2

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v1

    .line 7
    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KB"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, "0Kb"

    :goto_0
    return-object p0
.end method

.method public static copyExtractFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    .line 2
    :try_start_0
    new-array p1, p1, [B

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static copyExtractFileToSdcardV21(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)V
    .locals 6

    :try_start_0
    const-string v0, "TREE_URI"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 3
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "\\/"

    .line 5
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 6
    array-length v1, p3

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p3, v0

    .line 7
    invoke-virtual {v3, v4}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v5

    if-nez v5, :cond_0

    .line 8
    invoke-virtual {v3, v4}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :cond_2
    const-string p3, "/"

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string p3, "*/*"

    const/4 v1, 0x1

    .line 10
    aget-object p2, p2, v1

    invoke-virtual {v0, p3, p2}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "w"

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0

    const/16 p2, 0x400

    .line 12
    new-array p2, p2, [B

    .line 13
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-gez p3, :cond_3

    .line 14
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p0, p2, v2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x400

    .line 1
    :try_start_0
    new-array v0, v0, [B

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private copyFileToSDCardV21(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TREE_URI"

    const-string v2, ""

    .line 1
    invoke-static {p1, v1, v2}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2
    invoke-static {p1, v1}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    .line 3
    invoke-static {p1, p3}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\\/"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    move-object v4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v2, v1

    .line 7
    invoke-virtual {v4, v5}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v6

    if-nez v6, :cond_0

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createDirectory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/utility/DebugLog;->logd(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v4, v5}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 10
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File existed: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 12
    new-instance p3, Lcom/utility/files/FileUtilsResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/utility/R$string;->message_copy_file_exist_destination:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p3

    :cond_3
    const-string v2, "*/*"

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    .line 14
    iput-boolean v0, p0, Lcom/utility/files/FileUtils;->cancel:Z

    .line 15
    iget-object v2, p0, Lcom/utility/files/FileUtils;->mFileTransferListener:Lcom/utility/files/FileUtils$FileTransferListener;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "w"

    if-nez v2, :cond_7

    .line 16
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 17
    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 18
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    .line 19
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    .line 20
    :try_start_2
    iget-object v2, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    iget-object v7, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :try_start_3
    iget-object v2, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_4

    .line 22
    iget-object v2, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 23
    iput-object v1, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    .line 24
    :cond_4
    iget-object v2, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_9

    .line 25
    iget-object v2, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 26
    iput-object v1, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 27
    iget-object p3, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    if-eqz p3, :cond_5

    .line 28
    iget-object p3, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->close()V

    .line 29
    iput-object v1, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    .line 30
    :cond_5
    iget-object p3, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    if-eqz p3, :cond_6

    .line 31
    iget-object p3, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->close()V

    .line 32
    iput-object v1, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    :cond_6
    throw p2

    .line 33
    :cond_7
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    const/16 v3, 0x400

    .line 35
    new-array v3, v3, [B

    .line 36
    :goto_2
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    iget-boolean v5, p0, Lcom/utility/files/FileUtils;->cancel:Z

    if-nez v5, :cond_8

    .line 37
    invoke-virtual {v1, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 38
    iget-wide v5, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    .line 39
    invoke-direct {p0}, Lcom/utility/files/FileUtils;->publishProgress()V

    goto :goto_2

    .line 40
    :cond_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 41
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 42
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 43
    :cond_9
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_copy_success:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {p2, v1, p3}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 45
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 46
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_copy_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 47
    :catch_1
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_copy_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method private copyFolder(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 7

    .line 1
    new-instance v0, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_copy_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/utility/files/FileUtils;->cancel:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_action_cancel:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p3, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p3, v3}, Lcom/utility/files/FileUtils;->createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/utility/files/FileUtils;->getAllFileInPath(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p3

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utility/files/FileUtils;->getAllFolderInPath(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p2

    if-eqz p3, :cond_3

    .line 10
    array-length v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p3, v4

    .line 11
    iget-boolean v6, p0, Lcom/utility/files/FileUtils;->cancel:Z

    if-nez v6, :cond_2

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/utility/files/FileUtils;->copyFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 14
    array-length p3, p2

    :goto_1
    if-ge v2, p3, :cond_5

    aget-object v3, p2, v2

    .line 15
    iget-boolean v4, p0, Lcom/utility/files/FileUtils;->cancel:Z

    if-nez v4, :cond_4

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/utility/files/FileUtils;->copyFolder(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_5
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_copy_success:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/utility/files/FileUtils;->isValidName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/utility/files/FileUtils;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/utility/R$string;->message_create_failed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    .line 4
    invoke-static {p0}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, p2, p1}, Lcom/utility/files/FileUtils;->createFolderSDCardV21(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 7
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_folder_exist:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    const/4 p2, 0x1

    sget v0, Lcom/utility/R$string;->message_create_folder_success:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_create_folder_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 13
    :catch_0
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_create_folder_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method

.method private static createFolderSDCardV21(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 5

    const-string v0, "/"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/utility/files/FileUtils;->isFileExitedInSDCardV21(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_folder_exist:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    :cond_0
    const-string v2, "TREE_URI"

    const-string v3, ""

    .line 3
    invoke-static {p0, v2, v3}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4
    invoke-static {p0, v2}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "\\/"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 8
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v3, p1, v0

    .line 9
    invoke-virtual {v2, v3}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v2, v3}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 11
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_create_folder_success:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 12
    :cond_3
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_create_folder_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 14
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_create_folder_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method

.method public static deleteFileInSDCardFromMediaStore(Landroid/content/ContentResolver;Ljava/io/File;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "external"

    .line 3
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "_data=?"

    invoke-virtual {p0, v1, v5, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v4

    invoke-virtual {p0, v1, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private deleteFileV21(Landroid/content/Context;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    const-string v1, "TREE_URI"

    const-string v2, ""

    .line 2
    invoke-static {p1, v1, v2}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    invoke-static {p1, v1}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7
    array-length v3, v2

    move-object v4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v5, v2, v1

    .line 8
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v4, v5}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    if-nez v4, :cond_1

    .line 10
    new-instance v1, Lcom/utility/files/FileUtilsResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/utility/R$string;->message_delete_file_not_exist:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    move-object v1, v4

    :cond_3
    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need Remove file in SDCard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/utility/files/FileUtils;->deleteFileInSDCardFromMediaStore(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 15
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_success:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p2, v2, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 16
    :cond_4
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 17
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 18
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method private deleteFolder(Landroid/content/Context;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    aget-object v3, v1, v2

    invoke-direct {p0, p1, v3}, Lcom/utility/files/FileUtils;->deleteFolder(Landroid/content/Context;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;

    goto :goto_1

    .line 6
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 9
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/Download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_success:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p2, v2, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 12
    :cond_3
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 13
    :cond_4
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_folder_dont_delete_this_folder:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 14
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 15
    :cond_5
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public static deleteRecursive(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-static {v3}, Lcom/utility/files/FileUtils;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static extractFile7ZToSdcardV21(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 5

    :try_start_0
    const-string p2, "TREE_URI"

    const-string v0, ""

    .line 1
    invoke-static {p0, p2, v0}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 2
    invoke-static {p0, p2}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2

    .line 3
    invoke-static {p0, p1}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\\/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 7
    invoke-virtual {p2, v3}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {p2, v3}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2

    goto :goto_1

    :cond_0
    move-object p2, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "*/*"

    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "w"

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :goto_2
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_extract_success:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method

.method private extractFileToSdcardV21(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p2

    .line 3
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const/4 p3, 0x0

    sget v0, Lcom/utility/R$string;->message_file_exist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/utility/files/FileUtils;->createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {p1, v3, v1, v2}, Lcom/utility/files/FileUtils;->copyExtractFileToSdcardV21(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 13
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :cond_2
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const/4 p3, 0x1

    sget v0, Lcom/utility/R$string;->message_extract_success:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public static getAllFileInPath(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lcom/utility/files/FileUtils$4;

    invoke-direct {p0}, Lcom/utility/files/FileUtils$4;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllFileInPathByType(Ljava/lang/String;Lcom/utility/files/FileUtils$FileType;)[Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lcom/utility/files/FileUtils$5;

    invoke-direct {p0, p1}, Lcom/utility/files/FileUtils$5;-><init>(Lcom/utility/files/FileUtils$FileType;)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllFileNameInPath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lcom/utility/files/FileUtils$2;

    invoke-direct {p0}, Lcom/utility/files/FileUtils$2;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAllFileRecusiveInFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 9
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static getAllFolderInPath(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lcom/utility/files/FileUtils$3;

    invoke-direct {p0}, Lcom/utility/files/FileUtils$3;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    .line 2
    invoke-static {p0, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    .line 2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v4}, Lcom/utility/files/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    :goto_1
    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static getFreeMemory(Ljava/lang/String;)J
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge p0, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getPathSDCard(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    .line 1
    :try_start_0
    invoke-static {}, Lcom/utility/files/FileUtils;->getPopularCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "SDCARD_NAME"

    const-string v3, "\\/"

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    cmp-long v1, v7, v4

    if-eqz v1, :cond_0

    .line 5
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v1, v0

    sub-int/2addr v1, v6

    aget-object v0, v0, v1

    invoke-static {p0, v2, v0}, Lcom/utility/SharedPreference;->setString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_3
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    const-string v0, "mounted"

    .line 8
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 9
    array-length v1, v0

    const/4 v7, 0x2

    if-lt v1, v7, :cond_2

    const/4 v1, 0x1

    .line 10
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_2

    .line 11
    aget-object v7, v0, v1

    if-eqz v7, :cond_1

    .line 12
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/Android/data/"

    .line 13
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    .line 14
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 15
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    cmp-long v13, v11, v4

    if-eqz v13, :cond_1

    .line 17
    :try_start_4
    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    array-length v1, v0

    sub-int/2addr v1, v6

    aget-object v0, v0, v1

    invoke-static {p0, v2, v0}, Lcom/utility/SharedPreference;->setString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 19
    :try_start_5
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 20
    :goto_2
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_2
    move-exception p0

    .line 21
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPercentageMemory(DD)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p2, p2, v0

    div-double/2addr p2, p0

    return-wide p2
.end method

.method private static getPopularCase()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "SECONDARY_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x13

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/storage/sdcard1"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v4, "/storage/extsdcard"

    aput-object v4, v0, v2

    const/4 v2, 0x2

    const-string v4, "/storage/sdcard0/external_sdcard"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "/mnt/extsdcard"

    aput-object v4, v0, v2

    const/4 v2, 0x4

    const-string v4, "/mnt/sdcard/external_sd"

    aput-object v4, v0, v2

    const/4 v2, 0x5

    const-string v4, "/mnt/external_sd"

    aput-object v4, v0, v2

    const/4 v2, 0x6

    const-string v4, "/mnt/media_rw/sdcard1"

    aput-object v4, v0, v2

    const/4 v2, 0x7

    const-string v4, "/removable/microsd"

    aput-object v4, v0, v2

    const/16 v2, 0x8

    const-string v4, "/mnt/emmc"

    aput-object v4, v0, v2

    const/16 v2, 0x9

    const-string v4, "/storage/external_SD"

    aput-object v4, v0, v2

    const/16 v2, 0xa

    const-string v4, "/storage/ext_sd"

    aput-object v4, v0, v2

    const/16 v2, 0xb

    const-string v4, "/storage/removable/sdcard1"

    aput-object v4, v0, v2

    const/16 v2, 0xc

    const-string v4, "/data/sdext"

    aput-object v4, v0, v2

    const/16 v2, 0xd

    const-string v4, "/data/sdext2"

    aput-object v4, v0, v2

    const/16 v2, 0xe

    const-string v4, "/data/sdext3"

    aput-object v4, v0, v2

    const/16 v2, 0xf

    const-string v4, "/data/sdext4"

    aput-object v4, v0, v2

    const/16 v2, 0x10

    const-string v4, "/sdcard1"

    aput-object v4, v0, v2

    const/16 v2, 0x11

    const-string v4, "/sdcard2"

    aput-object v4, v0, v2

    const/16 v2, 0x12

    const-string v4, "/storage/microsd"

    aput-object v4, v0, v2

    .line 5
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 6
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v4

    .line 9
    invoke-static {v4}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public static getSdcardName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/utility/files/FileUtils;->getPathSDCard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "SDCARD_NAME"

    const-string v2, "extSdCard"

    .line 1
    invoke-static {p0, v1, v2}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    move-object p0, v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object p0

    :catch_1
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static getThumbnailIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 4
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 5
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getTimeCreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalFileInFolder(Ljava/io/File;)I
    .locals 1

    .line 1
    new-instance v0, Lcom/utility/files/FileUtils$1;

    invoke-direct {v0}, Lcom/utility/files/FileUtils$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    array-length p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getTotalMemory(Ljava/lang/String;)J
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utility/DebugLog;->logi(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge p0, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getTotalSize([Ljava/io/File;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v4

    goto :goto_1

    :catch_0
    move-exception v4

    .line 3
    invoke-static {v4}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getUriFileSDCardV24(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TREE_URI"

    const-string v2, ""

    .line 3
    invoke-static {p0, v0, v2}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\\/"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 8
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static is7ZFile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".7z"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAPKFile(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDocumentFile(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lcom/utility/files/TypesFile;->documents:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isExistSDCard(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/utility/files/FileUtils;->getPathSDCard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFileExitedInSDCardV21(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    const-string v0, "TREE_URI"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 3
    invoke-static {p0, p1}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\\/"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6
    array-length p1, p0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v3, p0, v0

    .line 7
    invoke-virtual {v2, v3}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isHavePermissionWithTreeUri(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Permission deny"

    if-nez p0, :cond_0

    .line 1
    invoke-static {v1}, Lcom/utility/DebugLog;->logd(Ljava/lang/Object;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "TREE_URI"

    invoke-static {p0, v3, v2}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utility/DebugLog;->logd(Ljava/lang/Object;)V

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/utility/DebugLog;->logd(Ljava/lang/Object;)V

    return v0

    :cond_2
    const-string p0, "Has Permission"

    .line 6
    invoke-static {p0}, Lcom/utility/DebugLog;->logd(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isImageFile(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lcom/utility/files/TypesFile;->images:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isMusicFile(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lcom/utility/files/TypesFile;->audios:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isNomediaFolder(Ljava/io/File;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utility/files/FileUtils;->isSuperParentFolderContainNomediaFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/utility/files/FileUtils;->getPathSDCard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSuperParentFolderContainNomediaFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/."

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoMediaFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/utility/files/FileUtils;->containsNomediaFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/utility/files/FileUtils;->containsNomediaFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isTreeUri(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    const-string v0, "\\%3A"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "treeUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tree: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 4
    array-length p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidName(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    const-string v2, "\\:*?\"<>|"

    .line 1
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isVideoFile(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lcom/utility/files/TypesFile;->videos:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isZipFile(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lcom/utility/files/TypesFile;->zips:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static openFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/utility/UtilsLib;->getUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    const/high16 v2, 0x10000000

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const v2, 0x10000001

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utility/files/FileUtils;->isVideoFile(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.intent.action.VIEW"

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "video/*"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utility/files/FileUtils;->isMusicFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "audio/*"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utility/files/FileUtils;->isImageFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "image/*"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utility/files/FileUtils;->isDocumentFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".apk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "application/vnd.android.package-archive"

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utility/files/FileUtils;->isZipFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "application/zip"

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    const/4 p1, 0x1

    const-string v1, "Can\'t open file"

    .line 25
    invoke-static {p0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    if-eqz v0, :cond_7

    .line 26
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 27
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static precessRequestTreeUriPermissionResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v0, 0x478

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utility/files/FileUtils;->isTreeUri(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p0, p2, p1, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TREE_URI"

    invoke-static {p0, p2, p1}, Lcom/utility/SharedPreference;->setString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private publishProgress()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/utility/files/FileUtils;->mFileTransferListener:Lcom/utility/files/FileUtils$FileTransferListener;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    iget-wide v3, p0, Lcom/utility/files/FileUtils;->mTotalSize:J

    div-long/2addr v1, v3

    long-to-int v2, v1

    int-to-long v3, v2

    .line 3
    iget-wide v5, p0, Lcom/utility/files/FileUtils;->mCurrentProgress:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 4
    iput-wide v3, p0, Lcom/utility/files/FileUtils;->mCurrentProgress:J

    .line 5
    invoke-interface {v0, v2}, Lcom/utility/files/FileUtils$FileTransferListener;->onProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static renameFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 3

    .line 1
    invoke-static {p0, p2}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 2
    invoke-static {p0}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/utility/files/FileUtils;->renameFileSDCardV21(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isValidName(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "invalid name"

    .line 7
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 8
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/utility/R$string;->message_rename_failed_to:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p1, "File From not exist"

    .line 10
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 11
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_file_does_not_exist:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 12
    :cond_3
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p2, "File To exist"

    .line 14
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 15
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v0, Lcom/utility/R$string;->message_file_exist:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 16
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utility/files/FileUtils;->getAllFileRecusiveInFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 17
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utility/files/FileUtils;->getAllFileRecusiveInFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    invoke-static {p0, v2}, Lcom/utility/files/MediaStoreUtils;->removeFromMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_6
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const/4 v0, 0x1

    sget v2, Lcom/utility/R$string;->message_rename_success:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 23
    :cond_7
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/utility/R$string;->message_rename_failed_to:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 24
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 25
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/utility/R$string;->message_rename_failed_to:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method private static renameFileSDCardV21(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p2}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TREE_URI"

    const-string v4, ""

    .line 4
    invoke-static {p0, v2, v4}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5
    invoke-static {p0, v2}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\\/"

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8
    array-length v4, v1

    move-object v5, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v1, v2

    .line 9
    invoke-virtual {v5, v6}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v5

    if-nez v5, :cond_0

    .line 10
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_permission_denied:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 11
    :cond_2
    invoke-virtual {v2, p1}, Landroid/support/v4/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-static {p0, p2}, Lcom/utility/files/MediaStoreUtils;->removeFromMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_rename_success:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p2, v2, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 15
    :cond_3
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/utility/R$string;->message_rename_failed_to:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 16
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 17
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/utility/R$string;->message_rename_failed_to:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public static requestTreeUriPermission(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    check-cast p0, Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x478

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static saveTextToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-static {p0}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_permission_denied:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "TREE_URI"

    const-string v3, ""

    .line 4
    invoke-static {p0, v0, v3}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 6
    invoke-static {p0, p1}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "\\/"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v5, v3

    sub-int/2addr v5, v1

    if-ge v0, v5, :cond_2

    .line 10
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v5

    if-nez v5, :cond_1

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDirectory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/utility/DebugLog;->logd(Ljava/lang/Object;)V

    .line 12
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/utility/files/FileUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utility/DebugLog;->logd(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0, p1}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v3}, Landroid/support/v4/provider/DocumentFile;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 17
    invoke-virtual {v3}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    :cond_4
    const-string v3, "*/*"

    .line 18
    invoke-virtual {v0, v3, p1}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFile Uri : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utility/DebugLog;->logd(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_save_to_file_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 22
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string v3, "w"

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 24
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 25
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 27
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_save_to_file_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 28
    :cond_6
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 29
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 30
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 31
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    :goto_2
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_save_file_success:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 34
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    sget p2, Lcom/utility/R$string;->message_save_to_file_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method

.method public static writeFileOutPutStream(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x400

    .line 2
    :try_start_0
    new-array p0, p0, [B

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p1, p0, v2, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public cancelTransfer()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/utility/files/FileUtils;->cancel:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 4
    iput-object v1, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 7
    iput-object v1, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public copyFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 8

    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-boolean v0, p0, Lcom/utility/files/FileUtils;->cancel:Z

    .line 8
    invoke-static {p1, p3}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 9
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/utility/files/FileUtils;->copyFileToSDCardV21(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 12
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_file_does_not_exist:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 14
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_3

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 17
    :cond_3
    iget-object p3, p0, Lcom/utility/files/FileUtils;->mFileTransferListener:Lcom/utility/files/FileUtils$FileTransferListener;

    if-nez p3, :cond_7

    .line 18
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    iput-object p2, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    .line 19
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    iput-object p2, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    .line 20
    :try_start_1
    iget-object v2, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x0

    iget-object p3, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    iget-object v7, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    iget-object p3, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    if-eqz p3, :cond_4

    .line 22
    iget-object p3, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->close()V

    .line 23
    iput-object p2, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    .line 24
    :cond_4
    iget-object p3, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    if-eqz p3, :cond_9

    .line 25
    iget-object p3, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->close()V

    .line 26
    iput-object p2, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    goto :goto_1

    :catchall_0
    move-exception p3

    .line 27
    iget-object v1, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_5

    .line 28
    iget-object v1, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 29
    iput-object p2, p0, Lcom/utility/files/FileUtils;->inChannel:Ljava/nio/channels/FileChannel;

    .line 30
    :cond_5
    iget-object v1, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_6

    .line 31
    iget-object v1, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 32
    iput-object p2, p0, Lcom/utility/files/FileUtils;->outChannel:Ljava/nio/channels/FileChannel;

    :cond_6
    throw p3

    .line 33
    :cond_7
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 34
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    .line 35
    new-array v2, v2, [B

    .line 36
    :goto_0
    invoke-virtual {p3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    iget-boolean v4, p0, Lcom/utility/files/FileUtils;->cancel:Z

    if-nez v4, :cond_8

    .line 37
    invoke-virtual {p2, v2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 38
    iget-wide v4, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    .line 39
    invoke-direct {p0}, Lcom/utility/files/FileUtils;->publishProgress()V

    goto :goto_0

    .line 40
    :cond_8
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    .line 41
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 42
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 43
    :cond_9
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const/4 p3, 0x1

    sget v1, Lcom/utility/R$string;->message_copy_success:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    .line 45
    :catch_0
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_copy_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public copyFileOrFolder(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const-string p3, "Context is NULL"

    invoke-direct {p2, v0, p3}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/utility/files/FileUtils;->setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V

    return-object p2

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p1, p3}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 4
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/utility/files/FileUtils;->setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V

    return-object p2

    .line 7
    :cond_1
    :try_start_2
    iput-boolean v0, p0, Lcom/utility/files/FileUtils;->cancel:Z

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/utility/files/FileUtils;->mFileTransferListener:Lcom/utility/files/FileUtils$FileTransferListener;

    if-eqz v2, :cond_2

    .line 10
    invoke-static {p2}, Lcom/utility/files/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/utility/files/FileUtils;->mTotalSize:J

    .line 11
    iput-wide v3, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    .line 12
    iput-wide v3, p0, Lcom/utility/files/FileUtils;->mCurrentProgress:J

    .line 13
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/utility/files/FileUtils;->copyFolder(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/utility/files/FileUtils;->mFileTransferListener:Lcom/utility/files/FileUtils$FileTransferListener;

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/utility/files/FileUtils;->mTotalSize:J

    .line 16
    iput-wide v3, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    .line 17
    iput-wide v3, p0, Lcom/utility/files/FileUtils;->mCurrentProgress:J

    .line 18
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/utility/files/FileUtils;->copyFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :goto_0
    invoke-virtual {p0, v1}, Lcom/utility/files/FileUtils;->setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 20
    :try_start_3
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 21
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_copy_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    invoke-virtual {p0, v1}, Lcom/utility/files/FileUtils;->setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V

    return-object p2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/utility/files/FileUtils;->setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V

    throw p1
.end method

.method public copyFilesInFolderByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/utility/files/FileUtils$FileType;)Lcom/utility/files/FileUtilsResult;
    .locals 4

    .line 1
    invoke-static {p1, p3}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/utility/files/FileUtils;->cancel:Z

    .line 5
    invoke-static {p2, p4}, Lcom/utility/files/FileUtils;->getAllFileInPathByType(Ljava/lang/String;Lcom/utility/files/FileUtils$FileType;)[Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 6
    array-length v0, p4

    if-lez v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/utility/files/FileUtils;->mFileTransferListener:Lcom/utility/files/FileUtils$FileTransferListener;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p4}, Lcom/utility/files/FileUtils;->getTotalSize([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/utility/files/FileUtils;->mTotalSize:J

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    .line 10
    iput-wide v2, p0, Lcom/utility/files/FileUtils;->mCurrentProgress:J

    .line 11
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/utility/files/FileUtils;->createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_2

    .line 15
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_copy_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 16
    :cond_2
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_4

    aget-object v2, p4, p3

    .line 17
    iget-boolean v3, p0, Lcom/utility/files/FileUtils;->cancel:Z

    if-nez v3, :cond_3

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/utility/files/FileUtils;->copyFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 20
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_copy_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p0, p2}, Lcom/utility/files/FileUtils;->setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V

    .line 22
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_copy_success:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public deleteFileOrFolder(Landroid/content/Context;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/utility/files/FileUtilsResult;

    const-string p2, "Context is NULL"

    invoke-direct {p1, v0, p2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 3
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/utility/files/FileUtils;->deleteFileV21(Landroid/content/Context;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    :cond_2
    const/4 v0, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/utility/files/FileUtils;->deleteFolder(Landroid/content/Context;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_success:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 11
    :cond_4
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 12
    :catch_0
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v1, Lcom/utility/R$string;->message_delete_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public deleteFilesInFolderByType(Landroid/content/Context;Ljava/lang/String;Lcom/utility/files/FileUtils$FileType;)Lcom/utility/files/FileUtilsResult;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Context is NULL"

    .line 1
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 2
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 4
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 6
    :cond_1
    invoke-static {p2, p3}, Lcom/utility/files/FileUtils;->getAllFileInPathByType(Ljava/lang/String;Lcom/utility/files/FileUtils$FileType;)[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 7
    array-length p3, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    aget-object v2, p2, v1

    .line 8
    invoke-virtual {p0, p1, v2}, Lcom/utility/files/FileUtils;->deleteFileOrFolder(Landroid/content/Context;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_delete_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_delete_success:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 11
    :cond_4
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_delete_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public extractFileCompress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p2, v2, :cond_1

    .line 4
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/utility/files/FileUtils;->extractFileToSdcardV21(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v0, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v0, Lcom/utility/R$string;->message_file_exist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 9
    :cond_2
    :try_start_0
    new-instance p2, Ljava/util/zip/ZipFile;

    invoke-direct {p2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 10
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p3

    .line 11
    :goto_0
    invoke-interface {p3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {p3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 13
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 17
    invoke-virtual {p2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    invoke-static {v0, v2}, Lcom/utility/files/FileUtils;->copyExtractFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 20
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 21
    :cond_4
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const/4 p3, 0x1

    sget v0, Lcom/utility/R$string;->message_extract_success:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public moveFileOrFolder(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v1, p0, Lcom/utility/files/FileUtils;->cancel:Z

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/utility/files/FileUtils;->copyFileOrFolder(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/utility/files/FileUtils;->cancel:Z

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/utility/files/FileUtils;->deleteFileOrFolder(Landroid/content/Context;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "DELETE FAILED"

    .line 6
    invoke-static {v2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 7
    new-instance v2, Lcom/utility/files/FileUtilsResult;

    sget v3, Lcom/utility/R$string;->message_move_failed:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "COPY FAILED"

    .line 8
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 9
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget v2, Lcom/utility/R$string;->message_move_failed:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    move-object p2, v0

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const/4 p3, 0x1

    sget v2, Lcom/utility/R$string;->message_move_success:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p3, v2}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_move_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v1, p3}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 13
    :try_start_1
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 14
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_move_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    invoke-virtual {p0, v0}, Lcom/utility/files/FileUtils;->setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V

    return-object p2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/utility/files/FileUtils;->setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V

    throw p1
.end method

.method public moveFilesInFolderByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/utility/files/FileUtils$FileType;)Lcom/utility/files/FileUtilsResult;
    .locals 4

    .line 1
    invoke-static {p1, p3}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 2
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/utility/files/FileUtils;->cancel:Z

    .line 5
    invoke-static {p2, p4}, Lcom/utility/files/FileUtils;->getAllFileInPathByType(Ljava/lang/String;Lcom/utility/files/FileUtils$FileType;)[Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 6
    array-length v0, p4

    if-lez v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/utility/files/FileUtils;->mFileTransferListener:Lcom/utility/files/FileUtils$FileTransferListener;

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p4}, Lcom/utility/files/FileUtils;->getTotalSize([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/utility/files/FileUtils;->mTotalSize:J

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    .line 10
    iput-wide v2, p0, Lcom/utility/files/FileUtils;->mCurrentProgress:J

    .line 11
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/utility/files/FileUtils;->createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    .line 14
    :cond_3
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_6

    aget-object v2, p4, p3

    .line 15
    iget-boolean v3, p0, Lcom/utility/files/FileUtils;->cancel:Z

    if-nez v3, :cond_5

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/utility/files/FileUtils;->copyFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {p0, p1, v2}, Lcom/utility/files/FileUtils;->deleteFileOrFolder(Landroid/content/Context;Ljava/io/File;)Lcom/utility/files/FileUtilsResult;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/utility/files/FileUtilsResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_5

    .line 20
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_move_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 21
    :cond_4
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_move_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p0, p2}, Lcom/utility/files/FileUtils;->setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V

    .line 23
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_move_success:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public setFileTransferListener(Lcom/utility/files/FileUtils$FileTransferListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/utility/files/FileUtils;->mFileTransferListener:Lcom/utility/files/FileUtils$FileTransferListener;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/utility/files/FileUtils;->mTotalSize:J

    .line 3
    iput-wide v0, p0, Lcom/utility/files/FileUtils;->mTransferred:J

    .line 4
    iput-wide v0, p0, Lcom/utility/files/FileUtils;->mCurrentProgress:J

    return-void
.end method

.method public zipAtFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v0, ""

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/utility/files/FileUtils;->addTreeFileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 4
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 5
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method

.method public zipFileToSDCardV21(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, "TREE_URI"

    .line 3
    invoke-static {p1, v3, v2}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4
    invoke-static {p1, v3}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    .line 5
    invoke-static {p1, p3}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const-string v4, "\\/"

    .line 7
    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 8
    array-length v4, p3

    move-object v6, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, p3, v3

    .line 9
    invoke-virtual {v6, v7}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, "*/*"

    .line 10
    invoke-virtual {v6, v8, v7}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v6

    .line 11
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 12
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/utility/R$string;->message_copy_file_exist_destination:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 13
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {v3}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "w"

    invoke-virtual {p3, v1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, p3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    invoke-direct {p0, v2, p2, v1}, Lcom/utility/files/FileUtils;->addTreeFileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v1, p3

    :goto_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :goto_3
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_zip_success:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public zipFolderOrFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/utility/files/FileUtils;->zipFileToSDCardV21(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const/4 p3, 0x0

    sget v0, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/utility/files/FileUtils;->zipAtFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p3}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const/4 p3, 0x1

    sget v0, Lcom/utility/R$string;->message_zip_success:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public zipMultiFileAndFolder(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p0, v2, v1, p2}, Lcom/utility/files/FileUtils;->addTreeFileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 6
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method

.method public zipMultiFileToSDCardV21(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/utility/files/FileUtilsResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "TREE_URI"

    .line 2
    invoke-static {p1, v2, v1}, Lcom/utility/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3
    invoke-static {p1, v2}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    .line 4
    invoke-static {p1, p3}, Lcom/utility/files/FileUtils;->getTargetSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "\\/"

    .line 6
    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 7
    array-length v3, p3

    move-object v5, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, p3, v2

    .line 8
    invoke-virtual {v5, v6}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "*/*"

    .line 9
    invoke-virtual {v5, v7, v6}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v7

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 10
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {v2}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, p3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :goto_2
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_3

    .line 13
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, v1, p3, v2}, Lcom/utility/files/FileUtils;->addTreeFileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :try_start_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object v2, p3

    :goto_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_4
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_zip_success:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public zipMultiFolderOrFile(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/utility/files/FileUtilsResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/utility/files/FileUtils;->isSDCardPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 2
    invoke-static {p1}, Lcom/utility/files/FileUtils;->isHavePermissionWithTreeUri(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/utility/files/FileUtils;->zipMultiFileToSDCardV21(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/utility/files/FileUtilsResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    sget p3, Lcom/utility/R$string;->message_need_sdcard_access_permission:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/utility/files/FileUtils;->zipMultiFileAndFolder(Ljava/util/List;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p3}, Lcom/utility/files/MediaStoreUtils;->addToMediaStore(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    new-instance p2, Lcom/utility/files/FileUtilsResult;

    const/4 p3, 0x1

    sget v0, Lcom/utility/R$string;->message_zip_success:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/utility/files/FileUtilsResult;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method
