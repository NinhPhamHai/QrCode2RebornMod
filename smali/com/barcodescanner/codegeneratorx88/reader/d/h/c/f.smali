.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/f;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/f;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/f;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;->c()V

    :cond_0
    return-void
.end method
