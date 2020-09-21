.class public Lcom/journeyapps/barcodescanner/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "r"

.field private static b:I = 0xfa


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/google/zxing/client/android/InactivityTimer;

.field private i:Lcom/google/zxing/client/android/BeepManager;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Lcom/journeyapps/barcodescanner/a;

.field private final m:Lcom/journeyapps/barcodescanner/j$a;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/journeyapps/barcodescanner/r;->e:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->f:Z

    .line 4
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->g:Z

    .line 5
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->k:Z

    .line 6
    new-instance v1, Lcom/journeyapps/barcodescanner/l;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/l;-><init>(Lcom/journeyapps/barcodescanner/r;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/r;->l:Lcom/journeyapps/barcodescanner/a;

    .line 7
    new-instance v1, Lcom/journeyapps/barcodescanner/m;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/m;-><init>(Lcom/journeyapps/barcodescanner/r;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/r;->m:Lcom/journeyapps/barcodescanner/j$a;

    .line 8
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->n:Z

    .line 9
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    .line 10
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 11
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object p2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->m:Lcom/journeyapps/barcodescanner/j$a;

    invoke-virtual {p2, v0}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/j$a;)V

    .line 12
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/r;->j:Landroid/os/Handler;

    .line 13
    new-instance p2, Lcom/google/zxing/client/android/InactivityTimer;

    new-instance v0, Lcom/journeyapps/barcodescanner/n;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/n;-><init>(Lcom/journeyapps/barcodescanner/r;)V

    invoke-direct {p2, p1, v0}, Lcom/google/zxing/client/android/InactivityTimer;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/r;->h:Lcom/google/zxing/client/android/InactivityTimer;

    .line 14
    new-instance p2, Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {p2, p1}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/r;->i:Lcom/google/zxing/client/android/BeepManager;

    return-void
.end method

.method public static a(Lcom/journeyapps/barcodescanner/b;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/b;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/b;->a()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/b;->c()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, "SCAN_RESULT_BYTES"

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/b;->e()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 30
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    .line 32
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT_UPC_EAN_EXTENSION"

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    :cond_1
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    :cond_2
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :cond_3
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    .line 39
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string p0, "SCAN_RESULT_IMAGE_PATH"

    .line 41
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    return-object v0
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/r;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/journeyapps/barcodescanner/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/r;)Lcom/google/zxing/client/android/BeepManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/r;->i:Lcom/google/zxing/client/android/BeepManager;

    return-object p0
.end method

.method private b(Lcom/journeyapps/barcodescanner/b;)Ljava/lang/String;
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->f:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/b;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    :try_start_0
    const-string v0, "barcodeimage"

    const-string v1, ".jpg"

    .line 4
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    sget-object v0, Lcom/journeyapps/barcodescanner/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create temporary file and store bitmap! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/r;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/r;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/r;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/r;->k:Z

    return p0
.end method

.method static synthetic e(Lcom/journeyapps/barcodescanner/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/r;->j()V

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private k()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c()V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->n:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    sget v1, Lcom/journeyapps/barcodescanner/r;->b:I

    invoke-static {v0, v3, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 5
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/r;->n:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    .line 17
    sget p2, Lcom/journeyapps/barcodescanner/r;->b:I

    if-ne p1, p2, :cond_1

    .line 18
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c()V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/r;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    const-string v1, "SAVED_ORIENTATION_LOCK"

    .line 5
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/journeyapps/barcodescanner/r;->e:I

    :cond_0
    if-eqz p1, :cond_5

    const/4 p2, 0x1

    const-string v0, "SCAN_ORIENTATION_LOCKED"

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/r;->e()V

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Landroid/content/Intent;)V

    :cond_2
    const-string v0, "BEEP_ENABLED"

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->i:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/BeepManager;->setBeepEnabled(Z)V

    :cond_3
    const-string v0, "TIMEOUT"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    new-instance v2, Lcom/journeyapps/barcodescanner/o;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/o;-><init>(Lcom/journeyapps/barcodescanner/r;)V

    .line 14
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/r;->j:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const-string v0, "BARCODE_IMAGE_ENABLED"

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iput-boolean p2, p0, Lcom/journeyapps/barcodescanner/r;->f:Z

    :cond_5
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    iget v0, p0, Lcom/journeyapps/barcodescanner/r;->e:I

    const-string v1, "SAVED_ORIENTATION_LOCK"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Lcom/journeyapps/barcodescanner/b;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/r;->b(Lcom/journeyapps/barcodescanner/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/r;->a(Lcom/journeyapps/barcodescanner/b;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/r;->b()V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/r;->j()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->k:Z

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a()V

    .line 14
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->h:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/r;->l:Lcom/journeyapps/barcodescanner/a;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b(Lcom/journeyapps/barcodescanner/a;)V

    return-void
.end method

.method protected d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    sget v2, Lcom/google/zxing/client/android/R$string;->zxing_app_name:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    sget v2, Lcom/google/zxing/client/android/R$string;->zxing_msg_camera_framework_bug:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6
    sget v1, Lcom/google/zxing/client/android/R$string;->zxing_button_ok:I

    new-instance v2, Lcom/journeyapps/barcodescanner/p;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/p;-><init>(Lcom/journeyapps/barcodescanner/r;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    new-instance v1, Lcom/journeyapps/barcodescanner/q;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/q;-><init>(Lcom/journeyapps/barcodescanner/r;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 5

    .line 2
    iget v0, p0, Lcom/journeyapps/barcodescanner/r;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_4

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_4

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 6
    :cond_4
    :goto_1
    iput v3, p0, Lcom/journeyapps/barcodescanner/r;->e:I

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    iget v1, p0, Lcom/journeyapps/barcodescanner/r;->e:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/r;->g:Z

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->h:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->h:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/r;->k()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/r;->h:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->start()V

    return-void
.end method

.method protected i()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TIMEOUT"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/r;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/r;->b()V

    return-void
.end method
