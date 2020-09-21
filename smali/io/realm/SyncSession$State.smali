.class public final enum Lio/realm/SyncSession$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/SyncSession$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/SyncSession$State;

.field public static final enum ACTIVE:Lio/realm/SyncSession$State;

.field public static final enum DYING:Lio/realm/SyncSession$State;

.field public static final enum ERROR:Lio/realm/SyncSession$State;

.field public static final enum INACTIVE:Lio/realm/SyncSession$State;

.field public static final enum WAITING_FOR_ACCESS_TOKEN:Lio/realm/SyncSession$State;


# instance fields
.field final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/realm/SyncSession$State;

    const/4 v1, 0x0

    const-string v2, "WAITING_FOR_ACCESS_TOKEN"

    invoke-direct {v0, v2, v1, v1}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->WAITING_FOR_ACCESS_TOKEN:Lio/realm/SyncSession$State;

    .line 2
    new-instance v0, Lio/realm/SyncSession$State;

    const/4 v2, 0x1

    const-string v3, "ACTIVE"

    invoke-direct {v0, v3, v2, v2}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->ACTIVE:Lio/realm/SyncSession$State;

    .line 3
    new-instance v0, Lio/realm/SyncSession$State;

    const/4 v3, 0x2

    const-string v4, "DYING"

    invoke-direct {v0, v4, v3, v3}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->DYING:Lio/realm/SyncSession$State;

    .line 4
    new-instance v0, Lio/realm/SyncSession$State;

    const/4 v4, 0x3

    const-string v5, "INACTIVE"

    invoke-direct {v0, v5, v4, v4}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->INACTIVE:Lio/realm/SyncSession$State;

    .line 5
    new-instance v0, Lio/realm/SyncSession$State;

    const/4 v5, 0x4

    const-string v6, "ERROR"

    invoke-direct {v0, v6, v5, v5}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->ERROR:Lio/realm/SyncSession$State;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lio/realm/SyncSession$State;

    sget-object v6, Lio/realm/SyncSession$State;->WAITING_FOR_ACCESS_TOKEN:Lio/realm/SyncSession$State;

    aput-object v6, v0, v1

    sget-object v1, Lio/realm/SyncSession$State;->ACTIVE:Lio/realm/SyncSession$State;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/SyncSession$State;->DYING:Lio/realm/SyncSession$State;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/SyncSession$State;->INACTIVE:Lio/realm/SyncSession$State;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/SyncSession$State;->ERROR:Lio/realm/SyncSession$State;

    aput-object v1, v0, v5

    sput-object v0, Lio/realm/SyncSession$State;->$VALUES:[Lio/realm/SyncSession$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lio/realm/SyncSession$State;->value:B

    return-void
.end method

.method static fromByte(B)Lio/realm/SyncSession$State;
    .locals 5

    .line 1
    invoke-static {}, Lio/realm/SyncSession$State;->values()[Lio/realm/SyncSession$State;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget-byte v4, v3, Lio/realm/SyncSession$State;->value:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/SyncSession$State;
    .locals 1

    .line 1
    const-class v0, Lio/realm/SyncSession$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/SyncSession$State;

    return-object p0
.end method

.method public static values()[Lio/realm/SyncSession$State;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/SyncSession$State;->$VALUES:[Lio/realm/SyncSession$State;

    invoke-virtual {v0}, [Lio/realm/SyncSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/SyncSession$State;

    return-object v0
.end method
