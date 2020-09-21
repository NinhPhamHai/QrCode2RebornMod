.class public final enum Lb/a/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/a/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/c;

.field public static final enum b:Lb/a/a/c;

.field public static final enum c:Lb/a/a/c;

.field private static final synthetic d:[Lb/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lb/a/a/c;

    const/4 v1, 0x0

    const-string v2, "POSITIVE"

    invoke-direct {v0, v2, v1}, Lb/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/c;->a:Lb/a/a/c;

    .line 2
    new-instance v0, Lb/a/a/c;

    const/4 v2, 0x1

    const-string v3, "NEUTRAL"

    invoke-direct {v0, v3, v2}, Lb/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/c;->b:Lb/a/a/c;

    .line 3
    new-instance v0, Lb/a/a/c;

    const/4 v3, 0x2

    const-string v4, "NEGATIVE"

    invoke-direct {v0, v4, v3}, Lb/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/c;->c:Lb/a/a/c;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lb/a/a/c;

    sget-object v4, Lb/a/a/c;->a:Lb/a/a/c;

    aput-object v4, v0, v1

    sget-object v1, Lb/a/a/c;->b:Lb/a/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/c;->c:Lb/a/a/c;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/a/c;->d:[Lb/a/a/c;

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

.method public static valueOf(Ljava/lang/String;)Lb/a/a/c;
    .locals 1

    .line 1
    const-class v0, Lb/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/a/a/c;

    return-object p0
.end method

.method public static values()[Lb/a/a/c;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/c;->d:[Lb/a/a/c;

    invoke-virtual {v0}, [Lb/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/c;

    return-object v0
.end method
