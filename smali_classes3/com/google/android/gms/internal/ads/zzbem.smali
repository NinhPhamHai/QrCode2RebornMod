.class final synthetic Lcom/google/android/gms/internal/ads/zzbem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeii:Lcom/google/android/gms/internal/ads/zzbej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbej;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzeii:Lcom/google/android/gms/internal/ads/zzbej;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzeii:Lcom/google/android/gms/internal/ads/zzbej;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbej;->zzehs:Lcom/google/android/gms/internal/ads/zzbek;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbek;->zzabs()V

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbej;->zzehs:Lcom/google/android/gms/internal/ads/zzbek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbek;->zzabf()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzui()V

    .line 6
    :cond_0
    return-void
.end method
