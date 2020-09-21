.class Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/j;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/j;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/j;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/j;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->d(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/j;->b:Z

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$favorite(Z)V

    .line 3
    invoke-virtual {p1, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    :cond_0
    return-void
.end method
