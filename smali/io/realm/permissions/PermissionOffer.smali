.class public Lio/realm/permissions/PermissionOffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/permissions/BasePermissionApi;
.implements Lio/realm/PermissionOfferRealmProxyInterface;


# annotations
.annotation build Lio/realm/annotations/RealmClass;
.end annotation


# instance fields
.field private createdAt:Ljava/util/Date;
    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field

.field private expiresAt:Ljava/util/Date;

.field private id:Ljava/lang/String;
    .annotation build Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field

.field private mayManage:Z

.field private mayRead:Z

.field private mayWrite:Z

.field private realmUrl:Ljava/lang/String;
    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field

.field private statusCode:Ljava/lang/Integer;

.field private statusMessage:Ljava/lang/String;

.field private token:Ljava/lang/String;
    .annotation build Lio/realm/annotations/Index;
    .end annotation
.end field

.field private updatedAt:Ljava/util/Date;
    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

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

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$id(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$createdAt(Ljava/util/Date;)V

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$updatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/realm/permissions/AccessLevel;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lio/realm/permissions/PermissionOffer;-><init>(Ljava/lang/String;Lio/realm/permissions/AccessLevel;Ljava/util/Date;)V

    instance-of p1, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/realm/permissions/AccessLevel;Ljava/util/Date;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$id(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$createdAt(Ljava/util/Date;)V

    .line 9
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 10
    invoke-direct {p0, p1}, Lio/realm/permissions/PermissionOffer;->validateUrl(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2}, Lio/realm/permissions/PermissionOffer;->validateAccessLevel(Lio/realm/permissions/AccessLevel;)V

    .line 12
    invoke-virtual {p2}, Lio/realm/permissions/AccessLevel;->mayRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$mayRead(Z)V

    .line 13
    invoke-virtual {p2}, Lio/realm/permissions/AccessLevel;->mayWrite()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$mayWrite(Z)V

    .line 14
    invoke-virtual {p2}, Lio/realm/permissions/AccessLevel;->mayManage()Z

    move-result p2

    invoke-virtual {p0, p2}, Lio/realm/permissions/PermissionOffer;->realmSet$mayManage(Z)V

    .line 15
    invoke-virtual {p0, p1}, Lio/realm/permissions/PermissionOffer;->realmSet$realmUrl(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 16
    invoke-virtual {p3}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lio/realm/permissions/PermissionOffer;->realmSet$expiresAt(Ljava/util/Date;)V

    return-void
.end method

.method private validateAccessLevel(Lio/realm/permissions/AccessLevel;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'accessLevel\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid \'realmUrl\'."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-empty \'realmUrl\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getExpiresAt()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealmUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$token()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isOfferCreated()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mayManage()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayManage()Z

    move-result v0

    return v0
.end method

.method public mayRead()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayRead()Z

    move-result v0

    return v0
.end method

.method public mayWrite()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayWrite()Z

    move-result v0

    return v0
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$expiresAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mayManage()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/permissions/PermissionOffer;->mayManage:Z

    return v0
.end method

.method public realmGet$mayRead()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/permissions/PermissionOffer;->mayRead:Z

    return v0
.end method

.method public realmGet$mayWrite()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/permissions/PermissionOffer;->mayWrite:Z

    return v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->realmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->token:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$expiresAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->expiresAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mayManage(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/realm/permissions/PermissionOffer;->mayManage:Z

    return-void
.end method

.method public realmSet$mayRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/realm/permissions/PermissionOffer;->mayRead:Z

    return-void
.end method

.method public realmSet$mayWrite(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/realm/permissions/PermissionOffer;->mayWrite:Z

    return-void
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->realmUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->statusCode:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public realmSet$token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->token:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionOffer{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", updatedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", statusCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", statusMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$token()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", realmUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mayRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayWrite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayManage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayManage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expiresAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
