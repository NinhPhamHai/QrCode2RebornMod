.class public Lio/realm/SyncCredentials;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncCredentials$IdentityProvider;
    }
.end annotation


# instance fields
.field private final identityProvider:Ljava/lang/String;

.field private final userIdentifier:Ljava/lang/String;

.field private final userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/realm/SyncCredentials;->identityProvider:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lio/realm/SyncCredentials;->userIdentifier:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p3, p0, Lio/realm/SyncCredentials;->userInfo:Ljava/util/Map;

    return-void
.end method

.method public static accessToken(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncCredentials;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lio/realm/SyncCredentials;->accessToken(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/SyncCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static accessToken(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/SyncCredentials;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_token"

    .line 3
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "_isAdmin"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p0, Lio/realm/SyncCredentials;

    const-string p2, "_access_token"

    invoke-direct {p0, p1, p2, v0}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method private static assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-null \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' required."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static custom(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/realm/SyncCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/realm/SyncCredentials;"
        }
    .end annotation

    const-string v0, "userIdentifier"

    .line 1
    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "identityProvider"

    .line 2
    invoke-static {p1, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 4
    :cond_0
    new-instance v0, Lio/realm/SyncCredentials;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static facebook(Ljava/lang/String;)Lio/realm/SyncCredentials;
    .locals 3

    const-string v0, "facebookToken"

    .line 1
    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/realm/SyncCredentials;

    const-string v1, "facebook"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static google(Ljava/lang/String;)Lio/realm/SyncCredentials;
    .locals 3

    const-string v0, "googleToken"

    .line 1
    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/realm/SyncCredentials;

    const-string v1, "google"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static usernamePassword(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncCredentials;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lio/realm/SyncCredentials;->usernamePassword(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/SyncCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static usernamePassword(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/SyncCredentials;
    .locals 2

    const-string v0, "username"

    .line 1
    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "register"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "password"

    .line 4
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lio/realm/SyncCredentials;

    invoke-direct {p1, p0, p2, v0}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method public getIdentityProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncCredentials;->identityProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncCredentials;->userIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/SyncCredentials;->userInfo:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
