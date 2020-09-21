.class Lio/realm/ManagementModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "SourceFile"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final MODEL_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/ManagementModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/realm/internal/RealmProxyMediator;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :goto_0
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    check-cast p2, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, p2, p3, p4}, Lio/realm/PermissionOfferRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;ZLjava/util/Map;)Lio/realm/permissions/PermissionOffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_1
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    check-cast p2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, p2, p3, p4}, Lio/realm/PermissionOfferResponseRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_2
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    check-cast p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, p2, p3, p4}, Lio/realm/PermissionChangeRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_3
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createColumnInfo(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/ColumnInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsSchemaInfo;",
            ")",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClass(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2}, Lio/realm/PermissionOfferRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/realm/PermissionOfferResponseRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2}, Lio/realm/PermissionChangeRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, v2, p2, p3}, Lio/realm/PermissionOfferRealmProxy;->createDetachedCopy(Lio/realm/permissions/PermissionOffer;IILjava/util/Map;)Lio/realm/permissions/PermissionOffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_0
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, v2, p2, p3}, Lio/realm/PermissionOfferResponseRealmProxy;->createDetachedCopy(Lio/realm/internal/permissions/PermissionOfferResponse;IILjava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_1
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    check-cast p1, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, v2, p2, p3}, Lio/realm/PermissionChangeRealmProxy;->createDetachedCopy(Lio/realm/internal/permissions/PermissionChange;IILjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_2
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Lorg/json/JSONObject;",
            "Z)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClass(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3, p4}, Lio/realm/PermissionOfferRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/permissions/PermissionOffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2, p3, p4}, Lio/realm/PermissionOfferResponseRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2, p3, p4}, Lio/realm/PermissionChangeRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/internal/permissions/PermissionChange;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_2
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createUsingJsonStream(Ljava/lang/Class;Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Landroid/util/JsonReader;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClass(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3}, Lio/realm/PermissionOfferRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/permissions/PermissionOffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2, p3}, Lio/realm/PermissionOfferResponseRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2, p3}, Lio/realm/PermissionChangeRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_2
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public getExpectedObjectSchemaInfoMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsObjectSchemaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-static {}, Lio/realm/PermissionOfferRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {}, Lio/realm/PermissionOfferResponseRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {}, Lio/realm/PermissionChangeRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getFieldNames(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClass(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lio/realm/PermissionOfferRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lio/realm/PermissionOfferResponseRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lio/realm/PermissionChangeRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public getModelClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/ManagementModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-object v0
.end method

.method public getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClass(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lio/realm/PermissionOfferRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lio/realm/PermissionOfferResponseRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lio/realm/PermissionChangeRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public insert(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :goto_0
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    check-cast p2, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, p2, p3}, Lio/realm/PermissionOfferRealmProxy;->insert(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J

    goto :goto_1

    .line 4
    :cond_1
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    check-cast p2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, p2, p3}, Lio/realm/PermissionOfferResponseRealmProxy;->insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J

    goto :goto_1

    .line 6
    :cond_2
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    check-cast p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, p2, p3}, Lio/realm/PermissionChangeRealmProxy;->insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J

    :goto_1
    return-void

    .line 8
    :cond_3
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public insert(Lio/realm/Realm;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/RealmModel;

    .line 13
    instance-of v2, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 14
    :goto_0
    const-class v3, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    check-cast p2, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, p2, v1}, Lio/realm/PermissionOfferRealmProxy;->insert(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J

    goto :goto_1

    .line 16
    :cond_1
    const-class v3, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    check-cast p2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, p2, v1}, Lio/realm/PermissionOfferResponseRealmProxy;->insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J

    goto :goto_1

    .line 18
    :cond_2
    const-class v3, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    check-cast p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, p2, v1}, Lio/realm/PermissionChangeRealmProxy;->insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J

    .line 20
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 21
    const-class p2, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 22
    invoke-static {p1, v0, v1}, Lio/realm/PermissionOfferRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 23
    :cond_3
    const-class p2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    invoke-static {p1, v0, v1}, Lio/realm/PermissionOfferResponseRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 25
    :cond_4
    const-class p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    invoke-static {p1, v0, v1}, Lio/realm/PermissionChangeRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 27
    :cond_5
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    .line 28
    :cond_6
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method public insertOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :goto_0
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    check-cast p2, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, p2, p3}, Lio/realm/PermissionOfferRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J

    goto :goto_1

    .line 4
    :cond_1
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    check-cast p2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, p2, p3}, Lio/realm/PermissionOfferResponseRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J

    goto :goto_1

    .line 6
    :cond_2
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    check-cast p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, p2, p3}, Lio/realm/PermissionChangeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J

    :goto_1
    return-void

    .line 8
    :cond_3
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public insertOrUpdate(Lio/realm/Realm;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/RealmModel;

    .line 13
    instance-of v2, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 14
    :goto_0
    const-class v3, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    check-cast p2, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, p2, v1}, Lio/realm/PermissionOfferRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J

    goto :goto_1

    .line 16
    :cond_1
    const-class v3, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    check-cast p2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, p2, v1}, Lio/realm/PermissionOfferResponseRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J

    goto :goto_1

    .line 18
    :cond_2
    const-class v3, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    check-cast p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, p2, v1}, Lio/realm/PermissionChangeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J

    .line 20
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 21
    const-class p2, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 22
    invoke-static {p1, v0, v1}, Lio/realm/PermissionOfferRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 23
    :cond_3
    const-class p2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    invoke-static {p1, v0, v1}, Lio/realm/PermissionOfferResponseRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 25
    :cond_4
    const-class p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    invoke-static {p1, v0, v1}, Lio/realm/PermissionChangeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 27
    :cond_5
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    .line 28
    :cond_6
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method public newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/Row;",
            "Lio/realm/internal/ColumnInfo;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 2
    :try_start_0
    move-object v2, p2

    check-cast v2, Lio/realm/BaseRealm;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 3
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClass(Ljava/lang/Class;)V

    .line 4
    const-class p2, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lio/realm/PermissionOfferRealmProxy;

    invoke-direct {p2}, Lio/realm/PermissionOfferRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    const-class p2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p2, Lio/realm/PermissionOfferResponseRealmProxy;

    invoke-direct {p2}, Lio/realm/PermissionOfferResponseRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 10
    :cond_1
    :try_start_2
    const-class p2, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, Lio/realm/PermissionChangeRealmProxy;

    invoke-direct {p2}, Lio/realm/PermissionChangeRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 13
    :cond_2
    :try_start_3
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw p1
.end method

.method public transformerApplied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
