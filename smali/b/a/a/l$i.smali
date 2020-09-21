.class final enum Lb/a/a/l$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/a/a/l$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/l$i;

.field public static final enum b:Lb/a/a/l$i;

.field public static final enum c:Lb/a/a/l$i;

.field private static final synthetic d:[Lb/a/a/l$i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lb/a/a/l$i;

    const/4 v1, 0x0

    const-string v2, "REGULAR"

    invoke-direct {v0, v2, v1}, Lb/a/a/l$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/l$i;->a:Lb/a/a/l$i;

    .line 2
    new-instance v0, Lb/a/a/l$i;

    const/4 v2, 0x1

    const-string v3, "SINGLE"

    invoke-direct {v0, v3, v2}, Lb/a/a/l$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/l$i;->b:Lb/a/a/l$i;

    .line 3
    new-instance v0, Lb/a/a/l$i;

    const/4 v3, 0x2

    const-string v4, "MULTI"

    invoke-direct {v0, v4, v3}, Lb/a/a/l$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/l$i;->c:Lb/a/a/l$i;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lb/a/a/l$i;

    sget-object v4, Lb/a/a/l$i;->a:Lb/a/a/l$i;

    aput-object v4, v0, v1

    sget-object v1, Lb/a/a/l$i;->b:Lb/a/a/l$i;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/l$i;->c:Lb/a/a/l$i;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/a/l$i;->d:[Lb/a/a/l$i;

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

.method public static a(Lb/a/a/l$i;)I
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/k;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 2
    sget p0, Lb/a/a/r;->md_listitem_multichoice:I

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid list type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    sget p0, Lb/a/a/r;->md_listitem_singlechoice:I

    return p0

    .line 5
    :cond_2
    sget p0, Lb/a/a/r;->md_listitem:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/l$i;
    .locals 1

    .line 1
    const-class v0, Lb/a/a/l$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/a/a/l$i;

    return-object p0
.end method

.method public static values()[Lb/a/a/l$i;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/l$i;->d:[Lb/a/a/l$i;

    invoke-virtual {v0}, [Lb/a/a/l$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/l$i;

    return-object v0
.end method
