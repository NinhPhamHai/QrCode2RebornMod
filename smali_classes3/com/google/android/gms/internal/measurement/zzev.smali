.class final Lcom/google/android/gms/internal/measurement/zzev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzet<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzet<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzes;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Lcom/google/android/gms/internal/measurement/zzet;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzev;->zzc()Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:Lcom/google/android/gms/internal/measurement/zzet;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/measurement/zzet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzet<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Lcom/google/android/gms/internal/measurement/zzet;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/measurement/zzet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzet<",
            "*>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:Lcom/google/android/gms/internal/measurement/zzet;

    if-eqz v0, :cond_0

    .line 8
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzc()Lcom/google/android/gms/internal/measurement/zzet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzet<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    move-exception v0

    .line 4
    const/4 v0, 0x0

    return-object v0
.end method
