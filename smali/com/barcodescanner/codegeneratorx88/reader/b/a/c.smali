.class public Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 233
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 234
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    return-object v0
.end method

.method protected static a(Lcom/google/zxing/Result;)Ljava/lang/String;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\ufeff"

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;",
            ")V"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e009a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$first_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$last_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00c9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$phone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$email()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0082

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$email()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0065

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$address()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00cc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$subject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00c8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$subject()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0097

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$body()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00cb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e007e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$description()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$location()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0094

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$location()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00cf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$start()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "MMMM dd, yyyy, hh:mm:ss a"

    cmp-long v5, v0, v2

    if-lez v5, :cond_4

    .line 120
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0070

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$start()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/utility/UtilsLib;->getDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_4
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$end()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-lez v5, :cond_5

    .line 122
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0083

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$end()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p3, v4}, Lcom/utility/UtilsLib;->getDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;",
            ")V"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0093

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$latitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0095

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$longitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$altitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 126
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e006e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$altitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$query()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00bb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$query()Ljava/lang/String;

    move-result-object p3

    const-string v1, "q\\="

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$numbers()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00a1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$numbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0072

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$body()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$product_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00b5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$product_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$content()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e007e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$content()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$isExpandedProduct()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$productionDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00b2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$productionDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00aa

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$packagingDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_3
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 143
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0071

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$bestBeforeDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_4
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 145
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e0087

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_5
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$weight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, " "

    if-nez v0, :cond_6

    .line 147
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00d3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$weight()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$weightType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_6
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$price()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 149
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00ae

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$price()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;",
            ")V"
        }
    .end annotation

    .line 150
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00c9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$number()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;",
            ")V"
        }
    .end annotation

    .line 152
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00ca

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmGet$uri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00cf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmGet$uri()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$ssid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00c7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$ssid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$password()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e00ab

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$password()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$networkEncryption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e009b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$networkEncryption()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v1, 0x7f0e008e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$isHidden()Z

    move-result p3

    if-eqz p3, :cond_3

    const p3, 0x7f0e00d8

    goto :goto_0

    :cond_3
    const p3, 0x7f0e009d

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/google/zxing/Result;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)Z
    .locals 2

    .line 62
    :try_start_0
    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEl:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "teL:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tEL:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tEl:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-direct {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;-><init>()V

    .line 68
    invoke-virtual {v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmSet$raw_data(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmSet$number(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmSet$telURI(Ljava/lang/String;)V

    const-string p1, "QR_TELEPHONE"

    .line 71
    invoke-virtual {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    .line 73
    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$number()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;
    .locals 6

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/google/zxing/client/result/VEventResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/VEventResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$title(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getLocation()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getLocation()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$location(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getOrganizer()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getOrganizer()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$url(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getDescription()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$description(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/util/Date;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_4

    move-wide v4, v2

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_4
    invoke-virtual {v0, v4, v5}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$start(J)V

    .line 9
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getEnd()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getEnd()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_5
    invoke-virtual {v0, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$end(J)V

    return-object v0

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private b([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 12
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ";"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private c(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;
    .locals 7

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MECARD:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v1, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v2, "MEMORY"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v1, Lcom/google/zxing/client/result/AddressBookAUResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v2, "BIZCARD:"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Lcom/google/zxing/client/result/BizcardResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/BizcardResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/BizcardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Lcom/google/zxing/client/result/VCardResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/VCardResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_d

    .line 11
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNicknames()[Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_3

    .line 16
    array-length v6, v1

    if-lez v6, :cond_3

    .line 17
    invoke-virtual {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$first_name(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 18
    array-length v1, v2

    if-lez v1, :cond_4

    .line 19
    invoke-virtual {p0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$first_name(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v3, :cond_6

    .line 20
    array-length v6, v3

    if-lez v6, :cond_6

    .line 21
    aget-object v6, v3, v2

    if-nez v6, :cond_5

    move-object v3, v1

    goto :goto_2

    :cond_5
    aget-object v3, v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$address(Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_8

    .line 22
    array-length v3, v4

    if-lez v3, :cond_8

    .line 23
    aget-object v3, v4, v2

    if-nez v3, :cond_7

    move-object v3, v1

    goto :goto_3

    :cond_7
    aget-object v3, v4, v2

    :goto_3
    invoke-virtual {v0, v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$phone(Ljava/lang/String;)V

    :cond_8
    if-eqz v5, :cond_a

    .line 24
    array-length v3, v5

    if-lez v3, :cond_a

    .line 25
    aget-object v3, v5, v2

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    aget-object v1, v5, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$email(Ljava/lang/String;)V

    .line 26
    :cond_a
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 27
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$job(Ljava/lang/String;)V

    .line 28
    :cond_b
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 29
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$birthday(Ljava/lang/String;)V

    :cond_c
    return-object v0

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;
    .locals 3

    .line 42
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$raw_data(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MATMSG:"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v1, Lcom/google/zxing/client/result/EmailAddressResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/EmailAddressResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getTos()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$tos(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getCCs()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$ccs(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getBCCs()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$bccs(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$subject(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getBody()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$body(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 4

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$created(J)V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Lcom/google/zxing/Result;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const-string v1, "QR_URL"

    .line 5
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->l(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    .line 7
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v3

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmGet$uri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_4

    const-string v1, "QR_EMAIL"

    .line 10
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->d(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    .line 12
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v3

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14
    :cond_4
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_6

    const-string v1, "QR_TELEPHONE"

    .line 15
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->h(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    .line 17
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v3

    .line 18
    :cond_5
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$number()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19
    :cond_6
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_8

    const-string v1, "QR_CONTACT"

    .line 20
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->c(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    .line 22
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v3

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$first_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$last_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 24
    :cond_8
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_a

    const-string v1, "QR_MESSAGE"

    .line 25
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->k(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    .line 27
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p1

    if-nez p1, :cond_9

    return-object v3

    .line 28
    :cond_9
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$numbers()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29
    :cond_a
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_c

    const-string v1, "QR_LOCATION"

    .line 30
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->f(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    .line 32
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p1

    if-nez p1, :cond_b

    return-object v3

    .line 33
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :cond_c
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_e

    const-string v1, "QR_WIFI"

    .line 35
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->j(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    .line 37
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    if-nez p1, :cond_d

    return-object v3

    .line 38
    :cond_d
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$ssid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :cond_e
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_10

    const-string v1, "QR_PRODUCT"

    .line 40
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->g(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    .line 42
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    if-nez p1, :cond_f

    return-object v3

    .line 43
    :cond_f
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$product_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_10
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_12

    const-string v1, "QR_EVENT"

    .line 45
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->b(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    .line 47
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    if-nez p1, :cond_11

    return-object v3

    .line 48
    :cond_11
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    :cond_12
    const-string v1, "QR_TEXT"

    .line 49
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->i(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    .line 51
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    if-nez p1, :cond_13

    return-object v3

    .line 52
    :cond_13
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private f(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;
    .locals 3

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/google/zxing/client/result/GeoResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/GeoResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/zxing/client/result/GeoParsedResult;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$latitude(D)V

    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/client/result/GeoParsedResult;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$longitude(D)V

    .line 6
    invoke-virtual {p1}, Lcom/google/zxing/client/result/GeoParsedResult;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$altitude(D)V

    .line 7
    invoke-virtual {p1}, Lcom/google/zxing/client/result/GeoParsedResult;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/GeoParsedResult;->getQuery()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$query(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
    .locals 3

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/google/zxing/client/result/ExpandedProductResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/google/zxing/client/result/ProductResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/ProductResultParser;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/zxing/client/result/ProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;

    move-result-object p1

    const-string v2, ""

    if-eqz v1, :cond_d

    .line 5
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getProductID()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getProductID()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$product_id(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$isExpandedProduct(Z)V

    .line 7
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getSscc()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getSscc()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$sscc(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getLotNumber()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getLotNumber()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$lotNumber(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getProductionDate()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getProductionDate()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$productionDate(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getPackagingDate()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getPackagingDate()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$packagingDate(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getBestBeforeDate()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    move-object p1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getBestBeforeDate()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$bestBeforeDate(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getExpirationDate()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    move-object p1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getExpirationDate()Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$expirationDate(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getWeight()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    move-object p1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getWeight()Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$weight(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getWeightType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    move-object p1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getWeightType()Ljava/lang/String;

    move-result-object p1

    :goto_8
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$weightType(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getWeightIncrement()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    move-object p1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getWeightIncrement()Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$weightIncrement(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getPrice()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    move-object p1, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getPrice()Ljava/lang/String;

    move-result-object p1

    :goto_a
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$price(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getPriceIncrement()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    move-object p1, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getPriceIncrement()Ljava/lang/String;

    move-result-object p1

    :goto_b
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$priceIncrement(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getPriceCurrency()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getPriceCurrency()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$priceCurrency(Ljava/lang/String;)V

    goto :goto_f

    :cond_d
    if-eqz p1, :cond_10

    .line 19
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ProductParsedResult;->getProductID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_d

    :cond_e
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ProductParsedResult;->getProductID()Ljava/lang/String;

    move-result-object v1

    :goto_d
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$product_id(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$isExpandedProduct(Z)V

    .line 21
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ProductParsedResult;->getNormalizedProductID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_e

    :cond_f
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ProductParsedResult;->getNormalizedProductID()Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$normalized_product_id(Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method private h(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;
    .locals 3

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/google/zxing/client/result/TelResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/TelResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/zxing/client/result/TelParsedResult;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/TelParsedResult;->getNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmSet$number(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/client/result/TelParsedResult;->getTelURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/client/result/TelParsedResult;->getTelURI()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmSet$telURI(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/zxing/client/result/TelParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/client/result/TelParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmSet$title(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private i(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;
    .locals 3

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/google/zxing/client/result/TextParsedResult;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/zxing/client/result/TextParsedResult;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    if-nez p1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/client/result/TextParsedResult;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmSet$text(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/zxing/client/result/TextParsedResult;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/client/result/TextParsedResult;->getLanguage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmSet$language(Ljava/lang/String;)V

    return-object v0
.end method

.method private j(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;
    .locals 3

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/google/zxing/client/result/WifiResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/WifiResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$ssid(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/client/result/WifiParsedResult;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/client/result/WifiParsedResult;->getPassword()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$password(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/zxing/client/result/WifiParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/client/result/WifiParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$networkEncryption(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/zxing/client/result/WifiParsedResult;->isHidden()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$isHidden(Z)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private k(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;
    .locals 3

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "smsto:"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SMSTO:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mmsto:"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MMSTO:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/google/zxing/client/result/SMSMMSResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/SMSMMSResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmSet$numbers(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/zxing/client/result/SMSParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/client/result/SMSParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmSet$subject(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/zxing/client/result/SMSParsedResult;->getBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/client/result/SMSParsedResult;->getBody()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmSet$body(Ljava/lang/String;)V

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private l(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;
    .locals 3

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEBKM:"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v1, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v2, "urlto:"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "URLTO:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lcom/google/zxing/client/result/URLTOResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/URLTOResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/URLTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lcom/google/zxing/client/result/URIResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/URIResultParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/result/URIResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmSet$uri(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/zxing/client/result/URIParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/client/result/URIParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmSet$title(Ljava/lang/String;)V

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    const-string v0, "QR_CONTACT"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f070067

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "QR_WIFI"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f070065

    return p1

    :cond_1
    const-string v0, "QR_TELEPHONE"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f070063

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "QR_URL"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f070060

    return p1

    :cond_3
    const-string v0, "QR_TEXT"

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f070066

    return p1

    :cond_4
    const-string v0, "QR_PRODUCT"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f070062

    return p1

    :cond_5
    const-string v0, "QR_MESSAGE"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    const-string v0, "QR_LOCATION"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p1, 0x7f070068

    return p1

    :cond_7
    const-string v0, "QR_EMAIL"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f070061

    if-eqz v0, :cond_8

    return v2

    :cond_8
    const-string v0, "QR_EVENT"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v1

    :cond_9
    return v2
.end method

.method public a(Lcom/journeyapps/barcodescanner/b;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 4

    .line 4
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/b;->d()Lcom/google/zxing/Result;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;-><init>()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$created(J)V

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Lcom/google/zxing/Result;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const-string v1, "QR_URL"

    .line 9
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->l(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    .line 11
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v3

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmGet$uri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_4

    const-string v1, "QR_EMAIL"

    .line 14
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->d(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    .line 16
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v3

    .line 17
    :cond_3
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_4
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_6

    const-string v1, "QR_TELEPHONE"

    .line 19
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->h(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    .line 21
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v3

    .line 22
    :cond_5
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$number()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_6
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_8

    const-string v1, "QR_CONTACT"

    .line 24
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->c(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    .line 26
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v3

    .line 27
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$first_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$last_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_a

    const-string v1, "QR_MESSAGE"

    .line 29
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->k(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    .line 31
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p1

    if-nez p1, :cond_9

    return-object v3

    .line 32
    :cond_9
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$numbers()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_a
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_c

    const-string v1, "QR_LOCATION"

    .line 34
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->f(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    .line 36
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p1

    if-nez p1, :cond_b

    return-object v3

    .line 37
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :cond_c
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_e

    const-string v1, "QR_WIFI"

    .line 39
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->j(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    .line 41
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    if-nez p1, :cond_d

    return-object v3

    .line 42
    :cond_d
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$ssid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :cond_e
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_10

    const-string v1, "QR_PRODUCT"

    .line 44
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->g(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    .line 46
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    if-nez p1, :cond_f

    return-object v3

    .line 47
    :cond_f
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$product_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_10
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v1, v2, :cond_12

    const-string v1, "QR_EVENT"

    .line 49
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->b(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    .line 51
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    if-nez p1, :cond_11

    return-object v3

    .line 52
    :cond_11
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    :cond_12
    const-string v1, "QR_TEXT"

    .line 53
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->i(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    .line 55
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    if-nez p1, :cond_13

    return-object v3

    .line 56
    :cond_13
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "QR_CONTACT"

    .line 213
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f0e0064

    .line 214
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "QR_WIFI"

    .line 215
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p2, 0x7f0e00a8

    .line 216
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "QR_TELEPHONE"

    .line 217
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p2, 0x7f0e0073

    .line 218
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "QR_URL"

    .line 219
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p2, 0x7f0e00a5

    .line 220
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "QR_TEXT"

    .line 221
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0e0097

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "QR_PRODUCT"

    .line 223
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p2, 0x7f0e0096

    .line 224
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "QR_MESSAGE"

    .line 225
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "QR_LOCATION"

    .line 227
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p2, 0x7f0e00a7

    .line 228
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "QR_EMAIL"

    .line 229
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p2, 0x7f0e0082

    .line 230
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v0, "QR_EVENT"

    .line 231
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const p2, 0x7f0e00a6

    .line 232
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, ""

    return-object p1
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)Ljava/lang/String;
    .locals 3

    .line 192
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR_CONTACT"

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$first_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$last_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "QR_WIFI"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$ssid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "QR_TELEPHONE"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$number()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "QR_URL"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmGet$uri()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "QR_TEXT"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v1, "QR_PRODUCT"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$product_id()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v1, "QR_MESSAGE"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 206
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$body()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v1, "QR_LOCATION"

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v1, "QR_EMAIL"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 210
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v1, "QR_EVENT"

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 212
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$title()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, ""

    return-object p1
.end method

.method public a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    .line 57
    array-length v0, p1

    if-lez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_CONTACT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    goto/16 :goto_0

    .line 81
    :cond_0
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V

    goto/16 :goto_0

    .line 83
    :cond_1
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    goto/16 :goto_0

    .line 85
    :cond_2
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_LOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V

    goto/16 :goto_0

    .line 87
    :cond_3
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_PRODUCT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V

    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_TELEPHONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V

    goto :goto_0

    .line 93
    :cond_6
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 94
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V

    goto :goto_0

    .line 95
    :cond_7
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_URL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 96
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V

    goto :goto_0

    .line 97
    :cond_8
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 98
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    :cond_9
    :goto_0
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$barcode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$barcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00b5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$barcode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00b9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$model()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$model()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00b8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$model()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_2
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$manufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$manufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 171
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00b7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$manufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_3
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 173
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00b6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$image()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_4
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$avg_price()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$avg_price()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 175
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00b1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$avg_price()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_5
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$spec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$spec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 177
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00ba

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$spec()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_6
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$feature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$feature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 179
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00b4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$feature()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_7
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$description()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 181
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;

    const v2, 0x7f0e00b3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$description()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    const-string v0, "QR_CONTACT"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0700a1

    return p1

    :cond_0
    const-string v0, "QR_WIFI"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0700a6

    return p1

    :cond_1
    const-string v0, "QR_TELEPHONE"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f0700ef

    return p1

    :cond_2
    const-string v0, "QR_URL"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f0700f1

    return p1

    :cond_3
    const-string v0, "QR_TEXT"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0700f0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "QR_PRODUCT"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f0700d8

    return p1

    :cond_5
    const-string v0, "QR_MESSAGE"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f0700a3

    return p1

    :cond_6
    const-string v0, "QR_LOCATION"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p1, 0x7f0700a2

    return p1

    :cond_7
    const-string v0, "QR_EMAIL"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x7f0700c9

    return p1

    :cond_8
    const-string v0, "QR_EVENT"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f0700b7

    return p1

    :cond_9
    return v1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "QR_CONTACT"

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f0e0076

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "QR_WIFI"

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p2, 0x7f0e00d6

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "QR_TELEPHONE"

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p2, 0x7f0e0073

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "QR_URL"

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p2, 0x7f0e00cf

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "QR_TEXT"

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p2, 0x7f0e00ca

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "QR_PRODUCT"

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p2, 0x7f0e00b0

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "QR_MESSAGE"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p2, 0x7f0e0097

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "QR_LOCATION"

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p2, 0x7f0e0094

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "QR_EMAIL"

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p2, 0x7f0e0082

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v0, "QR_EVENT"

    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const p2, 0x7f0e0085

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, ""

    return-object p1
.end method

.method public c(Ljava/lang/String;)I
    .locals 2

    const-string v0, "QR_CONTACT"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0700ad

    return p1

    :cond_0
    const-string v0, "QR_WIFI"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0700f4

    return p1

    :cond_1
    const-string v0, "QR_TELEPHONE"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f0700ef

    return p1

    :cond_2
    const-string v0, "QR_URL"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f0700f1

    return p1

    :cond_3
    const-string v0, "QR_TEXT"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0700f0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "QR_PRODUCT"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f0700d3

    return p1

    :cond_5
    const-string v0, "QR_MESSAGE"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f0700cb

    return p1

    :cond_6
    const-string v0, "QR_LOCATION"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p1, 0x7f0700c8

    return p1

    :cond_7
    const-string v0, "QR_EMAIL"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x7f0700b6

    return p1

    :cond_8
    const-string v0, "QR_EVENT"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f0700b7

    return p1

    :cond_9
    return v1
.end method

.method public d(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 12

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start decodeFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    new-array v1, v1, [I

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v2, p1

    move-object v3, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 6
    new-instance v2, Lcom/google/zxing/RGBLuminanceSource;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 7
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 8
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6

    .line 9
    :try_start_1
    invoke-interface {v2, v1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1

    .line 10
    invoke-direct {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->e(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object v0

    const-string v1, "End decodeFile"

    .line 11
    invoke-static {v1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    .line 13
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/high16 v1, 0x42b40000    # 90.0f

    .line 16
    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v1, v3

    new-array v1, v1, [I

    const/4 v5, 0x0

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object v3, p1

    move-object v4, v1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 19
    new-instance v3, Lcom/google/zxing/RGBLuminanceSource;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5, v1}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 20
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v4, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v4, v3}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 21
    invoke-interface {v2, v1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1

    .line 22
    invoke-direct {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->e(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v1

    .line 23
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/high16 v1, 0x43340000    # 180.0f

    .line 24
    :try_start_6
    invoke-direct {p0, p1, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v1, v3

    new-array v1, v1, [I

    const/4 v5, 0x0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object v3, p1

    move-object v4, v1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 27
    new-instance v3, Lcom/google/zxing/RGBLuminanceSource;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5, v1}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 28
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v4, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v4, v3}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 29
    invoke-interface {v2, v1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1

    .line 30
    invoke-direct {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->e(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v1

    .line 31
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/high16 v3, 0x43870000    # 270.0f

    .line 32
    :try_start_8
    invoke-direct {p0, p1, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    new-array v3, v3, [I

    const/4 v6, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object v4, p1

    move-object v5, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 35
    new-instance v4, Lcom/google/zxing/RGBLuminanceSource;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 36
    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    new-instance v5, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v5, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v3, v5}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 37
    invoke-interface {v2, v3}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v2

    .line 38
    invoke-direct {p0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->e(Lcom/google/zxing/Result;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 39
    :catch_5
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 40
    :goto_1
    :try_start_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw v1
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    :goto_2
    return-object v0
.end method
