.class public final Lcom/journeyapps/barcodescanner/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/a/n$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "n"


# instance fields
.field private b:Landroid/hardware/Camera;

.field private c:Landroid/hardware/Camera$CameraInfo;

.field private d:Lcom/journeyapps/barcodescanner/a/d;

.field private e:Lcom/google/zxing/client/android/AmbientLightManager;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/journeyapps/barcodescanner/a/o;

.field private i:Lcom/journeyapps/barcodescanner/a/s;

.field private j:Lcom/journeyapps/barcodescanner/D;

.field private k:Lcom/journeyapps/barcodescanner/D;

.field private l:I

.field private m:Landroid/content/Context;

.field private final n:Lcom/journeyapps/barcodescanner/a/n$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/journeyapps/barcodescanner/a/o;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/a/o;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/journeyapps/barcodescanner/a/n;->l:I

    .line 4
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->m:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/journeyapps/barcodescanner/a/n$a;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/a/n$a;-><init>(Lcom/journeyapps/barcodescanner/a/n;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->n:Lcom/journeyapps/barcodescanner/a/n$a;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/D;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    new-instance v0, Lcom/journeyapps/barcodescanner/D;

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, p0}, Lcom/journeyapps/barcodescanner/D;-><init>(II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 8
    new-instance v2, Lcom/journeyapps/barcodescanner/D;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lcom/journeyapps/barcodescanner/D;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a(I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/a/n;->m()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object p1, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    const-string v0, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial camera parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 7
    sget-object v1, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    const-string v2, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/a/o;->a()Lcom/journeyapps/barcodescanner/a/o$a;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setFocus(Landroid/hardware/Camera$Parameters;Lcom/journeyapps/barcodescanner/a/o$a;Z)V

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 9
    invoke-static {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 10
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/a/o;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setInvertColor(Landroid/hardware/Camera$Parameters;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/a/o;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/a/o;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt p1, v1, :cond_4

    .line 16
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setVideoStabilization(Landroid/hardware/Camera$Parameters;)V

    .line 17
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setFocusArea(Landroid/hardware/Camera$Parameters;)V

    .line 18
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setMetering(Landroid/hardware/Camera$Parameters;)V

    .line 19
    :cond_4
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/a/n;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->j:Lcom/journeyapps/barcodescanner/D;

    goto :goto_0

    .line 22
    :cond_5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->i:Lcom/journeyapps/barcodescanner/a/s;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/a/n;->g()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/journeyapps/barcodescanner/a/s;->a(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/D;

    move-result-object p1

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->j:Lcom/journeyapps/barcodescanner/D;

    .line 23
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->j:Lcom/journeyapps/barcodescanner/D;

    iget v1, p1, Lcom/journeyapps/barcodescanner/D;->a:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/D;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 24
    :goto_0
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "glass-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setBestPreviewFPS(Landroid/hardware/Camera$Parameters;)V

    .line 26
    :cond_6
    sget-object p1, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final camera parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private l()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->i:Lcom/journeyapps/barcodescanner/a/s;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/s;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10e

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    .line 2
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->c:Landroid/hardware/Camera$CameraInfo;

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v1, :cond_4

    .line 3
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    .line 4
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 5
    :cond_4
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 6
    :goto_1
    sget-object v1, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera Display Orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private m()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->g:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private n()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/a/n;->l()I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/a/n;->l:I

    .line 2
    iget v0, p0, Lcom/journeyapps/barcodescanner/a/n;->l:I

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/a/n;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    const-string v1, "Failed to set rotation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 4
    :try_start_1
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/a/n;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x1

    .line 5
    :try_start_2
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/a/n;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 6
    :catch_2
    sget-object v0, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    const-string v1, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->j:Lcom/journeyapps/barcodescanner/D;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->k:Lcom/journeyapps/barcodescanner/D;

    goto :goto_2

    .line 9
    :cond_0
    new-instance v1, Lcom/journeyapps/barcodescanner/D;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/journeyapps/barcodescanner/D;-><init>(II)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->k:Lcom/journeyapps/barcodescanner/D;

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->n:Lcom/journeyapps/barcodescanner/a/n$a;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->k:Lcom/journeyapps/barcodescanner/D;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/n$a;->a(Lcom/journeyapps/barcodescanner/D;)V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 30
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 31
    invoke-static {v0, p1, p2}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setZoom(Landroid/hardware/Camera$Parameters;D)V

    .line 32
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    sget-object p2, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    const-string v0, "Failed to set torch"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/o;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/p;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/a/p;->a(Landroid/hardware/Camera;)V

    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/s;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->i:Lcom/journeyapps/barcodescanner/a/s;

    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/v;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 11
    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/a/n;->f:Z

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->n:Lcom/journeyapps/barcodescanner/a/n$a;

    invoke-virtual {v1, p1}, Lcom/journeyapps/barcodescanner/a/n$a;->a(Lcom/journeyapps/barcodescanner/a/v;)V

    .line 13
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->n:Lcom/journeyapps/barcodescanner/a/n$a;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/a/n;->h()Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->d:Lcom/journeyapps/barcodescanner/a/d;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->d:Lcom/journeyapps/barcodescanner/a/d;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/d;->b()V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 21
    invoke-static {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 22
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/a/o;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-static {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setBestExposure(Landroid/hardware/Camera$Parameters;Z)V

    :cond_1
    const-wide/high16 v1, 0x4022000000000000L    # 9.0

    .line 24
    invoke-static {v0, v1, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setZoom(Landroid/hardware/Camera$Parameters;D)V

    .line 25
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 26
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->d:Lcom/journeyapps/barcodescanner/a/d;

    if-eqz p1, :cond_2

    .line 27
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/n;->d:Lcom/journeyapps/barcodescanner/a/d;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/a/d;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    sget-object v0, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    const-string v1, "Failed to set torch"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/a/n;->n()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera not open"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/a/n;->l:I

    return v0
.end method

.method public e()Lcom/journeyapps/barcodescanner/D;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->k:Lcom/journeyapps/barcodescanner/D;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/a/n;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->k:Lcom/journeyapps/barcodescanner/D;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/D;->a()Lcom/journeyapps/barcodescanner/D;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->k:Lcom/journeyapps/barcodescanner/D;

    return-object v0
.end method

.method public f()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->getZoom(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 4
    sget-object v3, Lcom/journeyapps/barcodescanner/a/n;->a:Ljava/lang/String;

    const-string v4, "Failed to set torch"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-wide v1
.end method

.method public g()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/a/n;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rotation not calculated yet. Call configure() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "on"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/o;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/o;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->getCameraId(I)I

    move-result v0

    .line 4
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->c:Landroid/hardware/Camera$CameraInfo;

    .line 5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->c:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to open camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/a/n;->f:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/n;->f:Z

    .line 5
    new-instance v0, Lcom/journeyapps/barcodescanner/a/d;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/a/d;-><init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/a/o;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->d:Lcom/journeyapps/barcodescanner/a/d;

    .line 6
    new-instance v0, Lcom/google/zxing/client/android/AmbientLightManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/a/n;->h:Lcom/journeyapps/barcodescanner/a/o;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/zxing/client/android/AmbientLightManager;-><init>(Landroid/content/Context;Lcom/journeyapps/barcodescanner/a/n;Lcom/journeyapps/barcodescanner/a/o;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->e:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->e:Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->start()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->d:Lcom/journeyapps/barcodescanner/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/d;->b()V

    .line 3
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->d:Lcom/journeyapps/barcodescanner/a/d;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->e:Lcom/google/zxing/client/android/AmbientLightManager;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->stop()V

    .line 6
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/a/n;->e:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/journeyapps/barcodescanner/a/n;->f:Z

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 9
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n;->n:Lcom/journeyapps/barcodescanner/a/n$a;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/n$a;->a(Lcom/journeyapps/barcodescanner/a/v;)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/n;->f:Z

    :cond_2
    return-void
.end method
