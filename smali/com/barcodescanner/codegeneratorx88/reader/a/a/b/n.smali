.class public Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/realm/Realm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/realm/Realm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/m;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/m;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/g;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/g;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/l;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/l;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/d;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/h;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/h;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/j;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/i;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/i;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method public b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/f;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method public b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/k;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/k;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "raw_text"

    .line 4
    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "id"

    .line 4
    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    return-object p1
.end method

.method public c()Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    sget-object v1, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    const-string v2, "created"

    .line 2
    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->findAllSorted(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "id"

    .line 2
    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    return-object p1
.end method

.method public d()Lio/realm/RealmResults;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "product_id"

    .line 2
    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$barcode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$barcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    new-instance v2, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/e;

    invoke-direct {v2, p0, v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    :cond_1
    return-object v0

    .line 6
    :cond_2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$product_id(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$barcode(Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    sget-object v1, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    const-string v2, "title"

    .line 10
    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->findAllSorted(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public f()Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    sget-object v1, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    const-string v2, "created"

    .line 2
    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->findAllSorted(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public g()Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    sget-object v1, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    const-string v2, "type"

    .line 2
    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->findAllSorted(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public h()Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "favorite"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v0

    sget-object v1, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    const-string v2, "title"

    .line 3
    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->findAllSorted(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public i()Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "favorite"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v0

    sget-object v1, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    const-string v2, "created"

    .line 3
    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->findAllSorted(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public j()Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b:Lio/realm/Realm;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "favorite"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v0

    sget-object v1, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    const-string v2, "type"

    .line 3
    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->findAllSorted(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method
