.class public final enum Lio/realm/permissions/AccessLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/permissions/AccessLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/permissions/AccessLevel;

.field public static final enum ADMIN:Lio/realm/permissions/AccessLevel;

.field public static final enum NONE:Lio/realm/permissions/AccessLevel;

.field public static final enum READ:Lio/realm/permissions/AccessLevel;

.field public static final enum WRITE:Lio/realm/permissions/AccessLevel;


# instance fields
.field private final mayManage:Z

.field private final mayRead:Z

.field private final mayWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lio/realm/permissions/AccessLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/realm/permissions/AccessLevel;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v6, Lio/realm/permissions/AccessLevel;->NONE:Lio/realm/permissions/AccessLevel;

    .line 2
    new-instance v0, Lio/realm/permissions/AccessLevel;

    const-string v8, "READ"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/realm/permissions/AccessLevel;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lio/realm/permissions/AccessLevel;->READ:Lio/realm/permissions/AccessLevel;

    .line 3
    new-instance v0, Lio/realm/permissions/AccessLevel;

    const-string v2, "WRITE"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/realm/permissions/AccessLevel;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lio/realm/permissions/AccessLevel;->WRITE:Lio/realm/permissions/AccessLevel;

    .line 4
    new-instance v0, Lio/realm/permissions/AccessLevel;

    const-string v8, "ADMIN"

    const/4 v9, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/realm/permissions/AccessLevel;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lio/realm/permissions/AccessLevel;->ADMIN:Lio/realm/permissions/AccessLevel;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lio/realm/permissions/AccessLevel;

    sget-object v1, Lio/realm/permissions/AccessLevel;->NONE:Lio/realm/permissions/AccessLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/permissions/AccessLevel;->READ:Lio/realm/permissions/AccessLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/permissions/AccessLevel;->WRITE:Lio/realm/permissions/AccessLevel;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/permissions/AccessLevel;->ADMIN:Lio/realm/permissions/AccessLevel;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lio/realm/permissions/AccessLevel;->$VALUES:[Lio/realm/permissions/AccessLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lio/realm/permissions/AccessLevel;->mayRead:Z

    .line 3
    iput-boolean p4, p0, Lio/realm/permissions/AccessLevel;->mayWrite:Z

    .line 4
    iput-boolean p5, p0, Lio/realm/permissions/AccessLevel;->mayManage:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/permissions/AccessLevel;
    .locals 1

    .line 1
    const-class v0, Lio/realm/permissions/AccessLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/permissions/AccessLevel;

    return-object p0
.end method

.method public static values()[Lio/realm/permissions/AccessLevel;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/permissions/AccessLevel;->$VALUES:[Lio/realm/permissions/AccessLevel;

    invoke-virtual {v0}, [Lio/realm/permissions/AccessLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/permissions/AccessLevel;

    return-object v0
.end method


# virtual methods
.method public mayManage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/permissions/AccessLevel;->mayManage:Z

    return v0
.end method

.method public mayRead()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/permissions/AccessLevel;->mayRead:Z

    return v0
.end method

.method public mayWrite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/permissions/AccessLevel;->mayWrite:Z

    return v0
.end method
