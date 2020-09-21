.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->g(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I

    move-result v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->m(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Z

    move-result v0

    const-string v1, ", "

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->n(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->n(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;J)J

    .line 11
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvBeginTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->k(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->d(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    const v2, 0x7f0e00d0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->c(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->c(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-ltz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;J)J

    .line 16
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvEndTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->k(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->d(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    const v2, 0x7f0e00d1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->l(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 20
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->l(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 21
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_5
    return-void
.end method
