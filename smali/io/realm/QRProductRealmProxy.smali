.class public Lio/realm/QRProductRealmProxy;
.super Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/QRProductRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/QRProductRealmProxy$QRProductColumnInfo;
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
.field private columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/QRProductRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/QRProductRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "raw_data"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "product_id"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "normalized_product_id"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "content"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "isExpandedProduct"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "sscc"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "lotNumber"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "productionDate"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "packagingDate"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "bestBeforeDate"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "expirationDate"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "weight"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "weightType"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "weightIncrement"

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "price"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "priceIncrement"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "priceCurrency"

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/QRProductRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz p2, :cond_0

    .line 2
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    return-object p2

    .line 3
    :cond_0
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    .line 4
    move-object p2, p0

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$raw_data()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$raw_data(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$product_id()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$product_id(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$normalized_product_id()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$normalized_product_id(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$content()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$content(Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$isExpandedProduct()Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$isExpandedProduct(Z)V

    .line 10
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$sscc()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$sscc(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$lotNumber()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$lotNumber(Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$productionDate()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$productionDate(Ljava/lang/String;)V

    .line 13
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$packagingDate(Ljava/lang/String;)V

    .line 14
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$bestBeforeDate(Ljava/lang/String;)V

    .line 15
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$expirationDate(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weight()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weight(Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightType(Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightIncrement()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightIncrement(Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$price()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$price(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceIncrement()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceIncrement(Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceCurrency(Ljava/lang/String;)V

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;"
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
    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    return-object v0

    .line 9
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/realm/QRProductRealmProxy;->copy(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRProductRealmProxy$QRProductColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;"
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
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-direct {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;-><init>()V

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

    check-cast p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    return-object p0

    .line 6
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    .line 7
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 8
    :goto_0
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$raw_data()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$raw_data(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$product_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$product_id(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$normalized_product_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$normalized_product_id(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$content()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$content(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$isExpandedProduct()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$isExpandedProduct(Z)V

    .line 13
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$sscc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$sscc(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$lotNumber()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$lotNumber(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$productionDate()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$productionDate(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$packagingDate(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$bestBeforeDate(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$expirationDate(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weight()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weight(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightType(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightIncrement()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightIncrement(Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$price()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$price(Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceIncrement()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceIncrement(Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceCurrency(Ljava/lang/String;)V

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

    const-string v0, "QRProduct"

    invoke-direct {v6, v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "raw_data"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "product_id"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 4
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "normalized_product_id"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 5
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "content"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 6
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "isExpandedProduct"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 7
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "sscc"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 8
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "lotNumber"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 9
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "productionDate"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 10
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "packagingDate"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 11
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "bestBeforeDate"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 12
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "expirationDate"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 13
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "weight"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 14
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "weightType"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 15
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "weightIncrement"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 16
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "price"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 17
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "priceIncrement"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 18
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "priceCurrency"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 19
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    const-string p2, "raw_data"

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
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$raw_data(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$raw_data(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p2, "product_id"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$product_id(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$product_id(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string p2, "normalized_product_id"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$normalized_product_id(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$normalized_product_id(Ljava/lang/String;)V

    :cond_5
    :goto_2
    const-string p2, "content"

    .line 15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$content(Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$content(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string p2, "isExpandedProduct"

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

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$isExpandedProduct(Z)V

    goto :goto_4

    .line 22
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isExpandedProduct\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    const-string p2, "sscc"

    .line 23
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$sscc(Ljava/lang/String;)V

    goto :goto_5

    .line 26
    :cond_a
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$sscc(Ljava/lang/String;)V

    :cond_b
    :goto_5
    const-string p2, "lotNumber"

    .line 27
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 29
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$lotNumber(Ljava/lang/String;)V

    goto :goto_6

    .line 30
    :cond_c
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$lotNumber(Ljava/lang/String;)V

    :cond_d
    :goto_6
    const-string p2, "productionDate"

    .line 31
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 33
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$productionDate(Ljava/lang/String;)V

    goto :goto_7

    .line 34
    :cond_e
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$productionDate(Ljava/lang/String;)V

    :cond_f
    :goto_7
    const-string p2, "packagingDate"

    .line 35
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 37
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$packagingDate(Ljava/lang/String;)V

    goto :goto_8

    .line 38
    :cond_10
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$packagingDate(Ljava/lang/String;)V

    :cond_11
    :goto_8
    const-string p2, "bestBeforeDate"

    .line 39
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 40
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 41
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$bestBeforeDate(Ljava/lang/String;)V

    goto :goto_9

    .line 42
    :cond_12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$bestBeforeDate(Ljava/lang/String;)V

    :cond_13
    :goto_9
    const-string p2, "expirationDate"

    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 44
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 45
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$expirationDate(Ljava/lang/String;)V

    goto :goto_a

    .line 46
    :cond_14
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$expirationDate(Ljava/lang/String;)V

    :cond_15
    :goto_a
    const-string p2, "weight"

    .line 47
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 49
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weight(Ljava/lang/String;)V

    goto :goto_b

    .line 50
    :cond_16
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weight(Ljava/lang/String;)V

    :cond_17
    :goto_b
    const-string p2, "weightType"

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 52
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 53
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightType(Ljava/lang/String;)V

    goto :goto_c

    .line 54
    :cond_18
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightType(Ljava/lang/String;)V

    :cond_19
    :goto_c
    const-string p2, "weightIncrement"

    .line 55
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 57
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightIncrement(Ljava/lang/String;)V

    goto :goto_d

    .line 58
    :cond_1a
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightIncrement(Ljava/lang/String;)V

    :cond_1b
    :goto_d
    const-string p2, "price"

    .line 59
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const-string p2, "price"

    .line 60
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 61
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$price(Ljava/lang/String;)V

    goto :goto_e

    :cond_1c
    const-string p2, "price"

    .line 62
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$price(Ljava/lang/String;)V

    :cond_1d
    :goto_e
    const-string p2, "priceIncrement"

    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    const-string p2, "priceIncrement"

    .line 64
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 65
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceIncrement(Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    const-string p2, "priceIncrement"

    .line 66
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceIncrement(Ljava/lang/String;)V

    :cond_1f
    :goto_f
    const-string p2, "priceCurrency"

    .line 67
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_21

    const-string p2, "priceCurrency"

    .line 68
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 69
    invoke-interface {p0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceCurrency(Ljava/lang/String;)V

    goto :goto_10

    :cond_20
    const-string p2, "priceCurrency"

    .line 70
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceCurrency(Ljava/lang/String;)V

    :cond_21
    :goto_10
    return-object p0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw_data"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$raw_data(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 9
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$raw_data(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "product_id"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$product_id(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$product_id(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "normalized_product_id"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$normalized_product_id(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 19
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$normalized_product_id(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "content"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 21
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_6

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$content(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$content(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "isExpandedProduct"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 26
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_8

    .line 27
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$isExpandedProduct(Z)V

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isExpandedProduct\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v2, "sscc"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 31
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_a

    .line 32
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$sscc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 34
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$sscc(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "lotNumber"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 36
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_c

    .line 37
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$lotNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 39
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$lotNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "productionDate"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 41
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_e

    .line 42
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$productionDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 44
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$productionDate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "packagingDate"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 46
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_10

    .line 47
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$packagingDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 49
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$packagingDate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v2, "bestBeforeDate"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 51
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_12

    .line 52
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$bestBeforeDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 54
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$bestBeforeDate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "expirationDate"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 56
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_14

    .line 57
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$expirationDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 59
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$expirationDate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v2, "weight"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 61
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_16

    .line 62
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weight(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 64
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weight(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string v2, "weightType"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 66
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_18

    .line 67
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_18
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 69
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string v2, "weightIncrement"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 71
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1a

    .line 72
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightIncrement(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 74
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$weightIncrement(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const-string v2, "price"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 76
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1c

    .line 77
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$price(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_1c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 79
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$price(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const-string v2, "priceIncrement"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 81
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1e

    .line 82
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceIncrement(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_1e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 84
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceIncrement(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const-string v2, "priceCurrency"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 86
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_20

    .line 87
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceCurrency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_20
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 89
    invoke-interface {v0, v3}, Lio/realm/QRProductRealmProxyInterface;->realmSet$priceCurrency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_21
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 91
    :cond_22
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 92
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/QRProductRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

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
    sget-object v0, Lio/realm/QRProductRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-object v0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "class_QRProduct"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;",
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
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v9

    .line 5
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p0

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p0

    check-cast p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    .line 6
    invoke-static {v0}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 9
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 10
    :cond_1
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$product_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 11
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 12
    :cond_2
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$normalized_product_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 13
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 14
    :cond_3
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$content()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 15
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 16
    :cond_4
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$isExpandedProduct()Z

    move-result v7

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 17
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$sscc()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 18
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 19
    :cond_5
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$lotNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 20
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 21
    :cond_6
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$productionDate()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 22
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 23
    :cond_7
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 24
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 25
    :cond_8
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 26
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 27
    :cond_9
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 28
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 29
    :cond_a
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weight()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 30
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 31
    :cond_b
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 32
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 33
    :cond_c
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightIncrement()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 34
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 35
    :cond_d
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$price()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 36
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 37
    :cond_e
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceIncrement()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 38
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 39
    :cond_f
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 40
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :cond_10
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

    .line 41
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 43
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    .line 44
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 45
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    .line 46
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    instance-of v3, v14, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_2

    move-object v3, v14

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

    .line 48
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 50
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 52
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 53
    :cond_3
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$product_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 54
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 55
    :cond_4
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$normalized_product_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 56
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 57
    :cond_5
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$content()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 58
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 59
    :cond_6
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$isExpandedProduct()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 60
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$sscc()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 61
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 62
    :cond_7
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$lotNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 63
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 64
    :cond_8
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$productionDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 65
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 66
    :cond_9
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 67
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 68
    :cond_a
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 69
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 70
    :cond_b
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 71
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 72
    :cond_c
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weight()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 73
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 74
    :cond_d
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 75
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 76
    :cond_e
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightIncrement()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 77
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 78
    :cond_f
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$price()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 79
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 80
    :cond_10
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceIncrement()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 81
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 82
    :cond_11
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 83
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;",
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
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v9

    .line 5
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p0

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p0

    check-cast p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    .line 6
    invoke-static {v0}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 9
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 11
    :goto_0
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$product_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 12
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 14
    :goto_1
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$normalized_product_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 15
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 16
    :cond_3
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 17
    :goto_2
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$content()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 18
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 19
    :cond_4
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 20
    :goto_3
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$isExpandedProduct()Z

    move-result v7

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 21
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$sscc()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 22
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 23
    :cond_5
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 24
    :goto_4
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$lotNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 25
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 26
    :cond_6
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 27
    :goto_5
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$productionDate()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 28
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 29
    :cond_7
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 30
    :goto_6
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 31
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 32
    :cond_8
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 33
    :goto_7
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 34
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 35
    :cond_9
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 36
    :goto_8
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 37
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 38
    :cond_a
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 39
    :goto_9
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weight()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 40
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 41
    :cond_b
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 42
    :goto_a
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 43
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    .line 44
    :cond_c
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 45
    :goto_b
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightIncrement()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 46
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c

    .line 47
    :cond_d
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 48
    :goto_c
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$price()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 49
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    .line 50
    :cond_e
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 51
    :goto_d
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceIncrement()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 52
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    .line 53
    :cond_f
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 54
    :goto_e
    invoke-interface {p1}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 55
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f

    .line 56
    :cond_10
    iget-wide v3, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_f
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

    .line 57
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 59
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    .line 60
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    .line 62
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    instance-of v3, v14, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    move-object v3, v14

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

    .line 64
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 66
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 68
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 69
    :cond_2
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 70
    :goto_1
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$product_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 71
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 72
    :cond_3
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 73
    :goto_2
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$normalized_product_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 74
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 75
    :cond_4
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 76
    :goto_3
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$content()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 77
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 78
    :cond_5
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 79
    :goto_4
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$isExpandedProduct()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 80
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$sscc()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 81
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 82
    :cond_6
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 83
    :goto_5
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$lotNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 84
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 85
    :cond_7
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 86
    :goto_6
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$productionDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 87
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 88
    :cond_8
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 89
    :goto_7
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 90
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 91
    :cond_9
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 92
    :goto_8
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 93
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 94
    :cond_a
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 95
    :goto_9
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 96
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 97
    :cond_b
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 98
    :goto_a
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weight()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 99
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    .line 100
    :cond_c
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 101
    :goto_b
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 102
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c

    .line 103
    :cond_d
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 104
    :goto_c
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$weightIncrement()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 105
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    .line 106
    :cond_e
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 107
    :goto_d
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$price()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 108
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    .line 109
    :cond_f
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 110
    :goto_e
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceIncrement()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 111
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f

    .line 112
    :cond_10
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 113
    :goto_f
    invoke-interface {v14}, Lio/realm/QRProductRealmProxyInterface;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 114
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 115
    :cond_11
    iget-wide v5, v13, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_0

    :cond_12
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
    const-class v2, Lio/realm/QRProductRealmProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/QRProductRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p1, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iput-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    .line 4
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 5
    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 6
    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 7
    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$bestBeforeDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$content()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$expirationDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isExpandedProduct()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$lotNumber()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$normalized_product_id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$packagingDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$price()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$priceCurrency()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$priceIncrement()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$product_id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$productionDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

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
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$raw_data()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$sscc()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$weight()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$weightIncrement()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$weightType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$bestBeforeDate(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$content(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$expirationDate(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$isExpandedProduct(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, v2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$lotNumber(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$normalized_product_id(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$packagingDate(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$price(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$priceCurrency(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$priceIncrement(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$product_id(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$productionDate(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$raw_data(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$sscc(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$weight(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$weightIncrement(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$weightType(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v2, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v8, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v0, v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRProductRealmProxy;->columnInfo:Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    iget-wide v1, v1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
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

    const-string v1, "QRProduct = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{raw_data:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{product_id:"

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$product_id()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$product_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{normalized_product_id:"

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$normalized_product_id()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$normalized_product_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{content:"

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$content()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$content()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{isExpandedProduct:"

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$isExpandedProduct()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{sscc:"

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$sscc()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$sscc()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v2

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{lotNumber:"

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$lotNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$lotNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v2

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{productionDate:"

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$productionDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$productionDate()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_7
    move-object v4, v2

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{packagingDate:"

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_8
    move-object v4, v2

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{bestBeforeDate:"

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_9
    move-object v4, v2

    :goto_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{expirationDate:"

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_a
    move-object v4, v2

    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{weight:"

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$weight()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$weight()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_b
    move-object v4, v2

    :goto_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{weightType:"

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$weightType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$weightType()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_c
    move-object v4, v2

    :goto_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{weightIncrement:"

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$weightIncrement()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$weightIncrement()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_d
    move-object v4, v2

    :goto_c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{price:"

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$price()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$price()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_e
    move-object v4, v2

    :goto_d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{priceIncrement:"

    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$priceIncrement()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$priceIncrement()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_f
    move-object v4, v2

    :goto_e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{priceCurrency:"

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lio/realm/QRProductRealmProxy;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object v2

    :cond_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
