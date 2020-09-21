.class public Lcom/barcodescanner/codegeneratorx88/reader/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/barcodescanner/codegeneratorx88/reader/b/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    .line 3
    :cond_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.READ_CALENDAR"

    .line 5
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "android.permission.WRITE_CALENDAR"

    .line 6
    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "android.permission.CALL_PHONE"

    .line 1
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "android.permission.CAMERA"

    .line 1
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public d(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/content/Context;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v2, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 4
    :cond_2
    :goto_0
    instance-of v2, p1, Landroid/app/Activity;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 5
    check-cast p1, Landroid/app/Activity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    aput-object v3, v2, v1

    const/16 v0, 0x3eb

    invoke-static {p1, v2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_3
    return v4
.end method

.method public f(Landroid/content/Context;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0x3f2

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x3ef

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public h(Landroid/content/Context;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3eb

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0x3f4

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
