.class public Lio/realm/internal/network/ChangePasswordRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final newPassword:Ljava/lang/String;

.field private final token:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/internal/network/ChangePasswordRequest;->token:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/realm/internal/network/ChangePasswordRequest;->newPassword:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/realm/internal/network/ChangePasswordRequest;->token:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lio/realm/internal/network/ChangePasswordRequest;->newPassword:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lio/realm/internal/network/ChangePasswordRequest;->userID:Ljava/lang/String;

    return-void
.end method

.method public static create(Lio/realm/internal/objectserver/Token;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordRequest;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/network/ChangePasswordRequest;

    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lio/realm/internal/network/ChangePasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordRequest;
    .locals 1

    .line 2
    new-instance v0, Lio/realm/internal/network/ChangePasswordRequest;

    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2, p1}, Lio/realm/internal/network/ChangePasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "token"

    .line 2
    iget-object v2, p0, Lio/realm/internal/network/ChangePasswordRequest;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    .line 3
    iget-object v2, p0, Lio/realm/internal/network/ChangePasswordRequest;->newPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lio/realm/internal/network/ChangePasswordRequest;->userID:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "user_id"

    .line 5
    iget-object v2, p0, Lio/realm/internal/network/ChangePasswordRequest;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
