.class Lcom/barcodescanner/codegeneratorx88/reader/d/scan/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->mSeekBarZoom:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0xa

    if-gez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->mSeekBarZoom:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->mSeekBarZoom:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method
