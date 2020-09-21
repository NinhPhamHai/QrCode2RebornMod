.class public Lio/realm/internal/objectserver/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/objectserver/Token$Permission;
    }
.end annotation


# static fields
.field private static final KEY_ACCESS:Ljava/lang/String; = "access"

.field private static final KEY_EXPIRES:Ljava/lang/String; = "expires"

.field private static final KEY_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEY_IS_ADMIN:Ljava/lang/String; = "is_admin"

.field private static final KEY_PATH:Ljava/lang/String; = "path"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final KEY_TOKEN_DATA:Ljava/lang/String; = "token_data"


# instance fields
.field private final expiresSec:J

.field private final identity:Ljava/lang/String;

.field private final isAdmin:Z

.field private final path:Ljava/lang/String;

.field private final permissions:[Lio/realm/internal/objectserver/Token$Permission;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lio/realm/internal/objectserver/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    if-eqz p6, :cond_0

    .line 7
    array-length p1, p6

    invoke-static {p6, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/realm/internal/objectserver/Token$Permission;

    iput-object p1, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Lio/realm/internal/objectserver/Token$Permission;

    iput-object p1, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    .line 9
    :goto_0
    iput-boolean p7, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    return-void
.end method

.method public static from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;
    .locals 9

    const-string v0, "token"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "token_data"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "identity"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "path"

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "expires"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "access"

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Lio/realm/internal/objectserver/Token$Permission;

    .line 8
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/realm/internal/objectserver/Token$Permission;->valueOf(Ljava/lang/String;)Lio/realm/internal/objectserver/Token$Permission;

    move-result-object v8

    aput-object v8, v7, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    sget-object v8, Lio/realm/internal/objectserver/Token$Permission;->UNKNOWN:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v8, v7, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-array v0, v1, [Lio/realm/internal/objectserver/Token$Permission;

    move-object v7, v0

    :cond_1
    const-string v0, "is_admin"

    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 13
    new-instance p0, Lio/realm/internal/objectserver/Token;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lio/realm/internal/objectserver/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;Z)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 1
    const-class v2, Lio/realm/internal/objectserver/Token;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lio/realm/internal/objectserver/Token;

    .line 3
    iget-wide v2, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    iget-wide v4, p1, Lio/realm/internal/objectserver/Token;->expiresSec:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v2, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    iget-boolean v3, p1, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    iget-object v3, p1, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    iget-object v3, p1, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    iget-object v3, p1, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 8
    :cond_6
    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object p1, p1, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_7
    iget-object p1, p1, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_9
    :goto_1
    return v1
.end method

.method public expiresMs()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public expiresSec()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public identity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    return v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    return-object v0
.end method

.method public permissions()[Lio/realm/internal/objectserver/Token$Permission;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/objectserver/Token$Permission;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "token"

    .line 2
    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "identity"

    .line 4
    iget-object v3, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "path"

    .line 5
    iget-object v3, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expires"

    .line 6
    iget-wide v3, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 8
    :goto_0
    iget-object v4, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 9
    iget-object v4, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "access"

    .line 10
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_admin"

    .line 11
    iget-boolean v3, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "token_data"

    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not convert Token to JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    return-object v0
.end method
