.class public final Lcom/google/android/gms/internal/measurement/zzji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzcn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzcn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzct;

    .line 6
    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzck;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzct;-><init>(Landroid/net/Uri;)V

    .line 7
    const/4 v1, 0x0

    const-string v2, "measurement.service.configurable_service_limits"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzct;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcn;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzji;->zza:Lcom/google/android/gms/internal/measurement/zzcn;

    .line 8
    const-string v2, "measurement.client.configurable_service_limits"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzct;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Lcom/google/android/gms/internal/measurement/zzcn;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    return v0
.end method

.method public final zzb()Z
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzji;->zza:Lcom/google/android/gms/internal/measurement/zzcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcn;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Lcom/google/android/gms/internal/measurement/zzcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcn;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
