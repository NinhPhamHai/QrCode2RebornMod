.class public final enum Lio/realm/internal/Collection$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/Collection$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/Collection$Mode;

.field public static final enum EMPTY:Lio/realm/internal/Collection$Mode;

.field public static final enum LINKVIEW:Lio/realm/internal/Collection$Mode;

.field public static final enum QUERY:Lio/realm/internal/Collection$Mode;

.field public static final enum TABLE:Lio/realm/internal/Collection$Mode;

.field public static final enum TABLEVIEW:Lio/realm/internal/Collection$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const/4 v1, 0x0

    const-string v2, "EMPTY"

    invoke-direct {v0, v2, v1}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->EMPTY:Lio/realm/internal/Collection$Mode;

    .line 2
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const/4 v2, 0x1

    const-string v3, "TABLE"

    invoke-direct {v0, v3, v2}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->TABLE:Lio/realm/internal/Collection$Mode;

    .line 3
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const/4 v3, 0x2

    const-string v4, "QUERY"

    invoke-direct {v0, v4, v3}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->QUERY:Lio/realm/internal/Collection$Mode;

    .line 4
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const/4 v4, 0x3

    const-string v5, "LINKVIEW"

    invoke-direct {v0, v5, v4}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->LINKVIEW:Lio/realm/internal/Collection$Mode;

    .line 5
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const/4 v5, 0x4

    const-string v6, "TABLEVIEW"

    invoke-direct {v0, v6, v5}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->TABLEVIEW:Lio/realm/internal/Collection$Mode;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lio/realm/internal/Collection$Mode;

    sget-object v6, Lio/realm/internal/Collection$Mode;->EMPTY:Lio/realm/internal/Collection$Mode;

    aput-object v6, v0, v1

    sget-object v1, Lio/realm/internal/Collection$Mode;->TABLE:Lio/realm/internal/Collection$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/Collection$Mode;->QUERY:Lio/realm/internal/Collection$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/Collection$Mode;->LINKVIEW:Lio/realm/internal/Collection$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/Collection$Mode;->TABLEVIEW:Lio/realm/internal/Collection$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lio/realm/internal/Collection$Mode;->$VALUES:[Lio/realm/internal/Collection$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getByValue(B)Lio/realm/internal/Collection$Mode;
    .locals 3

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lio/realm/internal/Collection$Mode;->TABLEVIEW:Lio/realm/internal/Collection$Mode;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Lio/realm/internal/Collection$Mode;->LINKVIEW:Lio/realm/internal/Collection$Mode;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lio/realm/internal/Collection$Mode;->QUERY:Lio/realm/internal/Collection$Mode;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lio/realm/internal/Collection$Mode;->TABLE:Lio/realm/internal/Collection$Mode;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lio/realm/internal/Collection$Mode;->EMPTY:Lio/realm/internal/Collection$Mode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/Collection$Mode;
    .locals 1

    .line 1
    const-class v0, Lio/realm/internal/Collection$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/Collection$Mode;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/Collection$Mode;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/Collection$Mode;->$VALUES:[Lio/realm/internal/Collection$Mode;

    invoke-virtual {v0}, [Lio/realm/internal/Collection$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/Collection$Mode;

    return-object v0
.end method
