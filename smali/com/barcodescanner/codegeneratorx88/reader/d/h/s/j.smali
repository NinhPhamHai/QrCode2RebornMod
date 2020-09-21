.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->a(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/j;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/j;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    iget-object p2, p2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mImgCloseSearch:Landroid/widget/ImageView;

    const p3, 0x7f0700ab

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/j;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    iget-object p2, p2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mImgCloseSearch:Landroid/widget/ImageView;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 3
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/j;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-static {p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/j;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mEdtSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/j;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mImgCloseSearch:Landroid/widget/ImageView;

    const p2, 0x7f0700d7

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
