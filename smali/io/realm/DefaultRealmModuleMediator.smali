.class Lio/realm/DefaultRealmModuleMediator;
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
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

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
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QRProductRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_1
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QRTextRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_2
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-static {p1, p2, p3, p4}, Lio/realm/CreatedQRCodeRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_3
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QRMessageRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 10
    :cond_4
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QRLocationRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 12
    :cond_5
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QRWifiRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 14
    :cond_6
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-static {p1, p2, p3, p4}, Lio/realm/SearchProductRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 16
    :cond_7
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QREventRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 18
    :cond_8
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QRTelephoneRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 20
    :cond_9
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 21
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QRContactRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 22
    :cond_a
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QRUrlRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 24
    :cond_b
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 25
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QRCodeEntityRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 26
    :cond_c
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 27
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-static {p1, p2, p3, p4}, Lio/realm/QREmailRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 28
    :cond_d
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
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2}, Lio/realm/QRProductRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/realm/QRTextRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRTextRealmProxy$QRTextColumnInfo;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2}, Lio/realm/CreatedQRCodeRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p2}, Lio/realm/QRMessageRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRMessageRealmProxy$QRMessageColumnInfo;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {p2}, Lio/realm/QRLocationRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {p2}, Lio/realm/QRWifiRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRWifiRealmProxy$QRWifiColumnInfo;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {p2}, Lio/realm/SearchProductRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {p2}, Lio/realm/QREventRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QREventRealmProxy$QREventColumnInfo;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-static {p2}, Lio/realm/QRTelephoneRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    invoke-static {p2}, Lio/realm/QRContactRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRContactRealmProxy$QRContactColumnInfo;

    move-result-object p1

    return-object p1

    .line 22
    :cond_9
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-static {p2}, Lio/realm/QRUrlRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-static {p2}, Lio/realm/QRCodeEntityRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    move-result-object p1

    return-object p1

    .line 26
    :cond_b
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    invoke-static {p2}, Lio/realm/QREmailRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QREmailRealmProxy$QREmailColumnInfo;

    move-result-object p1

    return-object p1

    .line 28
    :cond_c
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
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QRProductRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_0
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QRTextRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_1
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-static {p1, v2, p2, p3}, Lio/realm/CreatedQRCodeRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_2
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QRMessageRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 10
    :cond_3
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QRLocationRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 12
    :cond_4
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QRWifiRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 14
    :cond_5
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-static {p1, v2, p2, p3}, Lio/realm/SearchProductRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 16
    :cond_6
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QREventRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 18
    :cond_7
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QRTelephoneRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 20
    :cond_8
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QRContactRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 22
    :cond_9
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QRUrlRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 24
    :cond_a
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 25
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QRCodeEntityRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 26
    :cond_b
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-static {p1, v2, p2, p3}, Lio/realm/QREmailRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 28
    :cond_c
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
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3, p4}, Lio/realm/QRProductRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2, p3, p4}, Lio/realm/QRTextRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2, p3, p4}, Lio/realm/CreatedQRCodeRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_2
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p2, p3, p4}, Lio/realm/QRMessageRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 10
    :cond_3
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {p2, p3, p4}, Lio/realm/QRLocationRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 12
    :cond_4
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {p2, p3, p4}, Lio/realm/QRWifiRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 14
    :cond_5
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {p2, p3, p4}, Lio/realm/SearchProductRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 16
    :cond_6
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {p2, p3, p4}, Lio/realm/QREventRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 18
    :cond_7
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-static {p2, p3, p4}, Lio/realm/QRTelephoneRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 20
    :cond_8
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    invoke-static {p2, p3, p4}, Lio/realm/QRContactRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 22
    :cond_9
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-static {p2, p3, p4}, Lio/realm/QRUrlRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 24
    :cond_a
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-static {p2, p3, p4}, Lio/realm/QRCodeEntityRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 26
    :cond_b
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    invoke-static {p2, p3, p4}, Lio/realm/QREmailRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 28
    :cond_c
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
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3}, Lio/realm/QRProductRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2, p3}, Lio/realm/QRTextRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2, p3}, Lio/realm/CreatedQRCodeRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_2
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p2, p3}, Lio/realm/QRMessageRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 10
    :cond_3
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {p2, p3}, Lio/realm/QRLocationRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 12
    :cond_4
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {p2, p3}, Lio/realm/QRWifiRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 14
    :cond_5
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {p2, p3}, Lio/realm/SearchProductRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 16
    :cond_6
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {p2, p3}, Lio/realm/QREventRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 18
    :cond_7
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-static {p2, p3}, Lio/realm/QRTelephoneRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 20
    :cond_8
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    invoke-static {p2, p3}, Lio/realm/QRContactRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 22
    :cond_9
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-static {p2, p3}, Lio/realm/QRUrlRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 24
    :cond_a
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-static {p2, p3}, Lio/realm/QRCodeEntityRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 26
    :cond_b
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    invoke-static {p2, p3}, Lio/realm/QREmailRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 28
    :cond_c
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
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-static {}, Lio/realm/QRProductRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-static {}, Lio/realm/QRTextRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-static {}, Lio/realm/CreatedQRCodeRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-static {}, Lio/realm/QRMessageRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-static {}, Lio/realm/QRLocationRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-static {}, Lio/realm/QRWifiRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-static {}, Lio/realm/SearchProductRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-static {}, Lio/realm/QREventRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-static {}, Lio/realm/QRTelephoneRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-static {}, Lio/realm/QRContactRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-static {}, Lio/realm/QRUrlRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-static {}, Lio/realm/QRCodeEntityRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-static {}, Lio/realm/QREmailRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

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
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lio/realm/QRProductRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lio/realm/QRTextRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lio/realm/CreatedQRCodeRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lio/realm/QRMessageRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {}, Lio/realm/QRLocationRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {}, Lio/realm/QRWifiRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {}, Lio/realm/SearchProductRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {}, Lio/realm/QREventRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-static {}, Lio/realm/QRTelephoneRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    invoke-static {}, Lio/realm/QRContactRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 22
    :cond_9
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-static {}, Lio/realm/QRUrlRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-static {}, Lio/realm/QRCodeEntityRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 26
    :cond_b
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    invoke-static {}, Lio/realm/QREmailRealmProxy;->getFieldNames()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 28
    :cond_c
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
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

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
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lio/realm/QRProductRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lio/realm/QRTextRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lio/realm/CreatedQRCodeRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lio/realm/QRMessageRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {}, Lio/realm/QRLocationRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {}, Lio/realm/QRWifiRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {}, Lio/realm/SearchProductRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {}, Lio/realm/QREventRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-static {}, Lio/realm/QRTelephoneRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    invoke-static {}, Lio/realm/QRContactRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 22
    :cond_9
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-static {}, Lio/realm/QRUrlRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-static {}, Lio/realm/QRCodeEntityRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_b
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    invoke-static {}, Lio/realm/QREmailRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 28
    :cond_c
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
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-static {p1, p2, p3}, Lio/realm/QRProductRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 4
    :cond_1
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-static {p1, p2, p3}, Lio/realm/QRTextRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 6
    :cond_2
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-static {p1, p2, p3}, Lio/realm/CreatedQRCodeRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 8
    :cond_3
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-static {p1, p2, p3}, Lio/realm/QRMessageRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 10
    :cond_4
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-static {p1, p2, p3}, Lio/realm/QRLocationRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 12
    :cond_5
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-static {p1, p2, p3}, Lio/realm/QRWifiRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;Ljava/util/Map;)J

    goto :goto_1

    .line 14
    :cond_6
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-static {p1, p2, p3}, Lio/realm/SearchProductRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;Ljava/util/Map;)J

    goto :goto_1

    .line 16
    :cond_7
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-static {p1, p2, p3}, Lio/realm/QREventRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;Ljava/util/Map;)J

    goto :goto_1

    .line 18
    :cond_8
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-static {p1, p2, p3}, Lio/realm/QRTelephoneRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;Ljava/util/Map;)J

    goto :goto_1

    .line 20
    :cond_9
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 21
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-static {p1, p2, p3}, Lio/realm/QRContactRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;Ljava/util/Map;)J

    goto :goto_1

    .line 22
    :cond_a
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-static {p1, p2, p3}, Lio/realm/QRUrlRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;Ljava/util/Map;)J

    goto :goto_1

    .line 24
    :cond_b
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 25
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-static {p1, p2, p3}, Lio/realm/QRCodeEntityRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Ljava/util/Map;)J

    goto :goto_1

    .line 26
    :cond_c
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 27
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-static {p1, p2, p3}, Lio/realm/QREmailRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;Ljava/util/Map;)J

    :goto_1
    return-void

    .line 28
    :cond_d
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

    .line 29
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/RealmModel;

    .line 33
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

    .line 34
    :goto_0
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-static {p1, p2, v1}, Lio/realm/QRProductRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 36
    :cond_1
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-static {p1, p2, v1}, Lio/realm/QRTextRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 38
    :cond_2
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-static {p1, p2, v1}, Lio/realm/CreatedQRCodeRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 40
    :cond_3
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 41
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-static {p1, p2, v1}, Lio/realm/QRMessageRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 42
    :cond_4
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 43
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-static {p1, p2, v1}, Lio/realm/QRLocationRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 44
    :cond_5
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 45
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-static {p1, p2, v1}, Lio/realm/QRWifiRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;Ljava/util/Map;)J

    goto :goto_1

    .line 46
    :cond_6
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 47
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-static {p1, p2, v1}, Lio/realm/SearchProductRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;Ljava/util/Map;)J

    goto :goto_1

    .line 48
    :cond_7
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 49
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-static {p1, p2, v1}, Lio/realm/QREventRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;Ljava/util/Map;)J

    goto :goto_1

    .line 50
    :cond_8
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 51
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-static {p1, p2, v1}, Lio/realm/QRTelephoneRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;Ljava/util/Map;)J

    goto :goto_1

    .line 52
    :cond_9
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 53
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-static {p1, p2, v1}, Lio/realm/QRContactRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;Ljava/util/Map;)J

    goto :goto_1

    .line 54
    :cond_a
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 55
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-static {p1, p2, v1}, Lio/realm/QRUrlRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;Ljava/util/Map;)J

    goto :goto_1

    .line 56
    :cond_b
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 57
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-static {p1, p2, v1}, Lio/realm/QRCodeEntityRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Ljava/util/Map;)J

    goto :goto_1

    .line 58
    :cond_c
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 59
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-static {p1, p2, v1}, Lio/realm/QREmailRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;Ljava/util/Map;)J

    .line 60
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 61
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 62
    invoke-static {p1, v0, v1}, Lio/realm/QRProductRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 63
    :cond_d
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 64
    invoke-static {p1, v0, v1}, Lio/realm/QRTextRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 65
    :cond_e
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 66
    invoke-static {p1, v0, v1}, Lio/realm/CreatedQRCodeRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 67
    :cond_f
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 68
    invoke-static {p1, v0, v1}, Lio/realm/QRMessageRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 69
    :cond_10
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 70
    invoke-static {p1, v0, v1}, Lio/realm/QRLocationRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 71
    :cond_11
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 72
    invoke-static {p1, v0, v1}, Lio/realm/QRWifiRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 73
    :cond_12
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 74
    invoke-static {p1, v0, v1}, Lio/realm/SearchProductRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 75
    :cond_13
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 76
    invoke-static {p1, v0, v1}, Lio/realm/QREventRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 77
    :cond_14
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 78
    invoke-static {p1, v0, v1}, Lio/realm/QRTelephoneRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 79
    :cond_15
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 80
    invoke-static {p1, v0, v1}, Lio/realm/QRContactRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 81
    :cond_16
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 82
    invoke-static {p1, v0, v1}, Lio/realm/QRUrlRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 83
    :cond_17
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 84
    invoke-static {p1, v0, v1}, Lio/realm/QRCodeEntityRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 85
    :cond_18
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 86
    invoke-static {p1, v0, v1}, Lio/realm/QREmailRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 87
    :cond_19
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    .line 88
    :cond_1a
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_1b
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
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-static {p1, p2, p3}, Lio/realm/QRProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 4
    :cond_1
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-static {p1, p2, p3}, Lio/realm/QRTextRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 6
    :cond_2
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-static {p1, p2, p3}, Lio/realm/CreatedQRCodeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 8
    :cond_3
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-static {p1, p2, p3}, Lio/realm/QRMessageRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 10
    :cond_4
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-static {p1, p2, p3}, Lio/realm/QRLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 12
    :cond_5
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-static {p1, p2, p3}, Lio/realm/QRWifiRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;Ljava/util/Map;)J

    goto :goto_1

    .line 14
    :cond_6
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-static {p1, p2, p3}, Lio/realm/SearchProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;Ljava/util/Map;)J

    goto :goto_1

    .line 16
    :cond_7
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-static {p1, p2, p3}, Lio/realm/QREventRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;Ljava/util/Map;)J

    goto :goto_1

    .line 18
    :cond_8
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-static {p1, p2, p3}, Lio/realm/QRTelephoneRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;Ljava/util/Map;)J

    goto :goto_1

    .line 20
    :cond_9
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 21
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-static {p1, p2, p3}, Lio/realm/QRContactRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;Ljava/util/Map;)J

    goto :goto_1

    .line 22
    :cond_a
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-static {p1, p2, p3}, Lio/realm/QRUrlRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;Ljava/util/Map;)J

    goto :goto_1

    .line 24
    :cond_b
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 25
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-static {p1, p2, p3}, Lio/realm/QRCodeEntityRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Ljava/util/Map;)J

    goto :goto_1

    .line 26
    :cond_c
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 27
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-static {p1, p2, p3}, Lio/realm/QREmailRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;Ljava/util/Map;)J

    :goto_1
    return-void

    .line 28
    :cond_d
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

    .line 29
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/RealmModel;

    .line 33
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

    .line 34
    :goto_0
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-static {p1, p2, v1}, Lio/realm/QRProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 36
    :cond_1
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-static {p1, p2, v1}, Lio/realm/QRTextRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 38
    :cond_2
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-static {p1, p2, v1}, Lio/realm/CreatedQRCodeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 40
    :cond_3
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 41
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-static {p1, p2, v1}, Lio/realm/QRMessageRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 42
    :cond_4
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 43
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-static {p1, p2, v1}, Lio/realm/QRLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 44
    :cond_5
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 45
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-static {p1, p2, v1}, Lio/realm/QRWifiRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;Ljava/util/Map;)J

    goto :goto_1

    .line 46
    :cond_6
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 47
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-static {p1, p2, v1}, Lio/realm/SearchProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;Ljava/util/Map;)J

    goto :goto_1

    .line 48
    :cond_7
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 49
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-static {p1, p2, v1}, Lio/realm/QREventRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;Ljava/util/Map;)J

    goto :goto_1

    .line 50
    :cond_8
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 51
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-static {p1, p2, v1}, Lio/realm/QRTelephoneRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;Ljava/util/Map;)J

    goto :goto_1

    .line 52
    :cond_9
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 53
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-static {p1, p2, v1}, Lio/realm/QRContactRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;Ljava/util/Map;)J

    goto :goto_1

    .line 54
    :cond_a
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 55
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-static {p1, p2, v1}, Lio/realm/QRUrlRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;Ljava/util/Map;)J

    goto :goto_1

    .line 56
    :cond_b
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 57
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-static {p1, p2, v1}, Lio/realm/QRCodeEntityRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Ljava/util/Map;)J

    goto :goto_1

    .line 58
    :cond_c
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 59
    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-static {p1, p2, v1}, Lio/realm/QREmailRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;Ljava/util/Map;)J

    .line 60
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 61
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 62
    invoke-static {p1, v0, v1}, Lio/realm/QRProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 63
    :cond_d
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 64
    invoke-static {p1, v0, v1}, Lio/realm/QRTextRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 65
    :cond_e
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 66
    invoke-static {p1, v0, v1}, Lio/realm/CreatedQRCodeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 67
    :cond_f
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 68
    invoke-static {p1, v0, v1}, Lio/realm/QRMessageRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 69
    :cond_10
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 70
    invoke-static {p1, v0, v1}, Lio/realm/QRLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 71
    :cond_11
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 72
    invoke-static {p1, v0, v1}, Lio/realm/QRWifiRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 73
    :cond_12
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 74
    invoke-static {p1, v0, v1}, Lio/realm/SearchProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 75
    :cond_13
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 76
    invoke-static {p1, v0, v1}, Lio/realm/QREventRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 77
    :cond_14
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 78
    invoke-static {p1, v0, v1}, Lio/realm/QRTelephoneRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 79
    :cond_15
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 80
    invoke-static {p1, v0, v1}, Lio/realm/QRContactRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 81
    :cond_16
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 82
    invoke-static {p1, v0, v1}, Lio/realm/QRUrlRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 83
    :cond_17
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 84
    invoke-static {p1, v0, v1}, Lio/realm/QRCodeEntityRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 85
    :cond_18
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 86
    invoke-static {p1, v0, v1}, Lio/realm/QREmailRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 87
    :cond_19
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    .line 88
    :cond_1a
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_1b
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
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lio/realm/QRProductRealmProxy;

    invoke-direct {p2}, Lio/realm/QRProductRealmProxy;-><init>()V

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
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p2, Lio/realm/QRTextRealmProxy;

    invoke-direct {p2}, Lio/realm/QRTextRealmProxy;-><init>()V

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
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, Lio/realm/CreatedQRCodeRealmProxy;

    invoke-direct {p2}, Lio/realm/CreatedQRCodeRealmProxy;-><init>()V

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
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    new-instance p2, Lio/realm/QRMessageRealmProxy;

    invoke-direct {p2}, Lio/realm/QRMessageRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 16
    :cond_3
    :try_start_4
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    new-instance p2, Lio/realm/QRLocationRealmProxy;

    invoke-direct {p2}, Lio/realm/QRLocationRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 19
    :cond_4
    :try_start_5
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    new-instance p2, Lio/realm/QRWifiRealmProxy;

    invoke-direct {p2}, Lio/realm/QRWifiRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 22
    :cond_5
    :try_start_6
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 23
    new-instance p2, Lio/realm/SearchProductRealmProxy;

    invoke-direct {p2}, Lio/realm/SearchProductRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 24
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 25
    :cond_6
    :try_start_7
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 26
    new-instance p2, Lio/realm/QREventRealmProxy;

    invoke-direct {p2}, Lio/realm/QREventRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 27
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 28
    :cond_7
    :try_start_8
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 29
    new-instance p2, Lio/realm/QRTelephoneRealmProxy;

    invoke-direct {p2}, Lio/realm/QRTelephoneRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 30
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 31
    :cond_8
    :try_start_9
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 32
    new-instance p2, Lio/realm/QRContactRealmProxy;

    invoke-direct {p2}, Lio/realm/QRContactRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 33
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 34
    :cond_9
    :try_start_a
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 35
    new-instance p2, Lio/realm/QRUrlRealmProxy;

    invoke-direct {p2}, Lio/realm/QRUrlRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 36
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 37
    :cond_a
    :try_start_b
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 38
    new-instance p2, Lio/realm/QRCodeEntityRealmProxy;

    invoke-direct {p2}, Lio/realm/QRCodeEntityRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 39
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 40
    :cond_b
    :try_start_c
    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 41
    new-instance p2, Lio/realm/QREmailRealmProxy;

    invoke-direct {p2}, Lio/realm/QREmailRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 42
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 43
    :cond_c
    :try_start_d
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception p1

    .line 44
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw p1
.end method

.method public transformerApplied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
