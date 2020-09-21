.class public Lio/realm/permissions/Permission;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/PermissionRealmProxyInterface;


# instance fields
.field private mayManage:Z

.field private mayRead:Z

.field private mayWrite:Z

.field private path:Ljava/lang/String;
    .annotation build Lio/realm/annotations/Required;
    .end annotation
.end field

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
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$userId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mayManage()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$mayManage()Z

    move-result v0

    return v0
.end method

.method public mayRead()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$mayRead()Z

    move-result v0

    return v0
.end method

.method public mayWrite()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$mayWrite()Z

    move-result v0

    return v0
.end method

.method public realmGet$mayManage()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/permissions/Permission;->mayManage:Z

    return v0
.end method

.method public realmGet$mayRead()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/permissions/Permission;->mayRead:Z

    return v0
.end method

.method public realmGet$mayWrite()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/permissions/Permission;->mayWrite:Z

    return v0
.end method

.method public realmGet$path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/Permission;->path:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/Permission;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$userId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/permissions/Permission;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$mayManage(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/realm/permissions/Permission;->mayManage:Z

    return-void
.end method

.method public realmSet$mayRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/realm/permissions/Permission;->mayRead:Z

    return-void
.end method

.method public realmSet$mayWrite(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/realm/permissions/Permission;->mayWrite:Z

    return-void
.end method

.method public realmSet$path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/Permission;->path:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/Permission;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$userId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/realm/permissions/Permission;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$userId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mayRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$mayRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$mayWrite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayManage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$mayManage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/Permission;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
