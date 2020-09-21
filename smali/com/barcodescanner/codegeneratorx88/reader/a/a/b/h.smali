.class Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/h;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/h;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->d(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/realm/RealmObject;->deleteFromRealm()V

    :cond_0
    return-void
.end method
