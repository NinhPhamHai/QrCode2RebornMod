.class final Lcom/google/android/gms/internal/ads/zzbdj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzegm:Lcom/google/android/gms/internal/ads/zzbdk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdj;->zzegm:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzls()Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdj;->zzegm:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzb(Lcom/google/android/gms/internal/ads/zzbdk;)V

    .line 4
    return-void
.end method
