.class public final Lcom/google/android/gms/internal/ads/zzst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final zzbte:Lcom/google/android/gms/internal/ads/zzsy;

.field private final zzbtf:Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

.field private final zzbtg:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    nop

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztf$zzi;->zznz()Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtf:Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtg:Z

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzsy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbte:Lcom/google/android/gms/internal/ads/zzsy;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsy;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    nop

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztf$zzi;->zznz()Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtf:Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbte:Lcom/google/android/gms/internal/ads/zzsy;

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzzz;->zzcqq:Lcom/google/android/gms/internal/ads/zzzk;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvj;->zzpv()Lcom/google/android/gms/internal/ads/zzzv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzv;->zzd(Lcom/google/android/gms/internal/ads/zzzk;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtg:Z

    .line 9
    return-void
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzsv$zza$zza;)V
    .locals 2

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtf:Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztf$zzi$zza;->zzoc()Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzst;->zzna()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztf$zzi$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbte:Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtf:Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzecd$zza;->zzbet()Lcom/google/android/gms/internal/ads/zzedo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzecd;

    check-cast v1, Lcom/google/android/gms/internal/ads/zztf$zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeag;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzf([B)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsv$zza$zza;->zzw()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztc;->zzbs(I)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztc;->zzdx()V

    .line 26
    const-string v0, "Logging Event with event code : "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsv$zza$zza;->zzw()I

    move-result p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawr;->zzeg(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzsv$zza$zza;)V
    .locals 3

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    if-nez v0, :cond_0

    .line 30
    monitor-exit p0

    return-void

    .line 31
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "clearcut_events.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzst;->zzd(Lcom/google/android/gms/internal/ads/zzsv$zza$zza;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 35
    monitor-exit p0

    return-void

    .line 36
    :catch_0
    move-exception p1

    .line 37
    :try_start_5
    const-string p1, "Could not close Clearcut output stream."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawr;->zzeg(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 38
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 39
    :catch_1
    move-exception p1

    .line 40
    :try_start_6
    const-string p1, "Could not write Clearcut to file."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawr;->zzeg(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 41
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :catch_2
    move-exception p1

    .line 44
    :try_start_8
    const-string p1, "Could not close Clearcut output stream."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawr;->zzeg(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 45
    monitor-exit p0

    return-void

    .line 47
    :goto_0
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 48
    goto :goto_1

    .line 49
    :catch_3
    move-exception v0

    .line 50
    :try_start_a
    const-string v0, "Could not close Clearcut output stream."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawr;->zzeg(Ljava/lang/String;)V

    .line 51
    :goto_1
    throw p1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 52
    :catch_4
    move-exception p1

    .line 53
    :try_start_b
    const-string p1, "Could not find file for Clearcut"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawr;->zzeg(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 54
    monitor-exit p0

    return-void

    .line 27
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzsv$zza$zza;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 55
    :try_start_0
    const-string v0, "id=%s,timestamp=%s,event=%s,data=%s\n"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtf:Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    .line 56
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zztf$zzi$zza;->zznv()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsv$zza$zza;->zzw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtf:Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd$zza;->zzbet()Lcom/google/android/gms/internal/ads/zzedo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzecd;

    check-cast p1, Lcom/google/android/gms/internal/ads/zztf$zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeag;->toByteArray()[B

    move-result-object p1

    .line 60
    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 54
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zzmz()Lcom/google/android/gms/internal/ads/zzst;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzst;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzst;-><init>()V

    return-object v0
.end method

.method private static zzna()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzz;->zzrb()Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 72
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_2

    .line 74
    :catch_0
    move-exception v5

    .line 75
    const-string v5, "Experiment ID is not a number"

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzawr;->zzeg(Ljava/lang/String;)V

    .line 76
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 77
    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsv$zza$zza;)V
    .locals 2

    monitor-enter p0

    .line 16
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzzz;->zzcqr:Lcom/google/android/gms/internal/ads/zzzk;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvj;->zzpv()Lcom/google/android/gms/internal/ads/zzzv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzv;->zzd(Lcom/google/android/gms/internal/ads/zzzk;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzst;->zzc(Lcom/google/android/gms/internal/ads/zzsv$zza$zza;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 22
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzst;->zzb(Lcom/google/android/gms/internal/ads/zzsv$zza$zza;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 15
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsw;)V
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbtf:Lcom/google/android/gms/internal/ads/zztf$zzi$zza;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zztf$zzi$zza;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 65
    :catch_0
    move-exception p1

    .line 66
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzawd;

    move-result-object v0

    const-string v1, "AdMobClearcutLogger.modify"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzawd;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
