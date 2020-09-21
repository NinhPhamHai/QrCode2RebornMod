.class Lcom/c/swipe/c;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/c/swipe/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/c/swipe/SwipeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/c/swipe/c;->a:Z

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p3}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, p3, :cond_5

    .line 2
    sget-object p1, Lcom/c/swipe/f;->a:[I

    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    if-le p2, p1, :cond_1

    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p3

    sub-int/2addr p1, p3

    if-ge p2, p1, :cond_9

    .line 5
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    return p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p3

    add-int/2addr p1, p3

    if-le p2, p1, :cond_9

    .line 8
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p2

    add-int/2addr p1, p2

    return p1

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    return p1

    .line 10
    :cond_5
    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p3}, Lcom/c/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object p3

    if-ne p3, p1, :cond_9

    .line 11
    sget-object p1, Lcom/c/swipe/f;->a:[I

    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->c(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$e;

    move-result-object p1

    sget-object p3, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne p1, p3, :cond_9

    .line 13
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p3

    sub-int/2addr p1, p3

    if-ge p2, p1, :cond_9

    .line 14
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->c(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$e;

    move-result-object p1

    sget-object p3, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne p1, p3, :cond_9

    .line 16
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    if-le p2, p1, :cond_9

    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    return p1

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    return p1

    :cond_9
    :goto_0
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v0, :cond_5

    .line 2
    sget-object p1, Lcom/c/swipe/f;->a:[I

    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p3

    sub-int/2addr p1, p3

    if-ge p2, p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    if-le p2, p1, :cond_e

    .line 7
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    return p1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    if-ge p2, p1, :cond_4

    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    return p1

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p3

    add-int/2addr p1, p3

    if-le p2, p1, :cond_e

    .line 10
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p2

    add-int/2addr p1, p2

    return p1

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 13
    :goto_0
    sget-object v0, Lcom/c/swipe/f;->a:[I

    iget-object v5, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {v5}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_7

    goto/16 :goto_1

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    return p1

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/c/swipe/SwipeLayout;->c(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$e;

    move-result-object v0

    sget-object v1, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne v0, v1, :cond_9

    .line 16
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p3

    sub-int/2addr p1, p3

    if-ge p2, p1, :cond_e

    .line 17
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :cond_9
    add-int/2addr p1, p3

    .line 18
    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    if-lt p1, p3, :cond_a

    .line 19
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    return p1

    .line 20
    :cond_a
    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    iget-object v0, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result v0

    sub-int/2addr p3, v0

    if-gt p1, p3, :cond_e

    .line 21
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 22
    :cond_b
    iget-object v0, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/c/swipe/SwipeLayout;->c(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$e;

    move-result-object v0

    sget-object v1, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne v0, v1, :cond_c

    .line 23
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    if-le p2, p1, :cond_e

    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    return p1

    :cond_c
    add-int/2addr p1, p3

    .line 24
    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    if-ge p1, p3, :cond_d

    .line 25
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    return p1

    .line 26
    :cond_d
    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    iget-object v0, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result v0

    add-int/2addr p3, v0

    if-le p1, p3, :cond_e

    .line 27
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p2

    add-int/2addr p1, p2

    return p1

    :cond_e
    :goto_1
    return p2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->b(Lcom/c/swipe/SwipeLayout;)I

    move-result p1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p2}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p3}, Lcom/c/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object p3

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ne p1, p2, :cond_3

    .line 7
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->c(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$e;

    move-result-object p1

    sget-object p2, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne p1, p2, :cond_a

    if-eqz p3, :cond_a

    .line 8
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object p1

    sget-object p2, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object p1

    sget-object p2, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p3, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_2

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p3, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto/16 :goto_2

    .line 11
    :cond_3
    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {v4}, Lcom/c/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 12
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->c(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$e;

    move-result-object p1

    sget-object v4, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne p1, v4, :cond_4

    .line 13
    invoke-virtual {p2, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 14
    invoke-virtual {p2, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;Lcom/c/swipe/SwipeLayout$b;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p3, :cond_5

    .line 16
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v4, v5, v6, p1}, Landroid/view/View;->layout(IIII)V

    .line 17
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    add-int/2addr p1, p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    add-int/2addr p3, p5

    .line 18
    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {v4}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object v4

    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    if-ge p1, v4, :cond_6

    .line 19
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    goto :goto_1

    .line 20
    :cond_6
    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {v4}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object v4

    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    if-le p1, v4, :cond_7

    .line 21
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    goto :goto_1

    .line 22
    :cond_7
    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {v4}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object v4

    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    if-ge p3, v4, :cond_8

    .line 23
    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    goto :goto_1

    .line 24
    :cond_8
    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {v4}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;

    move-result-object v4

    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    if-le p3, v4, :cond_9

    .line 25
    iget-object p3, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    .line 26
    :cond_9
    :goto_1
    iget-object v4, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {p2, p1, p3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 27
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/c/swipe/SwipeLayout;->a(IIII)V

    .line 28
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1, v0, v2, p4, p5}, Lcom/c/swipe/SwipeLayout;->b(IIII)V

    .line 29
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 2
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->d(Lcom/c/swipe/SwipeLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/swipe/SwipeLayout$i;

    .line 3
    iget-object v1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-interface {v0, v1, p2, p3}, Lcom/c/swipe/SwipeLayout$i;->a(Lcom/c/swipe/SwipeLayout;FF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    iget-boolean v0, p0, Lcom/c/swipe/c;->a:Z

    invoke-virtual {p1, p2, p3, v0}, Lcom/c/swipe/SwipeLayout;->a(FFZ)V

    .line 5
    iget-object p1, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p2}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p2}, Lcom/c/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 2
    iget-object p2, p0, Lcom/c/swipe/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p2}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object p2

    sget-object v2, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    if-ne p2, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/c/swipe/c;->a:Z

    :cond_3
    return p1
.end method
