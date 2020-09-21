.class public Lio/realm/internal/ProxyUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyField(Lio/realm/internal/SharedRealm;Ljava/util/Map;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/SharedRealm;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/RealmFieldType;",
            ">;",
            "Ljava/lang/String;",
            "Lio/realm/RealmFieldType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p3, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    .line 4
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p4, p3, v1

    aput-object p2, p3, v2

    const-string p2, "Invalid type \'%s\' for field \'%s\' in existing Realm file."

    .line 5
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    .line 7
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const-string p2, "Missing field \'%s\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    .line 8
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
