.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0e0082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700b6

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0e0097

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700cb

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0e0094

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700c8

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0e0085

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700b7

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0e0076

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700ad

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0e00c9

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700ef

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0e00ca

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700f0

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0e00d6

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700f4

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0e00cf

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700f1

    invoke-direct {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
