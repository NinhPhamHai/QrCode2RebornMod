.class public final Lcom/google/android/gms/internal/measurement/zzbs$zzb;
.super Lcom/google/android/gms/internal/measurement/zzfe;
.source "com.google.android.gms:play-services-measurement@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbs$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfe<",
        "Lcom/google/android/gms/internal/measurement/zzbs$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzbs$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzgo;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzbs$zzb;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/zzgz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgz<",
            "Lcom/google/android/gms/internal/measurement/zzbs$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbs$zzb;-><init>()V

    .line 37
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    .line 38
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzfe;)V

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfe;-><init>()V

    .line 2
    return-void
.end method

.method private final zza(I)V
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzc:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzd:I

    .line 7
    return-void
.end method

.method private final zza(J)V
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzc:I

    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zze:J

    .line 12
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbs$zzb;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbs$zzb;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zza(J)V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzbs$zzb$zza;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbk()Lcom/google/android/gms/internal/measurement/zzfe$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbs$zzb$zza;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzbs$zzb;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbr;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 31
    :pswitch_0
    return-object p2

    .line 30
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzgz;

    .line 22
    if-nez p1, :cond_1

    .line 23
    const-class p2, Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    monitor-enter p2

    .line 24
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzgz;

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfe$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfe$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzfe;)V

    .line 27
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzgz;

    .line 28
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 29
    :cond_1
    :goto_0
    return-object p1

    .line 20
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    return-object p1

    .line 17
    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 18
    nop

    .line 19
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzgm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbs$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbs$zzb$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbs$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzbs$zzb;-><init>()V

    return-object p1

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

.method public final zza()Z
    .locals 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzd:I

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzb;->zze:J

    return-wide v0
.end method
