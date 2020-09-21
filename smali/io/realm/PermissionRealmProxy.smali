.class public Lio/realm/PermissionRealmProxy;
.super Lio/realm/permissions/Permission;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/PermissionRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/PermissionRealmProxy$PermissionColumnInfo;
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
.field private columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/PermissionRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/PermissionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "userId"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "path"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mayRead"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mayWrite"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mayManage"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "updatedAt"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/PermissionRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/permissions/Permission;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/permissions/Permission;ZLjava/util/Map;)Lio/realm/permissions/Permission;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/Permission;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/permissions/Permission;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz p2, :cond_0

    .line 2
    check-cast p2, Lio/realm/permissions/Permission;

    return-object p2

    .line 3
    :cond_0
    const-class p2, Lio/realm/permissions/Permission;

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lio/realm/permissions/Permission;

    .line 4
    move-object p2, p0

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayRead(Z)V

    .line 8
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayWrite(Z)V

    .line 9
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayManage(Z)V

    .line 10
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/permissions/Permission;ZLjava/util/Map;)Lio/realm/permissions/Permission;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/Permission;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/permissions/Permission;"
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

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 8
    check-cast v0, Lio/realm/permissions/Permission;

    return-object v0

    .line 9
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/realm/PermissionRealmProxy;->copy(Lio/realm/Realm;Lio/realm/permissions/Permission;ZLjava/util/Map;)Lio/realm/permissions/Permission;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/PermissionRealmProxy$PermissionColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lio/realm/permissions/Permission;IILjava/util/Map;)Lio/realm/permissions/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/permissions/Permission;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/permissions/Permission;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lio/realm/permissions/Permission;

    invoke-direct {p2}, Lio/realm/permissions/Permission;-><init>()V

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

    check-cast p0, Lio/realm/permissions/Permission;

    return-object p0

    .line 6
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lio/realm/permissions/Permission;

    .line 7
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 8
    :goto_0
    invoke-interface {p0}, Lio/realm/PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lio/realm/PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayRead(Z)V

    .line 11
    invoke-interface {p0}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayWrite(Z)V

    .line 12
    invoke-interface {p0}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayManage(Z)V

    .line 13
    invoke-interface {p0}, Lio/realm/PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

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

    const-string v0, "Permission"

    invoke-direct {v6, v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "userId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "path"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 4
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "mayRead"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 5
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "mayWrite"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 6
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "mayManage"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 7
    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v1, "updatedAt"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 8
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/permissions/Permission;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    const-class v0, Lio/realm/permissions/Permission;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lio/realm/permissions/Permission;

    const-string p2, "userId"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p0, v1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p2, "path"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p0, v1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string p2, "mayRead"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayRead(Z)V

    goto :goto_2

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'mayRead\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const-string p2, "mayWrite"

    .line 15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayWrite(Z)V

    goto :goto_3

    .line 18
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'mayWrite\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    const-string p2, "mayManage"

    .line 19
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 21
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayManage(Z)V

    goto :goto_4

    .line 22
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'mayManage\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    const-string p2, "updatedAt"

    .line 23
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-interface {p0, v1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_5

    .line 26
    :cond_a
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 28
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_5

    .line 29
    :cond_b
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p0, v0}, Lio/realm/PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    :cond_c
    :goto_5
    return-object p0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/permissions/Permission;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    new-instance v0, Lio/realm/permissions/Permission;

    invoke-direct {v0}, Lio/realm/permissions/Permission;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 9
    invoke-interface {v0, v3}, Lio/realm/PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "path"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_3

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v3}, Lio/realm/PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "mayRead"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_5

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayRead(Z)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'mayRead\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string v2, "mayWrite"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 21
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_7

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayWrite(Z)V

    goto/16 :goto_0

    .line 23
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'mayWrite\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const-string v2, "mayManage"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 26
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_9

    .line 27
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$mayManage(Z)V

    goto/16 :goto_0

    .line 28
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'mayManage\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const-string v2, "updatedAt"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 31
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_b

    .line 32
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 33
    invoke-interface {v0, v3}, Lio/realm/PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 34
    :cond_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_c

    .line 35
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 36
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v0, v3}, Lio/realm/PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 37
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 38
    :cond_d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 39
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 40
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lio/realm/permissions/Permission;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/PermissionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

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
    sget-object v0, Lio/realm/PermissionRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-object v0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "class_Permission"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lio/realm/permissions/Permission;Ljava/util/Map;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/Permission;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p0

    invoke-interface {p0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide p0

    return-wide p0

    .line 3
    :cond_0
    const-class v0, Lio/realm/permissions/Permission;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v9

    .line 5
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p0

    const-class v1, Lio/realm/permissions/Permission;

    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p0

    check-cast p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    .line 6
    invoke-static {v0}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 9
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 10
    :cond_1
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 11
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 12
    :cond_2
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v7

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 13
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v7

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 14
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v7

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 15
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 p0, 0x0

    move-wide v1, v9

    move-wide v5, v11

    move v9, p0

    invoke-static/range {v1 .. v9}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    :cond_3
    return-wide v11
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 17
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

    .line 17
    const-class v1, Lio/realm/permissions/Permission;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 19
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/Permission;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    .line 20
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lio/realm/permissions/Permission;

    .line 22
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    instance-of v3, v11, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_2

    move-object v3, v11

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_2

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

    if-eqz v4, :cond_2

    .line 24
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 26
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 28
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 29
    :cond_3
    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 30
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 31
    :cond_4
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 32
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 33
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 34
    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 35
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lio/realm/permissions/Permission;Ljava/util/Map;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/Permission;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p0

    invoke-interface {p0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide p0

    return-wide p0

    .line 3
    :cond_0
    const-class v0, Lio/realm/permissions/Permission;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v9

    .line 5
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p0

    const-class v1, Lio/realm/permissions/Permission;

    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p0

    check-cast p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    .line 6
    invoke-static {v0}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 9
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 11
    :goto_0
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 12
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 14
    :goto_1
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v7

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 15
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v7

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 16
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v7

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 17
    invoke-interface {p1}, Lio/realm/PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 p0, 0x0

    move-wide v1, v9

    move-wide v5, v11

    move v9, p0

    invoke-static/range {v1 .. v9}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_2

    .line 19
    :cond_3
    iget-wide v3, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2
    return-wide v11
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 17
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

    .line 20
    const-class v1, Lio/realm/permissions/Permission;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 22
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/Permission;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    .line 23
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lio/realm/permissions/Permission;

    .line 25
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    instance-of v3, v11, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    move-object v3, v11

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

    .line 27
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 29
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 31
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 32
    :cond_2
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 33
    :goto_1
    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 34
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 35
    :cond_3
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 36
    :goto_2
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 37
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 38
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 39
    invoke-interface {v11}, Lio/realm/PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 40
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto/16 :goto_0

    .line 41
    :cond_4
    iget-wide v5, v14, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_0

    :cond_5
    return-void
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
    const-class v2, Lio/realm/PermissionRealmProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/PermissionRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p1, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iput-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    .line 4
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 5
    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 6
    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 7
    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$mayManage()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$mayRead()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$mayWrite()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$path()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

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
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$userId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$mayManage(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$mayRead(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$mayWrite(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$path(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'path\' to null."

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v3, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

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
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'updatedAt\' to null."

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v3, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

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
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

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
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'userId\' to null."

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v3, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

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
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lio/realm/PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionRealmProxy;->columnInfo:Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
