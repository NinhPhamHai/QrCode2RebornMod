.class public final Lcom/google/android/gms/internal/ads/zzdsu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final zzhix:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field

.field private zzhji:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdst<",
            "TP;>;>;>;"
        }
    .end annotation
.end field

.field private zzhjj:Lcom/google/android/gms/internal/ads/zzdst;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdst<",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdsu;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TP;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzhji:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzhix:Ljava/lang/Class;

    .line 5
    return-void
.end method

.method public static zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdsu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)",
            "Lcom/google/android/gms/internal/ads/zzdsu<",
            "TP;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsu;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdxp$zza;)Lcom/google/android/gms/internal/ads/zzdst;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/gms/internal/ads/zzdxp$zza;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdst<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdxp$zza;->zzaxe()Lcom/google/android/gms/internal/ads/zzdxj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxj;->zzhol:Lcom/google/android/gms/internal/ads/zzdxj;

    if-ne v0, v1, :cond_4

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdst;

    .line 21
    nop

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdsg;->zzhiu:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdxp$zza;->zzaxf()Lcom/google/android/gms/internal/ads/zzdyb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdyb;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdsd;->zzhit:[B

    move-object v4, v1

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "unknown output prefix type"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdxp$zza;->zzbaw()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 32
    move-object v4, v1

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdxp$zza;->zzbaw()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 27
    move-object v4, v1

    .line 35
    :goto_0
    nop

    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdxp$zza;->zzaxe()Lcom/google/android/gms/internal/ads/zzdxj;

    move-result-object v5

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdxp$zza;->zzaxf()Lcom/google/android/gms/internal/ads/zzdyb;

    move-result-object v6

    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdxp$zza;->zzbaw()I

    move-result v7

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdst;-><init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/zzdxj;Lcom/google/android/gms/internal/ads/zzdyb;I)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance p2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzaxg()[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdsu;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzhji:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 43
    if-eqz p1, :cond_3

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzhji:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_3
    return-object v0

    .line 19
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "only ENABLED key is allowed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdst;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdst<",
            "TP;>;)V"
        }
    .end annotation

    .line 7
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdst;->zzaxe()Lcom/google/android/gms/internal/ads/zzdxj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxj;->zzhol:Lcom/google/android/gms/internal/ads/zzdxj;

    if-ne v0, v1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdst;->zzaxg()[B

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzhji:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdsu;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 13
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzhjj:Lcom/google/android/gms/internal/ads/zzdst;

    .line 17
    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry cannot be set to an entry which is not held by this primitive set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry has to be ENABLED"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzawu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzhix:Ljava/lang/Class;

    return-object v0
.end method

.method public final zzaxh()Lcom/google/android/gms/internal/ads/zzdst;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdst<",
            "TP;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzhjj:Lcom/google/android/gms/internal/ads/zzdst;

    return-object v0
.end method