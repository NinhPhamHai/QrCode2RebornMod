.class public Lio/realm/internal/permissions/PermissionOfferResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/permissions/BasePermissionApi;
.implements Lio/realm/PermissionOfferResponseRealmProxyInterface;


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

.field private realmUrl:Ljava/lang/String;

.field private statusCode:Ljava/lang/Integer;

.field private statusMessage:Ljava/lang/String;

.field private token:Ljava/lang/String;
    .annotation build Lio/realm/annotations/Required;
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

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$id(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$createdAt(Ljava/util/Date;)V

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$updatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$id(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$createdAt(Ljava/util/Date;)V

    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$updatedAt(Ljava/util/Date;)V

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$token(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'token\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRealmUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$token()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->realmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->realmUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->statusCode:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public realmSet$token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$token(Ljava/lang/String;)V

    return-void
.end method
