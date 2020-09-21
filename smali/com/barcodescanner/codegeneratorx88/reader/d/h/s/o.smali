.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/o;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/o;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    const p1, 0x7f080126

    if-ne p2, p1, :cond_0

    .line 1
    sget p1, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    goto :goto_0

    :cond_0
    const p1, 0x7f080128

    if-ne p2, p1, :cond_1

    .line 2
    sget p1, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->b:I

    goto :goto_0

    .line 3
    :cond_1
    sget p1, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->c:I

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/o;->a:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/o;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "key_sort_by"

    invoke-static {v0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;ILandroid/content/Context;)V

    .line 6
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/o;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-static {p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->a(I)V

    return-void
.end method
