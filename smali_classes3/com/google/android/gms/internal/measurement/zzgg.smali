.class public final Lcom/google/android/gms/internal/measurement/zzgg;
.super Ljava/util/LinkedHashMap;
.source "com.google.android.gms:play-services-measurement-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzgg;


# instance fields
.field private zza:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 69
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgg;->zzb:Lcom/google/android/gms/internal/measurement/zzgg;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzgg;->zza:Z

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zza:Z

    .line 3
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zza:Z

    .line 6
    return-void
.end method

.method private static zza(Ljava/lang/Object;)I
    .locals 1

    .line 46
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfh;->zzc([B)I

    move-result p0

    return p0

    .line 48
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/measurement/zzgg<",
            "TK;TV;>;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgg;->zzb:Lcom/google/android/gms/internal/measurement/zzgg;

    return-object v0
.end method

.method private final zze()V
    .locals 1

    .line 63
    nop

    .line 64
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zza:Z

    .line 65
    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgg;->zze()V

    .line 14
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 15
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgg;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 30
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map;

    .line 31
    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    .line 32
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 33
    const/4 p1, 0x0

    goto :goto_2

    .line 34
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    const/4 p1, 0x0

    goto :goto_2

    .line 37
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 38
    instance-of v5, v4, [B

    if-eqz v5, :cond_2

    instance-of v5, v3, [B

    if-eqz v5, :cond_2

    .line 39
    check-cast v4, [B

    check-cast v3, [B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 41
    :goto_1
    if-nez v3, :cond_3

    .line 42
    const/4 p1, 0x0

    goto :goto_2

    .line 43
    :cond_3
    goto :goto_0

    .line 44
    :cond_4
    const/4 p1, 0x1

    .line 45
    :goto_2
    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 51
    nop

    .line 52
    nop

    .line 53
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    nop

    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    nop

    .line 58
    return v1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgg;->zze()V

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzfh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgg;->zze()V

    .line 21
    nop

    .line 22
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 27
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgg;->zze()V

    .line 29
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzgg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzgg<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgg;->zze()V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgg;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgg;->putAll(Ljava/util/Map;)V

    .line 11
    :cond_0
    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzgg<",
            "TK;TV;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgg;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final zzc()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zza:Z

    .line 61
    return-void
.end method

.method public final zzd()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zza:Z

    return v0
.end method
