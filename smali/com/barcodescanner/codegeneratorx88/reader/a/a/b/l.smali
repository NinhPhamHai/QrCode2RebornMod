.class Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/l;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/l;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/l;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {p1}, Lio/realm/RealmObject;->removeAllChangeListeners()V

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/l;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {p1}, Lio/realm/RealmObject;->deleteFromRealm()V

    return-void
.end method
