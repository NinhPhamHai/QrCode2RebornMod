.class public Lcom/google/android/gms/internal/ads/zzdns;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static zzhdp:Lcom/google/android/gms/internal/ads/zzdnr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdp:Lcom/google/android/gms/internal/ads/zzdnr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdns;->zzb(Landroid/os/Message;)V

    .line 8
    return-void
.end method

.method protected zzb(Landroid/os/Message;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 10
    return-void
.end method
