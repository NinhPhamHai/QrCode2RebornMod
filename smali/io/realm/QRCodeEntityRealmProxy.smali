.class public Lio/realm/QRCodeEntityRealmProxy;
.super Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/QRCodeEntityRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;
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
.field private columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/QRCodeEntityRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/QRCodeEntityRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "id"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "type"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "title"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "created"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "favorite"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrContact"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrEmail"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrEvent"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrLocation"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrMessage"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrProduct"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrTelephone"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrText"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrUrl"

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "qrWifi"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/QRCodeEntityRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 4
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$created()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$created(J)V

    .line 8
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$favorite()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$favorite(Z)V

    .line 9
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 10
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v0, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {p0, v1, p2, p3}, Lio/realm/QRContactRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    .line 14
    :goto_0
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v1

    if-nez v1, :cond_3

    .line 15
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    if-eqz v3, :cond_4

    .line 17
    invoke-interface {v0, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-static {p0, v1, p2, p3}, Lio/realm/QREmailRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    .line 19
    :goto_1
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v1

    if-nez v1, :cond_5

    .line 20
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    goto :goto_2

    .line 21
    :cond_5
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    if-eqz v3, :cond_6

    .line 22
    invoke-interface {v0, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    goto :goto_2

    .line 23
    :cond_6
    invoke-static {p0, v1, p2, p3}, Lio/realm/QREventRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    .line 24
    :goto_2
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v1

    if-nez v1, :cond_7

    .line 25
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    goto :goto_3

    .line 26
    :cond_7
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    if-eqz v3, :cond_8

    .line 27
    invoke-interface {v0, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    goto :goto_3

    .line 28
    :cond_8
    invoke-static {p0, v1, p2, p3}, Lio/realm/QRLocationRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    .line 29
    :goto_3
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v1

    if-nez v1, :cond_9

    .line 30
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    goto :goto_4

    .line 31
    :cond_9
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    if-eqz v3, :cond_a

    .line 32
    invoke-interface {v0, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    goto :goto_4

    .line 33
    :cond_a
    invoke-static {p0, v1, p2, p3}, Lio/realm/QRMessageRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    .line 34
    :goto_4
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v1

    if-nez v1, :cond_b

    .line 35
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    goto :goto_5

    .line 36
    :cond_b
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    if-eqz v3, :cond_c

    .line 37
    invoke-interface {v0, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    goto :goto_5

    .line 38
    :cond_c
    invoke-static {p0, v1, p2, p3}, Lio/realm/QRProductRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    .line 39
    :goto_5
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v1

    if-nez v1, :cond_d

    .line 40
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    goto :goto_6

    .line 41
    :cond_d
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    if-eqz v3, :cond_e

    .line 42
    invoke-interface {v0, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    goto :goto_6

    .line 43
    :cond_e
    invoke-static {p0, v1, p2, p3}, Lio/realm/QRTelephoneRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    .line 44
    :goto_6
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v1

    if-nez v1, :cond_f

    .line 45
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    goto :goto_7

    .line 46
    :cond_f
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    if-eqz v3, :cond_10

    .line 47
    invoke-interface {v0, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    goto :goto_7

    .line 48
    :cond_10
    invoke-static {p0, v1, p2, p3}, Lio/realm/QRTextRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    .line 49
    :goto_7
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v1

    if-nez v1, :cond_11

    .line 50
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    goto :goto_8

    .line 51
    :cond_11
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    if-eqz v3, :cond_12

    .line 52
    invoke-interface {v0, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    goto :goto_8

    .line 53
    :cond_12
    invoke-static {p0, v1, p2, p3}, Lio/realm/QRUrlRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    .line 54
    :goto_8
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    if-nez p1, :cond_13

    .line 55
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    goto :goto_9

    .line 56
    :cond_13
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    if-eqz v1, :cond_14

    .line 57
    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    goto :goto_9

    .line 58
    :cond_14
    invoke-static {p0, p1, p2, p3}, Lio/realm/QRWifiRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    :goto_9
    return-object v0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;"
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
    check-cast v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 9
    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v3

    .line 11
    invoke-interface {p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 12
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v3

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    .line 14
    :cond_4
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 15
    new-instance v1, Lio/realm/QRCodeEntityRealmProxy;

    invoke-direct {v1}, Lio/realm/QRCodeEntityRealmProxy;-><init>()V

    .line 16
    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw p0

    :cond_5
    :goto_1
    move v0, p2

    :goto_2
    if-eqz v0, :cond_6

    .line 18
    invoke-static {p0, v1, p1, p3}, Lio/realm/QRCodeEntityRealmProxy;->update(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Ljava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    goto :goto_3

    :cond_6
    invoke-static {p0, p1, p2, p3}, Lio/realm/QRCodeEntityRealmProxy;->copy(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;-><init>()V

    .line 3
    new-instance v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v1, p1, v0}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_2

    .line 5
    iget-object p0, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    return-object p0

    .line 6
    :cond_2
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 7
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v0, v1

    .line 8
    :goto_0
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$created()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$created(J)V

    .line 12
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$favorite()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$favorite(Z)V

    .line 13
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1, p2, p3}, Lio/realm/QRContactRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    .line 14
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/realm/QREmailRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    .line 15
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/realm/QREventRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    .line 16
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/realm/QRLocationRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    .line 17
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/realm/QRMessageRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    .line 18
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/realm/QRProductRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    .line 19
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/realm/QRTelephoneRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    .line 20
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/realm/QRTextRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    .line 21
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/realm/QRUrlRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    .line 22
    invoke-interface {p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lio/realm/QRWifiRealmProxy;->createDetachedCopy(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;IILjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 1
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "QRCodeEntity"

    invoke-direct {v6, v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "id"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "type"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 4
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "title"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 5
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "created"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 6
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "favorite"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 7
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrContact"

    const-string v2, "QRContact"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 8
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrEmail"

    const-string v2, "QREmail"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 9
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrEvent"

    const-string v2, "QREvent"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 10
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrLocation"

    const-string v2, "QRLocation"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 11
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrMessage"

    const-string v2, "QRMessage"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 12
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrProduct"

    const-string v2, "QRProduct"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 13
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrTelephone"

    const-string v2, "QRTelephone"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 14
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrText"

    const-string v2, "QRText"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 15
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrUrl"

    const-string v2, "QRUrl"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 16
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, "qrWifi"

    const-string v2, "QRWifi"

    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 17
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 1
    new-instance v9, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v10, "id"

    if-eqz v8, :cond_1

    .line 2
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v2

    .line 4
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 7
    sget-object v4, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lio/realm/BaseRealm$RealmObjectContext;

    .line 8
    :try_start_0
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v12

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 9
    new-instance v1, Lio/realm/QRCodeEntityRealmProxy;

    invoke-direct {v1}, Lio/realm/QRCodeEntityRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v12}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "qrWifi"

    const-string v3, "qrUrl"

    const-string v4, "qrText"

    const-string v5, "qrTelephone"

    const-string v6, "qrProduct"

    const-string v12, "qrMessage"

    const-string v13, "qrLocation"

    const-string v14, "qrEvent"

    const-string v15, "qrEmail"

    const-string v11, "qrContact"

    if-nez v1, :cond_e

    .line 11
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_5
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_6
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_7
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 24
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_8
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_9
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 28
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_a
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_b
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 32
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 33
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    const/4 v10, 0x1

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v10, v9}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/QRCodeEntityRealmProxy;

    goto :goto_2

    :cond_c
    move-object/from16 v16, v2

    .line 34
    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v2, v10, v9}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/QRCodeEntityRealmProxy;

    goto :goto_2

    .line 35
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v16, v2

    :goto_2
    const-string v2, "type"

    .line 36
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 37
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x0

    .line 38
    invoke-interface {v1, v9}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const/4 v9, 0x0

    .line 39
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    const/4 v9, 0x0

    :goto_3
    const-string v2, "title"

    .line 40
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 41
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 42
    invoke-interface {v1, v9}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_4

    .line 43
    :cond_11
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    :cond_12
    :goto_4
    const-string v2, "created"

    .line 44
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 45
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 46
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-interface {v1, v9, v10}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$created(J)V

    goto :goto_5

    .line 47
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'created\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_5
    const-string v2, "favorite"

    .line 48
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "favorite"

    .line 49
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "favorite"

    .line 50
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$favorite(Z)V

    goto :goto_6

    .line 51
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'favorite\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_16
    :goto_6
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 53
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    .line 54
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    goto :goto_7

    :cond_17
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v0, v9, v8}, Lio/realm/QRContactRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v9

    .line 56
    invoke-interface {v1, v9}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    goto :goto_7

    :cond_18
    const/4 v2, 0x0

    .line 57
    :goto_7
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 58
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 59
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    goto :goto_8

    .line 60
    :cond_19
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v0, v9, v8}, Lio/realm/QREmailRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v9

    .line 61
    invoke-interface {v1, v9}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    .line 62
    :cond_1a
    :goto_8
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 63
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 64
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    goto :goto_9

    .line 65
    :cond_1b
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v0, v9, v8}, Lio/realm/QREventRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v9

    .line 66
    invoke-interface {v1, v9}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    .line 67
    :cond_1c
    :goto_9
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 68
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 69
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    goto :goto_a

    .line 70
    :cond_1d
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v0, v9, v8}, Lio/realm/QRLocationRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v9

    .line 71
    invoke-interface {v1, v9}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    .line 72
    :cond_1e
    :goto_a
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 73
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 74
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    goto :goto_b

    .line 75
    :cond_1f
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v0, v9, v8}, Lio/realm/QRMessageRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v9

    .line 76
    invoke-interface {v1, v9}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    .line 77
    :cond_20
    :goto_b
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 78
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 79
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    goto :goto_c

    .line 80
    :cond_21
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v0, v6, v8}, Lio/realm/QRProductRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v6

    .line 81
    invoke-interface {v1, v6}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    .line 82
    :cond_22
    :goto_c
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 83
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 84
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    goto :goto_d

    .line 85
    :cond_23
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v0, v5, v8}, Lio/realm/QRTelephoneRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v5

    .line 86
    invoke-interface {v1, v5}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    .line 87
    :cond_24
    :goto_d
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 88
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 89
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    goto :goto_e

    .line 90
    :cond_25
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v0, v4, v8}, Lio/realm/QRTextRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v4

    .line 91
    invoke-interface {v1, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    .line 92
    :cond_26
    :goto_e
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 93
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 94
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    goto :goto_f

    .line 95
    :cond_27
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v3, v8}, Lio/realm/QRUrlRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v3

    .line 96
    invoke-interface {v1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    :cond_28
    :goto_f
    move-object/from16 v3, v16

    .line 97
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 98
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 99
    invoke-interface {v1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    goto :goto_10

    .line 100
    :cond_29
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2, v8}, Lio/realm/QRWifiRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v0

    .line 101
    invoke-interface {v1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    :cond_2a
    :goto_10
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 9
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "type"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "title"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 19
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "created"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_6

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$created(J)V

    goto/16 :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'created\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string v3, "favorite"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 26
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_8

    .line 27
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$favorite(Z)V

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'favorite\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v3, "qrContact"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 31
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_a

    .line 32
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 33
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    goto/16 :goto_0

    .line 34
    :cond_a
    invoke-static {p0, p1}, Lio/realm/QRContactRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v2

    .line 35
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "qrEmail"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 37
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_c

    .line 38
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 39
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    goto/16 :goto_0

    .line 40
    :cond_c
    invoke-static {p0, p1}, Lio/realm/QREmailRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v2

    .line 41
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "qrEvent"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 43
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_e

    .line 44
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 45
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    goto/16 :goto_0

    .line 46
    :cond_e
    invoke-static {p0, p1}, Lio/realm/QREventRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v2

    .line 47
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    goto/16 :goto_0

    :cond_f
    const-string v3, "qrLocation"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 49
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_10

    .line 50
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 51
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    goto/16 :goto_0

    .line 52
    :cond_10
    invoke-static {p0, p1}, Lio/realm/QRLocationRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v2

    .line 53
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    goto/16 :goto_0

    :cond_11
    const-string v3, "qrMessage"

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 55
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_12

    .line 56
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 57
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    goto/16 :goto_0

    .line 58
    :cond_12
    invoke-static {p0, p1}, Lio/realm/QRMessageRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v2

    .line 59
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    goto/16 :goto_0

    :cond_13
    const-string v3, "qrProduct"

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 61
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_14

    .line 62
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 63
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    goto/16 :goto_0

    .line 64
    :cond_14
    invoke-static {p0, p1}, Lio/realm/QRProductRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v2

    .line 65
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    goto/16 :goto_0

    :cond_15
    const-string v3, "qrTelephone"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 67
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_16

    .line 68
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 69
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    goto/16 :goto_0

    .line 70
    :cond_16
    invoke-static {p0, p1}, Lio/realm/QRTelephoneRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v2

    .line 71
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    goto/16 :goto_0

    :cond_17
    const-string v3, "qrText"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 73
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_18

    .line 74
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 75
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    goto/16 :goto_0

    .line 76
    :cond_18
    invoke-static {p0, p1}, Lio/realm/QRTextRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v2

    .line 77
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    goto/16 :goto_0

    :cond_19
    const-string v3, "qrUrl"

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 79
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_1a

    .line 80
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 81
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    goto/16 :goto_0

    .line 82
    :cond_1a
    invoke-static {p0, p1}, Lio/realm/QRUrlRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v2

    .line 83
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    goto/16 :goto_0

    :cond_1b
    const-string v3, "qrWifi"

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 85
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_1c

    .line 86
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 87
    invoke-interface {v0, v4}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    goto/16 :goto_0

    .line 88
    :cond_1c
    invoke-static {p0, p1}, Lio/realm/QRWifiRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v2

    .line 89
    invoke-interface {v0, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    goto/16 :goto_0

    .line 90
    :cond_1d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 91
    :cond_1e
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v1, :cond_1f

    .line 92
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    return-object p0

    .line 93
    :cond_1f
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
    sget-object v0, Lio/realm/QRCodeEntityRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

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
    sget-object v0, Lio/realm/QRCodeEntityRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-object v0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "class_QRCodeEntity"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Ljava/util/Map;)J
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_0

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

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    .line 6
    invoke-virtual {v3}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    .line 7
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 8
    invoke-static {v13, v14, v4, v5}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v13, v14, v4, v5, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v9, v4, v7

    if-nez v9, :cond_18

    .line 10
    invoke-static {v3, v6}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)J

    move-result-wide v16

    .line 11
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 13
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 14
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 15
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 16
    :cond_3
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$created()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 17
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$favorite()Z

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 18
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 19
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_4

    .line 20
    invoke-static {v0, v3, v2}, Lio/realm/QRContactRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 21
    :cond_4
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 22
    :cond_5
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 23
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_6

    .line 24
    invoke-static {v0, v3, v2}, Lio/realm/QREmailRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 25
    :cond_6
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 26
    :cond_7
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 27
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_8

    .line 28
    invoke-static {v0, v3, v2}, Lio/realm/QREventRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 29
    :cond_8
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 30
    :cond_9
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 31
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_a

    .line 32
    invoke-static {v0, v3, v2}, Lio/realm/QRLocationRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 33
    :cond_a
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 34
    :cond_b
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 35
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_c

    .line 36
    invoke-static {v0, v3, v2}, Lio/realm/QRMessageRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 37
    :cond_c
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 38
    :cond_d
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 39
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_e

    .line 40
    invoke-static {v0, v3, v2}, Lio/realm/QRProductRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 41
    :cond_e
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 42
    :cond_f
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 43
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_10

    .line 44
    invoke-static {v0, v3, v2}, Lio/realm/QRTelephoneRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 45
    :cond_10
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 46
    :cond_11
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 47
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_12

    .line 48
    invoke-static {v0, v3, v2}, Lio/realm/QRTextRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 49
    :cond_12
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 50
    :cond_13
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 51
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_14

    .line 52
    invoke-static {v0, v3, v2}, Lio/realm/QRUrlRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 53
    :cond_14
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 54
    :cond_15
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 55
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_16

    .line 56
    invoke-static {v0, v1, v2}, Lio/realm/QRWifiRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;Ljava/util/Map;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 57
    :cond_16
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    :cond_17
    return-wide v16

    .line 58
    :cond_18
    invoke-static {v6}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 59
    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 61
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    .line 62
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v10

    .line 63
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 64
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 65
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 66
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

    .line 67
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 69
    invoke-static {v12, v13, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 70
    :cond_2
    invoke-static {v12, v13, v10, v11, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_19

    .line 71
    invoke-static {v2, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)J

    move-result-wide v16

    .line 72
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 74
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    :cond_3
    move-wide/from16 v19, v10

    .line 75
    :goto_2
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 76
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 77
    :cond_4
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$created()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 78
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$favorite()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 79
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 80
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_5

    .line 81
    invoke-static {v0, v3, v1}, Lio/realm/QRContactRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 82
    :cond_5
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 83
    :cond_6
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 84
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_7

    .line 85
    invoke-static {v0, v3, v1}, Lio/realm/QREmailRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 86
    :cond_7
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 87
    :cond_8
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 88
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_9

    .line 89
    invoke-static {v0, v3, v1}, Lio/realm/QREventRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 90
    :cond_9
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 91
    :cond_a
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 92
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_b

    .line 93
    invoke-static {v0, v3, v1}, Lio/realm/QRLocationRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 94
    :cond_b
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 95
    :cond_c
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 96
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_d

    .line 97
    invoke-static {v0, v3, v1}, Lio/realm/QRMessageRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 98
    :cond_d
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 99
    :cond_e
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 100
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_f

    .line 101
    invoke-static {v0, v3, v1}, Lio/realm/QRProductRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 102
    :cond_f
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 103
    :cond_10
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 104
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_11

    .line 105
    invoke-static {v0, v3, v1}, Lio/realm/QRTelephoneRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 106
    :cond_11
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 107
    :cond_12
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 108
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_13

    .line 109
    invoke-static {v0, v3, v1}, Lio/realm/QRTextRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 110
    :cond_13
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 111
    :cond_14
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 112
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_15

    .line 113
    invoke-static {v0, v3, v1}, Lio/realm/QRUrlRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 114
    :cond_15
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 115
    :cond_16
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 116
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_17

    .line 117
    invoke-static {v0, v3, v1}, Lio/realm/QRWifiRealmProxy;->insert(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 118
    :cond_17
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    :cond_18
    move-wide/from16 v10, v19

    goto/16 :goto_0

    .line 119
    :cond_19
    invoke-static {v3}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_1a
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Ljava/util/Map;)J
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_0

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

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    .line 6
    invoke-virtual {v3}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    .line 7
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 8
    invoke-static {v13, v14, v4, v5}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v13, v14, v4, v5, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v9, v4, v7

    if-nez v9, :cond_2

    .line 10
    invoke-static {v3, v6}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_1

    :cond_2
    move-wide/from16 v16, v4

    .line 11
    :goto_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 13
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 14
    :cond_3
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 15
    :goto_2
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 16
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 17
    :cond_4
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 18
    :goto_3
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$created()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 19
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$favorite()Z

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 20
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 21
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_5

    .line 22
    invoke-static {v0, v3, v2}, Lio/realm/QRContactRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 23
    :cond_5
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_4

    .line 24
    :cond_6
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 25
    :goto_4
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 26
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_7

    .line 27
    invoke-static {v0, v3, v2}, Lio/realm/QREmailRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 28
    :cond_7
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_5

    .line 29
    :cond_8
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 30
    :goto_5
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 31
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_9

    .line 32
    invoke-static {v0, v3, v2}, Lio/realm/QREventRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 33
    :cond_9
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_6

    .line 34
    :cond_a
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 35
    :goto_6
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 36
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_b

    .line 37
    invoke-static {v0, v3, v2}, Lio/realm/QRLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 38
    :cond_b
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_7

    .line 39
    :cond_c
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 40
    :goto_7
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 41
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_d

    .line 42
    invoke-static {v0, v3, v2}, Lio/realm/QRMessageRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 43
    :cond_d
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_8

    .line 44
    :cond_e
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 45
    :goto_8
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 46
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_f

    .line 47
    invoke-static {v0, v3, v2}, Lio/realm/QRProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 48
    :cond_f
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_9

    .line 49
    :cond_10
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 50
    :goto_9
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 51
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_11

    .line 52
    invoke-static {v0, v3, v2}, Lio/realm/QRTelephoneRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 53
    :cond_11
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_a

    .line 54
    :cond_12
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 55
    :goto_a
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 56
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_13

    .line 57
    invoke-static {v0, v3, v2}, Lio/realm/QRTextRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 58
    :cond_13
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_b

    .line 59
    :cond_14
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 60
    :goto_b
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 61
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_15

    .line 62
    invoke-static {v0, v3, v2}, Lio/realm/QRUrlRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 63
    :cond_15
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_c

    .line 64
    :cond_16
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 65
    :goto_c
    invoke-interface/range {p1 .. p1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 66
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_17

    .line 67
    invoke-static {v0, v1, v2}, Lio/realm/QRWifiRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;Ljava/util/Map;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 68
    :cond_17
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_d

    .line 69
    :cond_18
    iget-wide v6, v15, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_d
    return-wide v16
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 70
    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 72
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    .line 73
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v10

    .line 74
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 75
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 76
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 77
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

    .line 78
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 80
    invoke-static {v12, v13, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v12, v13, v10, v11, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 82
    invoke-static {v2, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v4

    .line 83
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 85
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v10

    .line 86
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 87
    :goto_3
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 88
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 89
    :cond_5
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 90
    :goto_4
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$created()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 91
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$favorite()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 92
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 93
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_6

    .line 94
    invoke-static {v0, v3, v1}, Lio/realm/QRContactRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 95
    :cond_6
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_5

    .line 96
    :cond_7
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 97
    :goto_5
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 98
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_8

    .line 99
    invoke-static {v0, v3, v1}, Lio/realm/QREmailRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 100
    :cond_8
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_6

    .line 101
    :cond_9
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 102
    :goto_6
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 103
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_a

    .line 104
    invoke-static {v0, v3, v1}, Lio/realm/QREventRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 105
    :cond_a
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_7

    .line 106
    :cond_b
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 107
    :goto_7
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 108
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_c

    .line 109
    invoke-static {v0, v3, v1}, Lio/realm/QRLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 110
    :cond_c
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_8

    .line 111
    :cond_d
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 112
    :goto_8
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 113
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_e

    .line 114
    invoke-static {v0, v3, v1}, Lio/realm/QRMessageRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 115
    :cond_e
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_9

    .line 116
    :cond_f
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 117
    :goto_9
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 118
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_10

    .line 119
    invoke-static {v0, v3, v1}, Lio/realm/QRProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 120
    :cond_10
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_a

    .line 121
    :cond_11
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 122
    :goto_a
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 123
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_12

    .line 124
    invoke-static {v0, v3, v1}, Lio/realm/QRTelephoneRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 125
    :cond_12
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_b

    .line 126
    :cond_13
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 127
    :goto_b
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 128
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_14

    .line 129
    invoke-static {v0, v3, v1}, Lio/realm/QRTextRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 130
    :cond_14
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_c

    .line 131
    :cond_15
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 132
    :goto_c
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 133
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_16

    .line 134
    invoke-static {v0, v3, v1}, Lio/realm/QRUrlRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 135
    :cond_16
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_d

    .line 136
    :cond_17
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 137
    :goto_d
    invoke-interface {v15}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 138
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_18

    .line 139
    invoke-static {v0, v3, v1}, Lio/realm/QRWifiRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 140
    :cond_18
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_e

    .line 141
    :cond_19
    iget-wide v5, v14, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_e
    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_1a
    return-void
.end method

.method static update(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Ljava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 3
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$created()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$created(J)V

    .line 4
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$favorite()Z

    move-result v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$favorite(Z)V

    .line 5
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 6
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {p1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0, v0, v1, p3}, Lio/realm/QRContactRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    .line 10
    :goto_0
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v0

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    if-eqz v3, :cond_3

    .line 13
    invoke-interface {p1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {p0, v0, v1, p3}, Lio/realm/QREmailRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    .line 15
    :goto_1
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v0

    if-nez v0, :cond_4

    .line 16
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    goto :goto_2

    .line 17
    :cond_4
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    if-eqz v3, :cond_5

    .line 18
    invoke-interface {p1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    goto :goto_2

    .line 19
    :cond_5
    invoke-static {p0, v0, v1, p3}, Lio/realm/QREventRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    .line 20
    :goto_2
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v0

    if-nez v0, :cond_6

    .line 21
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    goto :goto_3

    .line 22
    :cond_6
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    if-eqz v3, :cond_7

    .line 23
    invoke-interface {p1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    goto :goto_3

    .line 24
    :cond_7
    invoke-static {p0, v0, v1, p3}, Lio/realm/QRLocationRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    .line 25
    :goto_3
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v0

    if-nez v0, :cond_8

    .line 26
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    goto :goto_4

    .line 27
    :cond_8
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    if-eqz v3, :cond_9

    .line 28
    invoke-interface {p1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    goto :goto_4

    .line 29
    :cond_9
    invoke-static {p0, v0, v1, p3}, Lio/realm/QRMessageRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    .line 30
    :goto_4
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v0

    if-nez v0, :cond_a

    .line 31
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    goto :goto_5

    .line 32
    :cond_a
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    if-eqz v3, :cond_b

    .line 33
    invoke-interface {p1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    goto :goto_5

    .line 34
    :cond_b
    invoke-static {p0, v0, v1, p3}, Lio/realm/QRProductRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    .line 35
    :goto_5
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v0

    if-nez v0, :cond_c

    .line 36
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    goto :goto_6

    .line 37
    :cond_c
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    if-eqz v3, :cond_d

    .line 38
    invoke-interface {p1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    goto :goto_6

    .line 39
    :cond_d
    invoke-static {p0, v0, v1, p3}, Lio/realm/QRTelephoneRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    .line 40
    :goto_6
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v0

    if-nez v0, :cond_e

    .line 41
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    goto :goto_7

    .line 42
    :cond_e
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    if-eqz v3, :cond_f

    .line 43
    invoke-interface {p1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    goto :goto_7

    .line 44
    :cond_f
    invoke-static {p0, v0, v1, p3}, Lio/realm/QRTextRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    .line 45
    :goto_7
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v0

    if-nez v0, :cond_10

    .line 46
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    goto :goto_8

    .line 47
    :cond_10
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    if-eqz v3, :cond_11

    .line 48
    invoke-interface {p1, v3}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    goto :goto_8

    .line 49
    :cond_11
    invoke-static {p0, v0, v1, p3}, Lio/realm/QRUrlRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    .line 50
    :goto_8
    invoke-interface {p2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p2

    if-nez p2, :cond_12

    .line 51
    invoke-interface {p1, v2}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    goto :goto_9

    .line 52
    :cond_12
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    if-eqz v0, :cond_13

    .line 53
    invoke-interface {p1, v0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    goto :goto_9

    .line 54
    :cond_13
    invoke-static {p0, p2, v1, p3}, Lio/realm/QRWifiRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;ZLjava/util/Map;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/QRCodeEntityRealmProxyInterface;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    :goto_9
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
    const-class v2, Lio/realm/QRCodeEntityRealmProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/QRCodeEntityRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p1, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iput-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    .line 4
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 5
    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 6
    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 7
    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$created()J
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$favorite()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->idIndex:J

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
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    return-object v0
.end method

.method public realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    return-object v0
.end method

.method public realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    return-object v0
.end method

.method public realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    return-object v0
.end method

.method public realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    return-object v0
.end method

.method public realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    return-object v0
.end method

.method public realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    return-object v0
.end method

.method public realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    return-object v0
.end method

.method public realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    return-object v0
.end method

.method public realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v3, v3, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$created(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v2, v2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$favorite(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v2, v2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrContact"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrEmail"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrEvent"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrLocation"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrMessage"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrProduct"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrTelephone"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrText"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrUrl"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "\'value\' belongs to a different Realm."

    const-string v2, "\'value\' is not a valid managed object."

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v3, "qrWifi"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v4

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v5, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 15
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v2, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v0, v2, :cond_8

    .line 17
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v2, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v8, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v2, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v8, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v0, v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/QRCodeEntityRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/QRCodeEntityRealmProxy;->columnInfo:Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    iget-wide v1, v1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QRCodeEntity = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{id:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$id()Ljava/lang/String;

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

    const-string v4, "{type:"

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$type()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$type()Ljava/lang/String;

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

    const-string v4, "{title:"

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$title()Ljava/lang/String;

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

    const-string v4, "{created:"

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$created()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{favorite:"

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$favorite()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{qrContact:"

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v4, "QRContact"

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{qrEmail:"

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v4, "QREmail"

    goto :goto_4

    :cond_5
    move-object v4, v2

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{qrEvent:"

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, "QREvent"

    goto :goto_5

    :cond_6
    move-object v4, v2

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{qrLocation:"

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, "QRLocation"

    goto :goto_6

    :cond_7
    move-object v4, v2

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{qrMessage:"

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, "QRMessage"

    goto :goto_7

    :cond_8
    move-object v4, v2

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{qrProduct:"

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, "QRProduct"

    goto :goto_8

    :cond_9
    move-object v4, v2

    :goto_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{qrTelephone:"

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v4, "QRTelephone"

    goto :goto_9

    :cond_a
    move-object v4, v2

    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{qrText:"

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, "QRText"

    goto :goto_a

    :cond_b
    move-object v4, v2

    :goto_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{qrUrl:"

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v4, "QRUrl"

    goto :goto_b

    :cond_c
    move-object v4, v2

    :goto_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{qrWifi:"

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lio/realm/QRCodeEntityRealmProxy;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v2, "QRWifi"

    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
