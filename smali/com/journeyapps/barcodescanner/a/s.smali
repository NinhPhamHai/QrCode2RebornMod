.class public Lcom/journeyapps/barcodescanner/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/D;

.field private b:I

.field private c:Z

.field private d:Lcom/journeyapps/barcodescanner/a/x;


# direct methods
.method public constructor <init>(ILcom/journeyapps/barcodescanner/D;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/s;->c:Z

    .line 3
    new-instance v0, Lcom/journeyapps/barcodescanner/a/t;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/a/t;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/s;->d:Lcom/journeyapps/barcodescanner/a/x;

    .line 4
    iput p1, p0, Lcom/journeyapps/barcodescanner/a/s;->b:I

    .line 5
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/a/s;->a:Lcom/journeyapps/barcodescanner/D;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/a/s;->b:I

    return v0
.end method

.method public a(Lcom/journeyapps/barcodescanner/D;)Landroid/graphics/Rect;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/s;->d:Lcom/journeyapps/barcodescanner/a/x;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/s;->a:Lcom/journeyapps/barcodescanner/D;

    invoke-virtual {v0, p1, v1}, Lcom/journeyapps/barcodescanner/a/x;->b(Lcom/journeyapps/barcodescanner/D;Lcom/journeyapps/barcodescanner/D;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/D;",
            ">;Z)",
            "Lcom/journeyapps/barcodescanner/D;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p2}, Lcom/journeyapps/barcodescanner/a/s;->a(Z)Lcom/journeyapps/barcodescanner/D;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/s;->d:Lcom/journeyapps/barcodescanner/a/x;

    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/a/x;->b(Ljava/util/List;Lcom/journeyapps/barcodescanner/D;)Lcom/journeyapps/barcodescanner/D;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/journeyapps/barcodescanner/D;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/s;->a:Lcom/journeyapps/barcodescanner/D;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/D;->a()Lcom/journeyapps/barcodescanner/D;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/x;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/s;->d:Lcom/journeyapps/barcodescanner/a/x;

    return-void
.end method
