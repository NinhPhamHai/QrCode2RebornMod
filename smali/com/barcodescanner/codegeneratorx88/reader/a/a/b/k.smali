.class Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V
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
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/k;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$id(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$created(J)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    return-void
.end method
