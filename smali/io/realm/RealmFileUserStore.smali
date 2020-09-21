.class public Lio/realm/RealmFileUserStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/UserStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native nativeGetAllUsers()[Ljava/lang/String;
.end method

.method protected static native nativeGetCurrentUser()Ljava/lang/String;
.end method

.method protected static native nativeGetUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected static native nativeIsActive(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected static native nativeLogoutUser(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected static native nativeUpdateOrCreateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static toSyncUserOrNull(Ljava/lang/String;)Lio/realm/SyncUser;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lio/realm/SyncUser;->fromJson(Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allUsers()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/realm/SyncUser;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/realm/RealmFileUserStore;->nativeGetAllUsers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    if-lez v1, :cond_1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 5
    invoke-static {v4}, Lio/realm/SyncUser;->fromJson(Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 6
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncUser;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/realm/RealmFileUserStore;->nativeGetUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lio/realm/RealmFileUserStore;->toSyncUserOrNull(Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object p1

    return-object p1
.end method

.method public getCurrent()Lio/realm/SyncUser;
    .locals 1

    .line 1
    invoke-static {}, Lio/realm/RealmFileUserStore;->nativeGetCurrentUser()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/realm/RealmFileUserStore;->toSyncUserOrNull(Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object v0

    return-object v0
.end method

.method public isActive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/realm/RealmFileUserStore;->nativeIsActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public put(Lio/realm/SyncUser;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/realm/SyncUser;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lio/realm/RealmFileUserStore;->nativeUpdateOrCreateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/realm/RealmFileUserStore;->nativeLogoutUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
