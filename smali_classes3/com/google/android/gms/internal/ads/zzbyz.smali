.class final Lcom/google/android/gms/internal/ads/zzbyz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaga<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private zzfqq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbyx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbyx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfqq:Ljava/lang/ref/WeakReference;

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyx;Lcom/google/android/gms/internal/ads/zzbyw;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyz;-><init>(Lcom/google/android/gms/internal/ads/zzbyx;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfqq:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyx;

    .line 5
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    const-string v0, "eventName"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 8
    const-string v0, "_ac"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyx;->zzb(Lcom/google/android/gms/internal/ads/zzbyx;)Lcom/google/android/gms/internal/ads/zzbqw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqw;->onAdClicked()V

    .line 10
    :cond_1
    return-void
.end method
