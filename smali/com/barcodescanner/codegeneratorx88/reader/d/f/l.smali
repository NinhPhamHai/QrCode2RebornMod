.class public Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/barcodescanner/codegeneratorx88/reader/d/a/e<",
        "Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

.field private d:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/realm/RealmChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;-><init>()V

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/k;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/k;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->e:Lio/realm/RealmChangeListener;

    .line 3
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->b:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d()V

    .line 2
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->b:Landroid/content/Context;

    const-string v1, "key_sort_by"

    invoke-static {v1, p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;ILandroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;

    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->b:Landroid/content/Context;

    sget v1, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    const-string v2, "key_sort_by"

    invoke-static {v2, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    invoke-virtual {v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    .line 11
    sget p1, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    if-ne v0, p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->f()V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->g()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->e()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    invoke-virtual {v0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a(Ljava/lang/String;Z)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    const-string p2, "QR_FAVORITES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->b:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->e:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->e:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->h()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    invoke-static {v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Lio/realm/RealmResults;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;->c(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;->c(Ljava/util/List;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->c()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->i()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    invoke-static {v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Lio/realm/RealmResults;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;->c(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;->c(Ljava/util/List;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->c()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->j()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->d:Lio/realm/RealmResults;

    invoke-static {v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Lio/realm/RealmResults;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;->c(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;->c(Ljava/util/List;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->c()V

    return-void
.end method
