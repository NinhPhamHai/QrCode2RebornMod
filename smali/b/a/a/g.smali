.class public final enum Lb/a/a/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/a/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/g;

.field public static final enum b:Lb/a/a/g;

.field public static final enum c:Lb/a/a/g;

.field private static final d:Z

.field private static final synthetic e:[Lb/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lb/a/a/g;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lb/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/g;->a:Lb/a/a/g;

    .line 2
    new-instance v0, Lb/a/a/g;

    const/4 v2, 0x1

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v2}, Lb/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/g;->b:Lb/a/a/g;

    .line 3
    new-instance v0, Lb/a/a/g;

    const/4 v3, 0x2

    const-string v4, "END"

    invoke-direct {v0, v4, v3}, Lb/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/g;->c:Lb/a/a/g;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lb/a/a/g;

    sget-object v4, Lb/a/a/g;->a:Lb/a/a/g;

    aput-object v4, v0, v1

    sget-object v4, Lb/a/a/g;->b:Lb/a/a/g;

    aput-object v4, v0, v2

    sget-object v4, Lb/a/a/g;->c:Lb/a/a/g;

    aput-object v4, v0, v3

    sput-object v0, Lb/a/a/g;->e:[Lb/a/a/g;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lb/a/a/g;->d:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/g;
    .locals 1

    .line 1
    const-class v0, Lb/a/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/a/a/g;

    return-object p0
.end method

.method public static values()[Lb/a/a/g;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/g;->e:[Lb/a/a/g;

    invoke-virtual {v0}, [Lb/a/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/g;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/a/a/f;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    .line 2
    sget-boolean v0, Lb/a/a/g;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid gravity constant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v2

    .line 4
    :cond_3
    sget-boolean v0, Lb/a/a/g;->d:Z

    if-eqz v0, :cond_4

    const v1, 0x800003

    :cond_4
    return v1
.end method

.method public b()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    sget-object v0, Lb/a/a/f;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x6

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method
