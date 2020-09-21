.class Lcom/barcodescanner/codegeneratorx88/reader/d/e/d;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/d;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 5
	
	.line 70
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->getInstance()Lcom/barcodescanner/codegeneratorx88/reader/c/y;

    move-result-object v0

    const-string v1, "vip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    .line 71
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/v;->openSub(Landroid/content/Context;)V

    .line 72
    return-void

    .line 74
    :cond_14
    const-string v0, "hihi"

    const-string v1, "onClick: hehe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "hihi1"

    const-string v1, "onClick: hehe2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->actionSaveQREncode()V

    return-void
.end method
