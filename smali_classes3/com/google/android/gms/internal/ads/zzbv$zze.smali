.class public final Lcom/google/android/gms/internal/ads/zzbv$zze;
.super Lcom/google/android/gms/internal/ads/zzecd;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbv$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzecd<",
        "Lcom/google/android/gms/internal/ads/zzbv$zze;",
        "Lcom/google/android/gms/internal/ads/zzbv$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzedq;"
    }
.end annotation


# static fields
.field private static volatile zzea:Lcom/google/android/gms/internal/ads/zzedx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzedx<",
            "Lcom/google/android/gms/internal/ads/zzbv$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlt:Lcom/google/android/gms/internal/ads/zzbv$zze;


# instance fields
.field private zzdl:I

.field private zzfa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbv$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbv$zze;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbv$zze;->zzlt:Lcom/google/android/gms/internal/ads/zzbv$zze;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/ads/zzbv$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzecd;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzecd;)V

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzecd;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbv$zze;->zzfa:Ljava/lang/String;

    .line 3
    return-void
.end method

.method static synthetic zzbl()Lcom/google/android/gms/internal/ads/zzbv$zze;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbv$zze;->zzlt:Lcom/google/android/gms/internal/ads/zzbv$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbu;->zzdk:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 21
    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbv$zze;->zzea:Lcom/google/android/gms/internal/ads/zzedx;

    .line 12
    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/zzbv$zze;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbv$zze;->zzea:Lcom/google/android/gms/internal/ads/zzedx;

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzecd$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbv$zze;->zzlt:Lcom/google/android/gms/internal/ads/zzbv$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzecd$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzecd;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/zzbv$zze;->zzea:Lcom/google/android/gms/internal/ads/zzedx;

    .line 18
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 19
    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbv$zze;->zzlt:Lcom/google/android/gms/internal/ads/zzbv$zze;

    return-object p1

    .line 7
    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdl"

    aput-object v0, p1, p2

    const-string p2, "zzfa"

    aput-object p2, p1, p3

    .line 8
    nop

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbv$zze;->zzlt:Lcom/google/android/gms/internal/ads/zzbv$zze;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0008\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbv$zze;->zza(Lcom/google/android/gms/internal/ads/zzedo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbv$zze$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbv$zze$zza;-><init>(Lcom/google/android/gms/internal/ads/zzbu;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbv$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbv$zze;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
