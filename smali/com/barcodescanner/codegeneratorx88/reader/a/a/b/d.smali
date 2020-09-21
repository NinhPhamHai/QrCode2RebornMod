.class Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/d;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$product_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$barcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$product_id(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
