.class public final Lcom/google/android/gms/measurement/internal/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzfr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    return-void
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 4

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 12
    const/4 p0, 0x1

    return p0

    .line 13
    :cond_1
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    :goto_0
    return v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 16
    nop

    .line 17
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzx;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    .line 18
    nop

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzr()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    .line 20
    if-nez p2, :cond_0

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzi()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    const-string p2, "Receiver called with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)V

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    .line 24
    nop

    .line 25
    nop

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 27
    nop

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzx()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    const-string v2, "Local receiver got"

    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 32
    nop

    .line 34
    nop

    .line 35
    const-string v2, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 36
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzx()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    const-string v1, "Starting wakeful intent."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfr;->doStartService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    return-void

    :cond_1
    const-string p1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzi()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    const-string p2, "Install Referrer Broadcasts are deprecated"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)V

    .line 41
    :cond_2
    return-void
.end method
