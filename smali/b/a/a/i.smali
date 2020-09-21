.class Lb/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/l;


# direct methods
.method constructor <init>(Lb/a/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/i;->a:Lb/a/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/i;->a:Lb/a/a/l;

    iget-object v0, v0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/i;->a:Lb/a/a/l;

    iget-object v0, v0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lb/a/a/i;->a:Lb/a/a/l;

    iget-object v0, v0, Lb/a/a/l;->t:Lb/a/a/l$i;

    sget-object v1, Lb/a/a/l$i;->b:Lb/a/a/l$i;

    if-eq v0, v1, :cond_1

    sget-object v1, Lb/a/a/l$i;->c:Lb/a/a/l$i;

    if-ne v0, v1, :cond_5

    .line 5
    :cond_1
    iget-object v0, p0, Lb/a/a/i;->a:Lb/a/a/l;

    iget-object v1, v0, Lb/a/a/l;->t:Lb/a/a/l$i;

    sget-object v2, Lb/a/a/l$i;->b:Lb/a/a/l$i;

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v0, v0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget v0, v0, Lb/a/a/l$a;->O:I

    if-gez v0, :cond_4

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lb/a/a/l;->u:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lb/a/a/i;->a:Lb/a/a/l;

    iget-object v0, v0, Lb/a/a/l;->u:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lb/a/a/i;->a:Lb/a/a/l;

    iget-object v0, v0, Lb/a/a/l;->u:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    :cond_4
    iget-object v1, p0, Lb/a/a/i;->a:Lb/a/a/l;

    iget-object v1, v1, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lb/a/a/h;

    invoke-direct {v2, p0, v0}, Lb/a/a/h;-><init>(Lb/a/a/i;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method
