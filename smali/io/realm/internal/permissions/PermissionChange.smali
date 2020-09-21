.class public Lio/realm/internal/permissions/PermissionChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/permissions/BasePermissionApi;
.implements Lio/realm/PermissionChangeRealmProxyInterface;


# annotations
.annotation build Lio/realm/annotations/RealmClass;
.end annotation


# instance fields
.field private createdAt:Ljava/util/Date;
    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field

.field private mayManage:Ljava/lang/Boolean;

.field private mayRead:Ljava/lang/Boolean;

.field private mayWrite:Ljava/lang/Boolean;

.field private metadataKey:Ljava/lang/String;

.field private metadataNameSpace:Ljava/lang/String;

.field private metadataValue:Ljava/lang/String;

.field private realmUrl:Ljava/lang/String;
    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field

.field private statusCode:Ljava/lang/Integer;

.field private statusMessage:Ljava/lang/String;

.field private updatedAt:Ljava/util/Date;
    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$id(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$createdAt(Ljava/util/Date;)V

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$updatedAt(Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$statusCode(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$id(Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$createdAt(Ljava/util/Date;)V

    .line 12
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$updatedAt(Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$statusCode(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 17
    invoke-virtual {p0, p1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p2}, Lio/realm/internal/permissions/PermissionChange;->realmSet$userId(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p3}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 20
    invoke-virtual {p0, p4}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 21
    invoke-virtual {p0, p5}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 23
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$id(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$createdAt(Ljava/util/Date;)V

    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$updatedAt(Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$statusCode(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 30
    invoke-virtual {p0, p1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p2}, Lio/realm/internal/permissions/PermissionChange;->realmSet$userId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p3}, Lio/realm/internal/permissions/PermissionChange;->realmSet$metadataKey(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p4}, Lio/realm/internal/permissions/PermissionChange;->realmSet$metadataValue(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p5}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 35
    invoke-virtual {p0, p6}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 36
    invoke-virtual {p0, p7}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static fromRequest(Lio/realm/permissions/PermissionRequest;)Lio/realm/internal/permissions/PermissionChange;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionRequest;->getCondition()Lio/realm/permissions/UserCondition;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/realm/permissions/PermissionRequest;->getAccessLevel()Lio/realm/permissions/AccessLevel;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lio/realm/permissions/PermissionRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object p0, Lio/realm/internal/permissions/PermissionChange$1;->$SwitchMap$io$realm$permissions$UserCondition$MatcherType:[I

    invoke-virtual {v0}, Lio/realm/permissions/UserCondition;->getType()Lio/realm/permissions/UserCondition$MatcherType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p0, p0, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    if-eq p0, v2, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    move-object v6, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lio/realm/permissions/UserCondition;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Lio/realm/permissions/UserCondition;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v4, v5

    move-object v5, p0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lio/realm/permissions/UserCondition;->getValue()Ljava/lang/String;

    move-result-object p0

    move-object v5, v4

    move-object v6, v5

    move-object v4, p0

    .line 8
    :goto_0
    new-instance p0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v1}, Lio/realm/permissions/AccessLevel;->mayRead()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1}, Lio/realm/permissions/AccessLevel;->mayWrite()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 9
    invoke-virtual {v1}, Lio/realm/permissions/AccessLevel;->mayManage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lio/realm/internal/permissions/PermissionChange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object p0
.end method


# virtual methods
.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataValue()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealmUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$userId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mayManage()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public mayRead()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public mayWrite()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mayManage()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->mayManage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$mayRead()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->mayRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$mayWrite()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->mayWrite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$metadataKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->metadataKey:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$metadataNameSpace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->metadataNameSpace:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$metadataValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->metadataValue:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->realmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$userId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mayManage(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->mayManage:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$mayRead(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->mayRead:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$mayWrite(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->mayWrite:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$metadataKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->metadataKey:Ljava/lang/String;

    return-void
.end method

.method public realmSet$metadataNameSpace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->metadataNameSpace:Ljava/lang/String;

    return-void
.end method

.method public realmSet$metadataValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->metadataValue:Ljava/lang/String;

    return-void
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->realmUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->statusCode:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$userId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->userId:Ljava/lang/String;

    return-void
.end method
