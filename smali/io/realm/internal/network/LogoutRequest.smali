.class public Lio/realm/internal/network/LogoutRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/internal/network/LogoutRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public static create(Lio/realm/internal/objectserver/Token;)Lio/realm/internal/network/LogoutRequest;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/network/LogoutRequest;

    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/realm/internal/network/LogoutRequest;-><init>(Ljava/lang/String;)V

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
    iget-object v2, p0, Lio/realm/internal/network/LogoutRequest;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
