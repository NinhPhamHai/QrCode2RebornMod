.class public final enum Lcom/journeyapps/barcodescanner/a/o$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/journeyapps/barcodescanner/a/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/journeyapps/barcodescanner/a/o$a;

.field public static final enum b:Lcom/journeyapps/barcodescanner/a/o$a;

.field public static final enum c:Lcom/journeyapps/barcodescanner/a/o$a;

.field public static final enum d:Lcom/journeyapps/barcodescanner/a/o$a;

.field private static final synthetic e:[Lcom/journeyapps/barcodescanner/a/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/journeyapps/barcodescanner/a/o$a;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1}, Lcom/journeyapps/barcodescanner/a/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/a/o$a;->a:Lcom/journeyapps/barcodescanner/a/o$a;

    .line 2
    new-instance v0, Lcom/journeyapps/barcodescanner/a/o$a;

    const/4 v2, 0x1

    const-string v3, "CONTINUOUS"

    invoke-direct {v0, v3, v2}, Lcom/journeyapps/barcodescanner/a/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/a/o$a;->b:Lcom/journeyapps/barcodescanner/a/o$a;

    .line 3
    new-instance v0, Lcom/journeyapps/barcodescanner/a/o$a;

    const/4 v3, 0x2

    const-string v4, "INFINITY"

    invoke-direct {v0, v4, v3}, Lcom/journeyapps/barcodescanner/a/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/a/o$a;->c:Lcom/journeyapps/barcodescanner/a/o$a;

    .line 4
    new-instance v0, Lcom/journeyapps/barcodescanner/a/o$a;

    const/4 v4, 0x3

    const-string v5, "MACRO"

    invoke-direct {v0, v5, v4}, Lcom/journeyapps/barcodescanner/a/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/a/o$a;->d:Lcom/journeyapps/barcodescanner/a/o$a;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/journeyapps/barcodescanner/a/o$a;

    sget-object v5, Lcom/journeyapps/barcodescanner/a/o$a;->a:Lcom/journeyapps/barcodescanner/a/o$a;

    aput-object v5, v0, v1

    sget-object v1, Lcom/journeyapps/barcodescanner/a/o$a;->b:Lcom/journeyapps/barcodescanner/a/o$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/journeyapps/barcodescanner/a/o$a;->c:Lcom/journeyapps/barcodescanner/a/o$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/journeyapps/barcodescanner/a/o$a;->d:Lcom/journeyapps/barcodescanner/a/o$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/journeyapps/barcodescanner/a/o$a;->e:[Lcom/journeyapps/barcodescanner/a/o$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/journeyapps/barcodescanner/a/o$a;
    .locals 1

    .line 1
    const-class v0, Lcom/journeyapps/barcodescanner/a/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/journeyapps/barcodescanner/a/o$a;

    return-object p0
.end method

.method public static values()[Lcom/journeyapps/barcodescanner/a/o$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/a/o$a;->e:[Lcom/journeyapps/barcodescanner/a/o$a;

    invoke-virtual {v0}, [Lcom/journeyapps/barcodescanner/a/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/journeyapps/barcodescanner/a/o$a;

    return-object v0
.end method
