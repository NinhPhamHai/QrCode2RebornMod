.class final synthetic Lcom/google/android/gms/internal/ads/zzcox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgfr:Lcom/google/android/gms/internal/ads/zzcfo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzgfr:Lcom/google/android/gms/internal/ads/zzcfo;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcfo;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcox;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcox;-><init>(Lcom/google/android/gms/internal/ads/zzcfo;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzgfr:Lcom/google/android/gms/internal/ads/zzcfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfo;->zzamy()V

    return-void
.end method
