.class public final Lio/realm/permissions/PermissionRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final accessLevel:Lio/realm/permissions/AccessLevel;

.field private final condition:Lio/realm/permissions/UserCondition;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/permissions/UserCondition;Ljava/lang/String;Lio/realm/permissions/AccessLevel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/permissions/PermissionRequest;->checkCondition(Lio/realm/permissions/UserCondition;)V

    .line 3
    invoke-direct {p0, p2}, Lio/realm/permissions/PermissionRequest;->checkUrl(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p3}, Lio/realm/permissions/PermissionRequest;->checkAccessLevel(Lio/realm/permissions/AccessLevel;)V

    .line 5
    iput-object p1, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    .line 6
    iput-object p3, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    .line 7
    iput-object p2, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    return-void
.end method

.method private checkAccessLevel(Lio/realm/permissions/AccessLevel;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'accessLevel\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkCondition(Lio/realm/permissions/UserCondition;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'condition\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid \'realmUrl\'."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-empty \'realmUrl\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v1, Lio/realm/permissions/PermissionRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lio/realm/permissions/PermissionRequest;

    .line 3
    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    iget-object v2, p1, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    iget-object v2, p1, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    invoke-virtual {v1, v2}, Lio/realm/permissions/UserCondition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    iget-object p1, p1, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getAccessLevel()Lio/realm/permissions/AccessLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    return-object v0
.end method

.method public getCondition()Lio/realm/permissions/UserCondition;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    invoke-virtual {v1}, Lio/realm/permissions/UserCondition;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionRequest{accessLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
