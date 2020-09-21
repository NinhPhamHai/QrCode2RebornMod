.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/b;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d_ViewBinding;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d_ViewBinding;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/b;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d_ViewBinding;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->openCreatedQRHistory()V

    return-void
.end method
