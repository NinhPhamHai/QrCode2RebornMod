.class final synthetic Lcom/google/android/gms/internal/ads/zzcoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfjm:Lcom/google/android/gms/internal/ads/zzdgo;

.field private final zzfvc:Lcom/google/android/gms/internal/ads/zzdha;

.field private final zzgfh:Lcom/google/android/gms/internal/ads/zzcom;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzdha;Lcom/google/android/gms/internal/ads/zzdgo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzgfh:Lcom/google/android/gms/internal/ads/zzcom;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzfvc:Lcom/google/android/gms/internal/ads/zzdha;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzfjm:Lcom/google/android/gms/internal/ads/zzdgo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzgfh:Lcom/google/android/gms/internal/ads/zzcom;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzfvc:Lcom/google/android/gms/internal/ads/zzdha;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzfjm:Lcom/google/android/gms/internal/ads/zzdgo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcom;->zzd(Lcom/google/android/gms/internal/ads/zzdha;Lcom/google/android/gms/internal/ads/zzdgo;)V

    return-void
.end method
