.class public final Lcom/google/android/gms/internal/ads/zzday;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdak<",
        "Lcom/google/android/gms/internal/ads/zzdav;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzfky:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgpa:Lcom/google/android/gms/internal/ads/zzavz;

.field private final zzvf:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzavz;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzday;->zzgpa:Lcom/google/android/gms/internal/ads/zzavz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzday;->zzvf:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzday;->zzfky:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzday;->executor:Ljava/util/concurrent/Executor;

    .line 6
    return-void
.end method


# virtual methods
.method public final zzaqa()Lcom/google/android/gms/internal/ads/zzdri;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdri<",
            "Lcom/google/android/gms/internal/ads/zzdav;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzzz;->zzclq:Lcom/google/android/gms/internal/ads/zzzk;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvj;->zzpv()Lcom/google/android/gms/internal/ads/zzzv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzv;->zzd(Lcom/google/android/gms/internal/ads/zzzk;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    nop

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzday;->zzgpa:Lcom/google/android/gms/internal/ads/zzavz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzday;->zzvf:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzavz;->zzak(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqr;->zzg(Lcom/google/android/gms/internal/ads/zzdri;)Lcom/google/android/gms/internal/ads/zzdqr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdax;->zzdsc:Lcom/google/android/gms/internal/ads/zzdnx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzday;->executor:Ljava/util/concurrent/Executor;

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqr;->zza(Lcom/google/android/gms/internal/ads/zzdnx;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdqr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzzz;->zzclr:Lcom/google/android/gms/internal/ads/zzzk;

    .line 13
    nop

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvj;->zzpv()Lcom/google/android/gms/internal/ads/zzzv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzzv;->zzd(Lcom/google/android/gms/internal/ads/zzzk;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzday;->zzfky:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdqr;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdqr;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdba;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdba;-><init>(Lcom/google/android/gms/internal/ads/zzday;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzday;->executor:Ljava/util/concurrent/Executor;

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdqr;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdnx;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdqr;

    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Did not ad Ad ID into query param."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdri;

    move-result-object v0

    .line 20
    return-object v0
.end method

.method final synthetic zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdav;
    .locals 2

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvj;->zzpr()Lcom/google/android/gms/internal/ads/zzazm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzday;->zzvf:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazm;->zzbl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdav;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdav;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;)V

    return-object v0
.end method
