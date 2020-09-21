.class Lcom/barcodescanner/codegeneratorx88/reader/a/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/barcodescanner/codegeneratorx88/reader/a/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/a;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;Lcom/barcodescanner/codegeneratorx88/reader/a/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/i;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/i;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/i;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/a;->a(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method
