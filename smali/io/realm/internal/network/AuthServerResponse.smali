.class public abstract Lio/realm/internal/network/AuthServerResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected error:Lio/realm/ObjectServerError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "title"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "hint"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    const/4 v3, -0x1

    .line 4
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lio/realm/ErrorCode;->fromInt(I)Lio/realm/ErrorCode;

    move-result-object v0

    .line 5
    new-instance v2, Lio/realm/ObjectServerError;

    invoke-direct {v2, v0, p0, v1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v1, Lio/realm/ErrorCode;->JSON_EXCEPTION:Lio/realm/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but could not parse error."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getError()Lio/realm/ObjectServerError;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setError(Lio/realm/ObjectServerError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    return-void
.end method
