.class public Lio/realm/PermissionChangeRealmProxy;
.super Lio/realm/internal/permissions/PermissionChange;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/PermissionChangeRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    }
.end annotation


# static fields
.field private static final FIELD_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/internal/permissions/PermissionChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/PermissionChangeRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/PermissionChangeRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "id"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "createdAt"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "updatedAt"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "statusCode"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "statusMessage"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "realmUrl"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "userId"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "metadataKey"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "metadataValue"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "metadataNameSpace"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mayRead"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mayWrite"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mayManage"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/PermissionChangeRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/internal/permissions/PermissionChange;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/internal/permissions/PermissionChange;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz p2, :cond_0

    .line 2
    check-cast p2, Lio/realm/internal/permissions/PermissionChange;

    return-object p2

    .line 3
    :cond_0
    const-class p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p2, v0, v1, v2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lio/realm/internal/permissions/PermissionChange;

    .line 4
    move-object p2, p0

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 6
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 7
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 8
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    .line 13
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    .line 14
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 15
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 16
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/internal/permissions/PermissionChange;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 3
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 7
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 8
    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 9
    const-class v2, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v3

    .line 11
    invoke-interface {p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 12
    :cond_3
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 13
    new-instance v1, Lio/realm/PermissionChangeRealmProxy;

    invoke-direct {v1}, Lio/realm/PermissionChangeRealmProxy;-><init>()V

    .line 14
    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw p0

    :cond_4
    :goto_0
    move v0, p2

    :goto_1
    if-eqz v0, :cond_5

    .line 16
    invoke-static {p0, v1, p1, p3}, Lio/realm/PermissionChangeRealmProxy;->update(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)Lio/realm/internal/permissions/PermissionChange;

    goto :goto_2

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lio/realm/PermissionChangeRealmProxy;->copy(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lio/realm/internal/permissions/PermissionChange;IILjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/permissions/PermissionChange;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/internal/permissions/PermissionChange;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-direct {p2}, Lio/realm/internal/permissions/PermissionChange;-><init>()V

    .line 3
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 5
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lio/realm/internal/permissions/PermissionChange;

    return-object p0

    .line 6
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lio/realm/internal/permissions/PermissionChange;

    .line 7
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 8
    :goto_0
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 10
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 11
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 12
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 19
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 20
    invoke-interface {p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 1
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "PermissionChange"

    invoke-direct {v6, v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "id"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v1, "createdAt"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 4
    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v1, "updatedAt"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 5
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "statusCode"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 6
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "statusMessage"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 7
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "realmUrl"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 8
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "userId"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 9
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "metadataKey"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 10
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "metadataValue"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 11
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "metadataNameSpace"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 12
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "mayRead"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 13
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "mayWrite"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 14
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "mayManage"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 15
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/internal/permissions/PermissionChange;
    .locals 12

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2
    const-class p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p0, p2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v3

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, -0x1

    if-nez v5, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v6

    :goto_0
    cmp-long v5, v3, v6

    if-eqz v5, :cond_1

    .line 6
    sget-object v5, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/BaseRealm$RealmObjectContext;

    .line 7
    :try_start_0
    invoke-virtual {p2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v8

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    const-class v3, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v6, v5

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 8
    new-instance p2, Lio/realm/PermissionChangeRealmProxy;

    invoke-direct {p2}, Lio/realm/PermissionChangeRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v5}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v5}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw p0

    :cond_1
    move-object p2, v2

    :goto_1
    if-nez p2, :cond_4

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    const-class p2, Lio/realm/internal/permissions/PermissionChange;

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v2, v1, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/PermissionChangeRealmProxy;

    goto :goto_2

    .line 13
    :cond_2
    const-class p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v1, v3, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/PermissionChangeRealmProxy;

    goto :goto_2

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    const-string p0, "createdAt"

    .line 15
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 20
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_3

    .line 21
    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p2, v0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    :cond_7
    :goto_3
    const-string p0, "updatedAt"

    .line 22
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_4

    .line 25
    :cond_8
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 27
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_4

    .line 28
    :cond_9
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p2, v0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    :cond_a
    :goto_4
    const-string p0, "statusCode"

    .line 29
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 30
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto :goto_5

    .line 32
    :cond_b
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    :cond_c
    :goto_5
    const-string p0, "statusMessage"

    .line 33
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 34
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 35
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto :goto_6

    .line 36
    :cond_d
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    :cond_e
    :goto_6
    const-string p0, "realmUrl"

    .line 37
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto :goto_7

    .line 40
    :cond_f
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    :cond_10
    :goto_7
    const-string p0, "userId"

    .line 41
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 42
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 43
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto :goto_8

    .line 44
    :cond_11
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    :cond_12
    :goto_8
    const-string p0, "metadataKey"

    .line 45
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 46
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 47
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :cond_13
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    :cond_14
    :goto_9
    const-string p0, "metadataValue"

    .line 49
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 50
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 51
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    goto :goto_a

    .line 52
    :cond_15
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    :cond_16
    :goto_a
    const-string p0, "metadataNameSpace"

    .line 53
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 54
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 55
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    goto :goto_b

    .line 56
    :cond_17
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    :cond_18
    :goto_b
    const-string p0, "mayRead"

    .line 57
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 58
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 59
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    goto :goto_c

    .line 60
    :cond_19
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    :cond_1a
    :goto_c
    const-string p0, "mayWrite"

    .line 61
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 62
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 63
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    goto :goto_d

    .line 64
    :cond_1b
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    :cond_1c
    :goto_d
    const-string p0, "mayManage"

    .line 65
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 66
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 67
    invoke-interface {p2, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    goto :goto_e

    .line 68
    :cond_1d
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    :cond_1e
    :goto_e
    return-object p2
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/internal/permissions/PermissionChange;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    new-instance v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-direct {v0}, Lio/realm/internal/permissions/PermissionChange;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 9
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "createdAt"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v5, -0x1

    if-eqz v3, :cond_5

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_3

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 13
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_4

    .line 15
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_0

    .line 16
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_0

    :cond_5
    const-string v3, "updatedAt"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 19
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_6

    .line 20
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 21
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_0

    .line 22
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_7

    .line 23
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_0

    .line 24
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 25
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "statusCode"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 27
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_9

    .line 28
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 29
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 30
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "statusMessage"

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 32
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_b

    .line 33
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :cond_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 35
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "realmUrl"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 37
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_d

    .line 38
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :cond_d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 40
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "userId"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 42
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_f

    .line 43
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
    :cond_f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 45
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v3, "metadataKey"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 47
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_11

    .line 48
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :cond_11
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 50
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v3, "metadataValue"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 52
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_13

    .line 53
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_13
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 55
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v3, "metadataNameSpace"

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 57
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_15

    .line 58
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :cond_15
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 60
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string v3, "mayRead"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 62
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_17

    .line 63
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 64
    :cond_17
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 65
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_18
    const-string v3, "mayWrite"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 67
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_19

    .line 68
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 69
    :cond_19
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 70
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_1a
    const-string v3, "mayManage"

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 72
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_1b

    .line 73
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 74
    :cond_1b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 75
    invoke-interface {v0, v4}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 76
    :cond_1c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 77
    :cond_1d
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v1, :cond_1e

    .line 78
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lio/realm/internal/permissions/PermissionChange;

    return-object p0

    .line 79
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/PermissionChangeRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getFieldNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/PermissionChangeRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-object v0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "class_PermissionChange"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 6
    invoke-virtual {v1}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v2

    .line 7
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_1

    .line 8
    invoke-static {v11, v12, v2, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v5

    :goto_0
    cmp-long v7, v2, v5

    if-nez v7, :cond_e

    .line 9
    invoke-static {v1, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)J

    move-result-wide v14

    .line 10
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 13
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 14
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 15
    :cond_3
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 17
    :cond_4
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 18
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 19
    :cond_5
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 20
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 21
    :cond_6
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 22
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 23
    :cond_7
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 24
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 25
    :cond_8
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 26
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 27
    :cond_9
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 28
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 29
    :cond_a
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 30
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 31
    :cond_b
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 32
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 33
    :cond_c
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 34
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    :cond_d
    return-wide v14

    .line 35
    :cond_e
    invoke-static {v4}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 36
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 38
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 39
    invoke-virtual {v1}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v9

    .line 40
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 41
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lio/realm/internal/permissions/PermissionChange;

    .line 42
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_2

    .line 46
    invoke-static {v12, v13, v9, v10, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    cmp-long v8, v6, v4

    if-nez v8, :cond_f

    .line 47
    invoke-static {v1, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)J

    move-result-wide v16

    .line 48
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 50
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_2

    :cond_3
    move-wide/from16 v20, v9

    .line 51
    :goto_2
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 52
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 53
    :cond_4
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 54
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 55
    :cond_5
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 56
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 57
    :cond_6
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 58
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 59
    :cond_7
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 60
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 61
    :cond_8
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 62
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 63
    :cond_9
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 64
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 65
    :cond_a
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 66
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 67
    :cond_b
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 68
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 69
    :cond_c
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 70
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 71
    :cond_d
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 72
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    :cond_e
    move-wide/from16 v9, v20

    goto/16 :goto_0

    .line 73
    :cond_f
    invoke-static {v3}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_10
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 6
    invoke-virtual {v1}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v2

    .line 7
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_1

    .line 8
    invoke-static {v11, v12, v2, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v5

    :goto_0
    cmp-long v7, v2, v5

    if-nez v7, :cond_2

    .line 9
    invoke-static {v1, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)J

    move-result-wide v1

    move-wide v14, v1

    goto :goto_1

    :cond_2
    move-wide v14, v2

    .line 10
    :goto_1
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_2

    .line 13
    :cond_3
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 14
    :goto_2
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_3

    .line 16
    :cond_4
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 17
    :goto_3
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 18
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_4

    .line 19
    :cond_5
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 20
    :goto_4
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 21
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 22
    :cond_6
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 23
    :goto_5
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 24
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 25
    :cond_7
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 26
    :goto_6
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 27
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 28
    :cond_8
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 29
    :goto_7
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 30
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 31
    :cond_9
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 32
    :goto_8
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 33
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 34
    :cond_a
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 35
    :goto_9
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 36
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 37
    :cond_b
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 38
    :goto_a
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 39
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_b

    .line 40
    :cond_c
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 41
    :goto_b
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 42
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_c

    .line 43
    :cond_d
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 44
    :goto_c
    invoke-interface/range {p1 .. p1}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 45
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_d

    .line 46
    :cond_e
    iget-wide v4, v13, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_d
    return-wide v14
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 47
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 49
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 50
    invoke-virtual {v1}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v9

    .line 51
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lio/realm/internal/permissions/PermissionChange;

    .line 53
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_2

    .line 57
    invoke-static {v12, v13, v9, v10, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    cmp-long v8, v6, v4

    if-nez v8, :cond_3

    .line 58
    invoke-static {v1, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v6

    .line 59
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 61
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_3

    :cond_4
    move-wide/from16 v20, v9

    .line 62
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 63
    :goto_3
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 64
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_4

    .line 65
    :cond_5
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 66
    :goto_4
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 67
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_5

    .line 68
    :cond_6
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 69
    :goto_5
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 70
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 71
    :cond_7
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 72
    :goto_6
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 73
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 74
    :cond_8
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 75
    :goto_7
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 76
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 77
    :cond_9
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 78
    :goto_8
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 79
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 80
    :cond_a
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 81
    :goto_9
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 82
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 83
    :cond_b
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 84
    :goto_a
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 85
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    .line 86
    :cond_c
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 87
    :goto_b
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 88
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_c

    .line 89
    :cond_d
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 90
    :goto_c
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 91
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_d

    .line 92
    :cond_e
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 93
    :goto_d
    invoke-interface {v15}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 94
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_e

    .line 95
    :cond_f
    iget-wide v5, v14, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_e
    move-wide/from16 v9, v20

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method static update(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)Lio/realm/internal/permissions/PermissionChange;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/internal/permissions/PermissionChange;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 2
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 3
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 4
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 5
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 6
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    .line 8
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    .line 9
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    .line 10
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 11
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 12
    invoke-interface {p2}, Lio/realm/PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1
    const-class v2, Lio/realm/PermissionChangeRealmProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/PermissionChangeRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 6
    :cond_3
    iget-object v2, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p1, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 9
    :cond_5
    iget-object v2, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v5, v1

    return v5
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 3
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iput-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 4
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 5
    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 6
    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 7
    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mayManage()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mayRead()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mayWrite()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$metadataKey()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$metadataNameSpace()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$metadataValue()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$userId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'createdAt\' to null."

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v3, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v8, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$mayManage(Ljava/lang/Boolean;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v0, v0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$mayRead(Ljava/lang/Boolean;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v0, v0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$mayWrite(Ljava/lang/Boolean;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v0, v0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$metadataKey(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v0, v0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$metadataNameSpace(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v0, v0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$metadataValue(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v0, v0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'realmUrl\' to null."

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v3, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v8, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, v0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v3, v3, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v9, v2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v13, v1

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 6
    :cond_2
    iget-object v1, v0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object v1, v0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v1, v0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v0, v0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'updatedAt\' to null."

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v3, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v8, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$userId(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'userId\' to null."

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v3, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v8, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lio/realm/PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionChangeRealmProxy;->columnInfo:Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionChange = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{id:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{createdAt:"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{updatedAt:"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{statusCode:"

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{statusMessage:"

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{realmUrl:"

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{userId:"

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$userId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{metadataKey:"

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{metadataValue:"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{metadataNameSpace:"

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{mayRead:"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{mayWrite:"

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_6

    :cond_7
    move-object v3, v4

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{mayManage:"

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lio/realm/PermissionChangeRealmProxy;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v4

    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
