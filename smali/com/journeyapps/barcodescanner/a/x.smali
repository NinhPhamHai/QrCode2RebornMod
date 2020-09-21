.class public abstract Lcom/journeyapps/barcodescanner/a/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "x"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/journeyapps/barcodescanner/D;Lcom/journeyapps/barcodescanner/D;)F
.end method

.method public a(Ljava/util/List;Lcom/journeyapps/barcodescanner/D;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/D;",
            ">;",
            "Lcom/journeyapps/barcodescanner/D;",
            ")",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/D;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lcom/journeyapps/barcodescanner/a/w;

    invoke-direct {v0, p0, p2}, Lcom/journeyapps/barcodescanner/a/w;-><init>(Lcom/journeyapps/barcodescanner/a/x;Lcom/journeyapps/barcodescanner/D;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public abstract b(Lcom/journeyapps/barcodescanner/D;Lcom/journeyapps/barcodescanner/D;)Landroid/graphics/Rect;
.end method

.method public b(Ljava/util/List;Lcom/journeyapps/barcodescanner/D;)Lcom/journeyapps/barcodescanner/D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/D;",
            ">;",
            "Lcom/journeyapps/barcodescanner/D;",
            ")",
            "Lcom/journeyapps/barcodescanner/D;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/a/x;->a(Ljava/util/List;Lcom/journeyapps/barcodescanner/D;)Ljava/util/List;

    .line 2
    sget-object v0, Lcom/journeyapps/barcodescanner/a/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewfinder size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p2, Lcom/journeyapps/barcodescanner/a/x;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preview in order of preference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/journeyapps/barcodescanner/D;

    return-object p1
.end method
