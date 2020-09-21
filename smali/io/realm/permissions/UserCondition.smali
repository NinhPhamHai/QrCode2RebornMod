.class public final Lio/realm/permissions/UserCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/permissions/UserCondition$MatcherType;
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final type:Lio/realm/permissions/UserCondition$MatcherType;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/realm/permissions/UserCondition$MatcherType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/permissions/UserCondition;->type:Lio/realm/permissions/UserCondition$MatcherType;

    .line 3
    iput-object p2, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    return-void
.end method

.method public static keyValue(Ljava/lang/String;Ljava/lang/String;)Lio/realm/permissions/UserCondition;
    .locals 2

    .line 1
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lio/realm/permissions/UserCondition;

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->METADATA:Lio/realm/permissions/UserCondition$MatcherType;

    invoke-direct {v0, v1, p0, p1}, Lio/realm/permissions/UserCondition;-><init>(Lio/realm/permissions/UserCondition$MatcherType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-null \'value\' required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-empty \'key\' required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static noExistingPermissions()Lio/realm/permissions/UserCondition;
    .locals 1

    const-string v0, "*"

    .line 1
    invoke-static {v0}, Lio/realm/permissions/UserCondition;->userId(Ljava/lang/String;)Lio/realm/permissions/UserCondition;

    move-result-object v0

    return-object v0
.end method

.method public static userId(Ljava/lang/String;)Lio/realm/permissions/UserCondition;
    .locals 3

    .line 1
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/realm/permissions/UserCondition;

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->USER_ID:Lio/realm/permissions/UserCondition$MatcherType;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p0}, Lio/realm/permissions/UserCondition;-><init>(Lio/realm/permissions/UserCondition$MatcherType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-empty \'userId\' required."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static username(Ljava/lang/String;)Lio/realm/permissions/UserCondition;
    .locals 3

    .line 1
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/realm/permissions/UserCondition;

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->METADATA:Lio/realm/permissions/UserCondition$MatcherType;

    const-string v2, "email"

    invoke-direct {v0, v1, v2, p0}, Lio/realm/permissions/UserCondition;-><init>(Lio/realm/permissions/UserCondition$MatcherType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-empty \'username\' required."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v1, Lio/realm/permissions/UserCondition;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lio/realm/permissions/UserCondition;

    .line 3
    iget-object v1, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    iget-object v2, p1, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    iget-object p1, p1, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/realm/permissions/UserCondition$MatcherType;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->type:Lio/realm/permissions/UserCondition$MatcherType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCondition{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
