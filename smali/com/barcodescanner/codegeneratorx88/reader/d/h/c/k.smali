.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/RealmResults;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/j;

    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/j;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/k;->a(Lio/realm/RealmResults;)V

    return-void
.end method
