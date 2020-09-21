.class public Lio/realm/ObjectServerError;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final error:Lio/realm/ErrorCode;

.field private final errorMessage:Ljava/lang/String;

.field private final exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/realm/ErrorCode;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 4
    iput-object p1, p0, Lio/realm/ObjectServerError;->error:Lio/realm/ErrorCode;

    .line 5
    iput-object p2, p0, Lio/realm/ObjectServerError;->errorMessage:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lio/realm/ObjectServerError;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCategory()Lio/realm/ErrorCode$Category;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/ObjectServerError;->error:Lio/realm/ErrorCode;

    invoke-virtual {v0}, Lio/realm/ErrorCode;->getCategory()Lio/realm/ErrorCode$Category;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()Lio/realm/ErrorCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/ObjectServerError;->error:Lio/realm/ErrorCode;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/ObjectServerError;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/ObjectServerError;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/realm/ObjectServerError;->errorMessage:Ljava/lang/String;

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lio/realm/ObjectServerError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v1, p0, Lio/realm/ObjectServerError;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lio/realm/ObjectServerError;->exception:Ljava/lang/Throwable;

    invoke-static {v1}, Lio/realm/internal/Util;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
