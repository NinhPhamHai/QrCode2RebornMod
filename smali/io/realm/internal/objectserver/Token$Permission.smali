.class public final enum Lio/realm/internal/objectserver/Token$Permission;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/objectserver/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/objectserver/Token$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/objectserver/Token$Permission;

.field public static final ALL:[Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum DOWNLOAD:Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum MANAGE:Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum REFRESH:Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum UNKNOWN:Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum UPLOAD:Lio/realm/internal/objectserver/Token$Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->UNKNOWN:Lio/realm/internal/objectserver/Token$Permission;

    .line 2
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const/4 v2, 0x1

    const-string v3, "UPLOAD"

    invoke-direct {v0, v3, v2}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->UPLOAD:Lio/realm/internal/objectserver/Token$Permission;

    .line 3
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const/4 v3, 0x2

    const-string v4, "DOWNLOAD"

    invoke-direct {v0, v4, v3}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->DOWNLOAD:Lio/realm/internal/objectserver/Token$Permission;

    .line 4
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const/4 v4, 0x3

    const-string v5, "REFRESH"

    invoke-direct {v0, v5, v4}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->REFRESH:Lio/realm/internal/objectserver/Token$Permission;

    .line 5
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const/4 v5, 0x4

    const-string v6, "MANAGE"

    invoke-direct {v0, v6, v5}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->MANAGE:Lio/realm/internal/objectserver/Token$Permission;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lio/realm/internal/objectserver/Token$Permission;

    sget-object v6, Lio/realm/internal/objectserver/Token$Permission;->UNKNOWN:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v6, v0, v1

    sget-object v6, Lio/realm/internal/objectserver/Token$Permission;->UPLOAD:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v6, v0, v2

    sget-object v7, Lio/realm/internal/objectserver/Token$Permission;->DOWNLOAD:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v7, v0, v3

    sget-object v8, Lio/realm/internal/objectserver/Token$Permission;->REFRESH:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v8, v0, v4

    sget-object v9, Lio/realm/internal/objectserver/Token$Permission;->MANAGE:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v9, v0, v5

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->$VALUES:[Lio/realm/internal/objectserver/Token$Permission;

    .line 7
    new-array v0, v5, [Lio/realm/internal/objectserver/Token$Permission;

    aput-object v6, v0, v1

    aput-object v7, v0, v2

    aput-object v8, v0, v3

    aput-object v9, v0, v4

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->ALL:[Lio/realm/internal/objectserver/Token$Permission;

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

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/objectserver/Token$Permission;
    .locals 1

    .line 1
    const-class v0, Lio/realm/internal/objectserver/Token$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/objectserver/Token$Permission;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/objectserver/Token$Permission;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/objectserver/Token$Permission;->$VALUES:[Lio/realm/internal/objectserver/Token$Permission;

    invoke-virtual {v0}, [Lio/realm/internal/objectserver/Token$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/objectserver/Token$Permission;

    return-object v0
.end method
