.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


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
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->d(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;I)I

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {p1, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->e(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;I)I

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    .line 4
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 5
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
