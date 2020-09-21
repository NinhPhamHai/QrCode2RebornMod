.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->d()V

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Z)V

    :cond_0
    return-void
.end method
