.class Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->e(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/e;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    iput-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$barcode(Ljava/lang/String;)V

    return-void
.end method
