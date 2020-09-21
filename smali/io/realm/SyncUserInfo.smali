.class public Lio/realm/SyncUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final identity:Ljava/lang/String;

.field private final isAdmin:Z

.field private final provider:Ljava/lang/String;

.field private final providerUserIdentity:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/SyncUserInfo;->provider:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/realm/SyncUserInfo;->providerUserIdentity:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lio/realm/SyncUserInfo;->isAdmin:Z

    return-void
.end method

.method static fromLookupUserIdResponse(Lio/realm/internal/network/LookupUserIdResponse;)Lio/realm/SyncUserInfo;
    .locals 4

    .line 1
    new-instance v0, Lio/realm/SyncUserInfo;

    invoke-virtual {p0}, Lio/realm/internal/network/LookupUserIdResponse;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/internal/network/LookupUserIdResponse;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/realm/internal/network/LookupUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/realm/internal/network/LookupUserIdResponse;->isAdmin()Z

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lio/realm/SyncUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    const-class v1, Lio/realm/SyncUserInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lio/realm/SyncUserInfo;

    .line 3
    iget-boolean v1, p0, Lio/realm/SyncUserInfo;->isAdmin:Z

    iget-boolean v2, p1, Lio/realm/SyncUserInfo;->isAdmin:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v1, p0, Lio/realm/SyncUserInfo;->provider:Ljava/lang/String;

    iget-object v2, p1, Lio/realm/SyncUserInfo;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object v1, p0, Lio/realm/SyncUserInfo;->providerUserIdentity:Ljava/lang/String;

    iget-object v2, p1, Lio/realm/SyncUserInfo;->providerUserIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 6
    :cond_4
    iget-object v0, p0, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

    iget-object p1, p1, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncUserInfo;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderUserIdentity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncUserInfo;->providerUserIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncUserInfo;->provider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/realm/SyncUserInfo;->providerUserIdentity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lio/realm/SyncUserInfo;->isAdmin:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isAdmin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/SyncUserInfo;->isAdmin:Z

    return v0
.end method
