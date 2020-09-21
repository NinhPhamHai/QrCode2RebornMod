.class public Lcom/c/swipe/SwipeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/swipe/SwipeLayout$a;,
        Lcom/c/swipe/SwipeLayout$f;,
        Lcom/c/swipe/SwipeLayout$h;,
        Lcom/c/swipe/SwipeLayout$c;,
        Lcom/c/swipe/SwipeLayout$d;,
        Lcom/c/swipe/SwipeLayout$g;,
        Lcom/c/swipe/SwipeLayout$i;,
        Lcom/c/swipe/SwipeLayout$e;,
        Lcom/c/swipe/SwipeLayout$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/c/swipe/SwipeLayout$b;


# instance fields
.field private b:I

.field private c:Lcom/c/swipe/SwipeLayout$b;

.field private d:Landroid/support/v4/widget/ViewDragHelper;

.field private e:I

.field private f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/c/swipe/SwipeLayout$b;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/c/swipe/SwipeLayout$e;

.field private h:[F

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/c/swipe/SwipeLayout$i;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/c/swipe/SwipeLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/c/swipe/SwipeLayout$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/c/swipe/SwipeLayout$a;

.field private n:Z

.field private o:[Z

.field private p:Z

.field private q:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private r:I

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/c/swipe/SwipeLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:F

.field private v:F

.field w:Landroid/view/View$OnClickListener;

.field x:Landroid/view/View$OnLongClickListener;

.field private y:Landroid/graphics/Rect;

.field private z:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    sput-object v0, Lcom/c/swipe/SwipeLayout;->a:Lcom/c/swipe/SwipeLayout$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/c/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/c/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/c/swipe/SwipeLayout;->a:Lcom/c/swipe/SwipeLayout$b;

    iput-object p3, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/c/swipe/SwipeLayout;->e:I

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    const/4 v0, 0x4

    .line 7
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/c/swipe/SwipeLayout;->h:[F

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/c/swipe/SwipeLayout;->i:Ljava/util/List;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/c/swipe/SwipeLayout;->j:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/c/swipe/SwipeLayout;->k:Ljava/util/Map;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/c/swipe/SwipeLayout;->l:Ljava/util/Map;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/c/swipe/SwipeLayout;->n:Z

    .line 13
    new-array v2, v0, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/c/swipe/SwipeLayout;->o:[Z

    .line 14
    iput-boolean p3, p0, Lcom/c/swipe/SwipeLayout;->p:Z

    .line 15
    new-instance v2, Lcom/c/swipe/c;

    invoke-direct {v2, p0}, Lcom/c/swipe/c;-><init>(Lcom/c/swipe/SwipeLayout;)V

    iput-object v2, p0, Lcom/c/swipe/SwipeLayout;->q:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 16
    iput p3, p0, Lcom/c/swipe/SwipeLayout;->r:I

    const/high16 p3, -0x40800000    # -1.0f

    .line 17
    iput p3, p0, Lcom/c/swipe/SwipeLayout;->u:F

    iput p3, p0, Lcom/c/swipe/SwipeLayout;->v:F

    .line 18
    new-instance p3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/c/swipe/SwipeLayout$h;

    invoke-direct {v3, p0}, Lcom/c/swipe/SwipeLayout$h;-><init>(Lcom/c/swipe/SwipeLayout;)V

    invoke-direct {p3, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/c/swipe/SwipeLayout;->z:Landroid/view/GestureDetector;

    .line 19
    iget-object p3, p0, Lcom/c/swipe/SwipeLayout;->q:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, p3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    .line 20
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/c/swipe/SwipeLayout;->b:I

    .line 21
    sget-object p3, Lcom/c/swipe/a;->SwipeLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    sget p2, Lcom/c/swipe/a;->SwipeLayout_drag_edge:I

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 23
    iget-object v2, p0, Lcom/c/swipe/SwipeLayout;->h:[F

    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sget v4, Lcom/c/swipe/a;->SwipeLayout_leftEdgeSwipeOffset:I

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    .line 24
    iget-object v2, p0, Lcom/c/swipe/SwipeLayout;->h:[F

    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sget v4, Lcom/c/swipe/a;->SwipeLayout_rightEdgeSwipeOffset:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    .line 25
    iget-object v2, p0, Lcom/c/swipe/SwipeLayout;->h:[F

    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sget v4, Lcom/c/swipe/a;->SwipeLayout_topEdgeSwipeOffset:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    .line 26
    iget-object v2, p0, Lcom/c/swipe/SwipeLayout;->h:[F

    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sget v4, Lcom/c/swipe/a;->SwipeLayout_bottomEdgeSwipeOffset:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    .line 27
    sget v2, Lcom/c/swipe/a;->SwipeLayout_clickToClose:I

    iget-boolean v3, p0, Lcom/c/swipe/SwipeLayout;->p:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/c/swipe/SwipeLayout;->setClickToClose(Z)V

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    and-int/lit8 v1, p2, 0x4

    if-ne v1, v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-ne v0, p3, :cond_2

    .line 30
    iget-object p3, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {p3, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 p3, 0x8

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_3

    .line 31
    iget-object p2, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object p3, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {p2, p3, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_3
    sget p2, Lcom/c/swipe/a;->SwipeLayout_show_mode:I

    sget-object p3, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 33
    invoke-static {}, Lcom/c/swipe/SwipeLayout$e;->values()[Lcom/c/swipe/SwipeLayout$e;

    move-result-object p3

    aget-object p2, p3, p2

    iput-object p2, p0, Lcom/c/swipe/SwipeLayout;->g:Lcom/c/swipe/SwipeLayout$e;

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private a(F)I
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private a(Lcom/c/swipe/SwipeLayout$b;)Landroid/graphics/Rect;
    .locals 4

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 182
    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v2, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 184
    :cond_0
    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v2, :cond_1

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int/2addr v1, v2

    .line 186
    :cond_1
    :goto_0
    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v0

    .line 188
    iget v2, p0, Lcom/c/swipe/SwipeLayout;->e:I

    goto :goto_2

    .line 189
    :cond_3
    :goto_1
    iget p1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    add-int/2addr p1, v0

    .line 190
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    :goto_2
    add-int/2addr v2, v1

    .line 191
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private a(Lcom/c/swipe/SwipeLayout$e;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    .line 159
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 160
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 161
    sget-object v5, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne p1, v5, :cond_7

    .line 162
    iget-object p1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v5, :cond_0

    .line 163
    iget p1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int/2addr v1, p1

    goto :goto_0

    .line 164
    :cond_0
    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v5, :cond_1

    move v1, v3

    goto :goto_0

    .line 165
    :cond_1
    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v3, :cond_2

    .line 166
    iget p1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int/2addr v2, p1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 167
    :goto_0
    iget-object p1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    const/4 v4, 0x0

    if-eq p1, v3, :cond_5

    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_1
    add-int/2addr v4, v2

    .line 169
    iget v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 170
    :cond_5
    :goto_2
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_6

    goto :goto_3

    .line 171
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    :goto_3
    add-int v3, v1, v4

    move v4, p1

    goto :goto_4

    .line 172
    :cond_7
    sget-object p2, Lcom/c/swipe/SwipeLayout$e;->a:Lcom/c/swipe/SwipeLayout$e;

    if-ne p1, p2, :cond_b

    .line 173
    iget-object p1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object p2, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, p2, :cond_8

    .line 174
    iget p1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    add-int v3, v1, p1

    goto :goto_4

    .line 175
    :cond_8
    sget-object p2, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, p2, :cond_9

    .line 176
    iget p1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int v1, v3, p1

    goto :goto_4

    .line 177
    :cond_9
    sget-object p2, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, p2, :cond_a

    .line 178
    iget p1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    add-int v4, v2, p1

    goto :goto_4

    .line 179
    :cond_a
    iget p1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int v2, v4, p1

    .line 180
    :cond_b
    :goto_4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method static synthetic a(Lcom/c/swipe/SwipeLayout;Lcom/c/swipe/SwipeLayout$b;)Landroid/graphics/Rect;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout$b;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)Landroid/graphics/Rect;
    .locals 4

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    if-eqz p1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v2, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    iget v0, p0, Lcom/c/swipe/SwipeLayout;->e:I

    add-int/2addr v0, p1

    goto :goto_0

    .line 153
    :cond_0
    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v2, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    iget v0, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int v0, p1, v0

    goto :goto_0

    .line 155
    :cond_1
    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    if-ne p1, v1, :cond_2

    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iget v1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    add-int/2addr v1, p1

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iget v1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int v1, p1, v1

    .line 158
    :cond_3
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method static synthetic a(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    return-object p0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 9

    .line 81
    iget-boolean v0, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->a:Lcom/c/swipe/SwipeLayout$f;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 83
    iput-boolean v2, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lcom/c/swipe/SwipeLayout;->u:F

    sub-float/2addr v1, v3

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, p0, Lcom/c/swipe/SwipeLayout;->v:F

    sub-float/2addr p1, v3

    div-float v3, p1, v1

    .line 87
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    .line 88
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 89
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object v4

    sget-object v5, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    if-ne v4, v5, :cond_7

    const/high16 v4, 0x42340000    # 45.0f

    const/4 v5, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    cmpl-float v4, v1, v5

    if-lez v4, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    sget-object v4, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    goto :goto_0

    :cond_2
    cmpg-float v4, v1, v5

    if-gez v4, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    sget-object v4, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    cmpl-float v4, p1, v5

    if-lez v4, :cond_5

    .line 94
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 95
    sget-object v4, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    goto :goto_0

    :cond_5
    cmpg-float v4, p1, v5

    if-gez v4, :cond_6

    .line 96
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 97
    sget-object v4, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    .line 98
    :goto_0
    invoke-direct {p0, v4}, Lcom/c/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/c/swipe/SwipeLayout$b;)V

    goto :goto_1

    :cond_6
    return-void

    .line 99
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v7, 0x0

    if-ne v4, v5, :cond_e

    .line 100
    sget-object v4, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v4, :cond_8

    iget v4, p0, Lcom/c/swipe/SwipeLayout;->b:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_9

    :cond_8
    sget-object v4, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v4, :cond_a

    iget v4, p0, Lcom/c/swipe/SwipeLayout;->b:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_a

    :cond_9
    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_c

    .line 101
    sget-object v4, Lcom/c/swipe/SwipeLayout$f;->a:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v4, :cond_b

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v4, 0x1

    :goto_4
    cmpl-float v5, v3, v6

    if-gtz v5, :cond_d

    if-nez v4, :cond_e

    :cond_d
    const/4 v4, 0x1

    goto :goto_5

    :cond_e
    const/4 v4, 0x0

    .line 102
    :goto_5
    iget-object v5, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object v8, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-ne v5, v8, :cond_15

    .line 103
    sget-object v5, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v5, :cond_f

    iget v5, p0, Lcom/c/swipe/SwipeLayout;->b:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_10

    :cond_f
    sget-object v5, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v5, :cond_11

    iget v5, p0, Lcom/c/swipe/SwipeLayout;->b:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_11

    :cond_10
    const/4 v1, 0x1

    goto :goto_6

    :cond_11
    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_13

    .line 104
    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->a:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v1, :cond_12

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    goto :goto_8

    :cond_13
    :goto_7
    const/4 v1, 0x1

    :goto_8
    cmpl-float v5, v3, v6

    if-gtz v5, :cond_14

    if-nez v1, :cond_15

    :cond_14
    const/4 v4, 0x1

    .line 105
    :cond_15
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    const/high16 v6, 0x42700000    # 60.0f

    if-ne v1, v5, :cond_1c

    .line 106
    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v1, :cond_16

    iget v1, p0, Lcom/c/swipe/SwipeLayout;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_17

    :cond_16
    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v1, :cond_18

    iget v1, p0, Lcom/c/swipe/SwipeLayout;->b:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_18

    :cond_17
    const/4 v1, 0x1

    goto :goto_9

    :cond_18
    const/4 v1, 0x0

    :goto_9
    if-nez v1, :cond_1a

    .line 107
    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->a:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v1, :cond_19

    goto :goto_a

    :cond_19
    const/4 v1, 0x0

    goto :goto_b

    :cond_1a
    :goto_a
    const/4 v1, 0x1

    :goto_b
    cmpg-float v5, v3, v6

    if-ltz v5, :cond_1b

    if-nez v1, :cond_1c

    :cond_1b
    const/4 v4, 0x1

    .line 108
    :cond_1c
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    if-ne v1, v5, :cond_23

    .line 109
    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v1, :cond_1d

    iget v1, p0, Lcom/c/swipe/SwipeLayout;->b:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1e

    :cond_1d
    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v1, :cond_1f

    iget v1, p0, Lcom/c/swipe/SwipeLayout;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1f

    :cond_1e
    const/4 p1, 0x1

    goto :goto_c

    :cond_1f
    const/4 p1, 0x0

    :goto_c
    if-nez p1, :cond_20

    .line 110
    sget-object p1, Lcom/c/swipe/SwipeLayout$f;->a:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, p1, :cond_21

    :cond_20
    const/4 v7, 0x1

    :cond_21
    cmpg-float p1, v3, v6

    if-ltz p1, :cond_22

    if-nez v7, :cond_23

    :cond_22
    const/4 v4, 0x1

    :cond_23
    xor-int/lit8 p1, v4, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/c/swipe/SwipeLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->b(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/c/swipe/SwipeLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/c/swipe/SwipeLayout;->e:I

    return p0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 21
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/c/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 23
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/c/swipe/SwipeLayout;->g:Lcom/c/swipe/SwipeLayout$e;

    return-object p0
.end method

.method static synthetic d(Lcom/c/swipe/SwipeLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/c/swipe/SwipeLayout;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/c/swipe/SwipeLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->k()V

    return-void
.end method

.method static synthetic f(Lcom/c/swipe/SwipeLayout;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->l()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/c/swipe/SwipeLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/c/swipe/SwipeLayout;->p:Z

    return p0
.end method

.method private getAdapterView()Landroid/widget/AdapterView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/widget/AdapterView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentOffset()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->h:[F

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    return v0
.end method

.method static synthetic h(Lcom/c/swipe/SwipeLayout;)Lcom/c/swipe/SwipeLayout$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/c/swipe/SwipeLayout;->m:Lcom/c/swipe/SwipeLayout$a;

    return-object p0
.end method

.method private j()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/widget/AdapterView;

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    return-void
.end method

.method private l()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_4

    .line 4
    check-cast v0, Landroid/widget/AdapterView;

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    const/4 v1, -0x1

    if-ne v6, v1, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v7

    .line 7
    :try_start_0
    const-class v1, Landroid/widget/AbsListView;

    const-string v3, "performLongPress"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v9, Landroid/view/View;

    aput-object v9, v5, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v5, v10

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v9, v5, v11

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 9
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v3

    move-object v4, v0

    move-object v5, p0

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->performHapticFeedback(I)Z

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method private m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->getCurrentOffset()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/c/swipe/SwipeLayout;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/c/swipe/SwipeLayout;->e:I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->getCurrentOffset()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/c/swipe/SwipeLayout;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/c/swipe/SwipeLayout;->e:I

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->g:Lcom/c/swipe/SwipeLayout$e;

    sget-object v1, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->h()V

    goto :goto_2

    .line 7
    :cond_3
    sget-object v1, Lcom/c/swipe/SwipeLayout$e;->a:Lcom/c/swipe/SwipeLayout$e;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->g()V

    .line 8
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->m()V

    return-void
.end method

.method private setCurrentDragEdge(Lcom/c/swipe/SwipeLayout$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    .line 3
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->n()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, p1

    .line 18
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p0, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 21
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 23
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0, v0, v0}, Lcom/c/swipe/SwipeLayout;->a(ZZ)V

    return-void
.end method

.method protected a(FFZ)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getMinVelocity()F

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    if-eqz v2, :cond_11

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p3, :cond_1

    const/high16 p3, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_1
    const/high16 p3, 0x3f400000    # 0.75f

    .line 115
    :goto_0
    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v2, v1, :cond_5

    cmpl-float p2, p1, v0

    if-lez p2, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->i()V

    goto/16 :goto_1

    :cond_2
    neg-float p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->a()V

    goto/16 :goto_1

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v3

    iget p2, p0, Lcom/c/swipe/SwipeLayout;->e:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpl-float p1, p1, p3

    if-lez p1, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->i()V

    goto/16 :goto_1

    .line 120
    :cond_4
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->a()V

    goto/16 :goto_1

    .line 121
    :cond_5
    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne v2, v1, :cond_9

    cmpl-float p2, p1, v0

    if-lez p2, :cond_6

    .line 122
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->a()V

    goto/16 :goto_1

    :cond_6
    neg-float p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    .line 123
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->i()V

    goto/16 :goto_1

    .line 124
    :cond_7
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, v3

    iget p2, p0, Lcom/c/swipe/SwipeLayout;->e:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpl-float p1, p1, p3

    if-lez p1, :cond_8

    .line 125
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->i()V

    goto :goto_1

    .line 126
    :cond_8
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->a()V

    goto :goto_1

    .line 127
    :cond_9
    sget-object p1, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    if-ne v2, p1, :cond_d

    cmpl-float p1, p2, v0

    if-lez p1, :cond_a

    .line 128
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->i()V

    goto :goto_1

    :cond_a
    neg-float p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_b

    .line 129
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->a()V

    goto :goto_1

    .line 130
    :cond_b
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v3

    iget p2, p0, Lcom/c/swipe/SwipeLayout;->e:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpl-float p1, p1, p3

    if-lez p1, :cond_c

    .line 131
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->i()V

    goto :goto_1

    .line 132
    :cond_c
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->a()V

    goto :goto_1

    .line 133
    :cond_d
    sget-object p1, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    if-ne v2, p1, :cond_11

    cmpl-float p1, p2, v0

    if-lez p1, :cond_e

    .line 134
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->a()V

    goto :goto_1

    :cond_e
    neg-float p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_f

    .line 135
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->i()V

    goto :goto_1

    .line 136
    :cond_f
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, v3

    iget p2, p0, Lcom/c/swipe/SwipeLayout;->e:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpl-float p1, p1, p3

    if-lez p1, :cond_10

    .line 137
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->i()V

    goto :goto_1

    .line 138
    :cond_10
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->a()V

    :cond_11
    :goto_1
    return-void
.end method

.method protected a(IIII)V
    .locals 15

    move-object v8, p0

    .line 43
    iget-object v0, v8, Lcom/c/swipe/SwipeLayout;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, v8, Lcom/c/swipe/SwipeLayout;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    .line 46
    invoke-virtual {p0, v11}, Lcom/c/swipe/SwipeLayout;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v12

    .line 47
    iget-object v3, v8, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    move-object v0, p0

    move-object v1, v11

    move-object v2, v12

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/c/swipe/SwipeLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Lcom/c/swipe/SwipeLayout$b;IIII)Z

    move-result v0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    if-eqz v0, :cond_d

    .line 48
    iget-object v0, v8, Lcom/c/swipe/SwipeLayout;->l:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getShowMode()Lcom/c/swipe/SwipeLayout$e;

    move-result-object v2

    sget-object v3, Lcom/c/swipe/SwipeLayout$e;->a:Lcom/c/swipe/SwipeLayout$e;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v2, v3, :cond_6

    .line 50
    sget-object v2, Lcom/c/swipe/f;->a:[I

    iget-object v3, v8, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v14, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    goto/16 :goto_1

    .line 51
    :cond_2
    iget v0, v12, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, p3

    int-to-float v0, v1

    .line 52
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v2

    goto/16 :goto_0

    .line 53
    :cond_3
    iget v0, v12, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, p1

    int-to-float v0, v1

    .line 54
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    .line 55
    :cond_4
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, p4

    int-to-float v0, v1

    .line 56
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    .line 57
    :cond_5
    iget v0, v12, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, p2

    int-to-float v0, v1

    .line 58
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    .line 59
    :cond_6
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getShowMode()Lcom/c/swipe/SwipeLayout$e;

    move-result-object v2

    sget-object v3, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne v2, v3, :cond_b

    .line 60
    sget-object v2, Lcom/c/swipe/f;->a:[I

    iget-object v3, v8, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v14, :cond_a

    if-eq v2, v6, :cond_9

    if-eq v2, v5, :cond_8

    if-eq v2, v4, :cond_7

    goto :goto_1

    .line 61
    :cond_7
    iget v0, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v0, v1

    .line 62
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    .line 63
    :cond_8
    iget v0, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v0, v1

    .line 64
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    .line 65
    :cond_9
    iget v0, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v0, v1

    .line 66
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    .line 67
    :cond_a
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v0, v1

    .line 68
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 69
    :cond_b
    :goto_1
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/swipe/SwipeLayout$d;

    .line 70
    iget-object v4, v8, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-interface {v3, v11, v4, v5, v1}, Lcom/c/swipe/SwipeLayout$d;->a(Landroid/view/View;Lcom/c/swipe/SwipeLayout$b;FI)V

    .line 71
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v13

    if-nez v3, :cond_c

    .line 72
    iget-object v3, v8, Lcom/c/swipe/SwipeLayout;->l:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 73
    :cond_d
    iget-object v3, v8, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    move-object v0, p0

    move-object v1, v11

    move-object v2, v12

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/c/swipe/SwipeLayout;->b(Landroid/view/View;Landroid/graphics/Rect;Lcom/c/swipe/SwipeLayout$b;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, v8, Lcom/c/swipe/SwipeLayout;->l:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/swipe/SwipeLayout$d;

    .line 76
    iget-object v2, v8, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-eq v2, v3, :cond_f

    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_e

    goto :goto_4

    .line 77
    :cond_e
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-interface {v1, v11, v2, v13, v3}, Lcom/c/swipe/SwipeLayout$d;->a(Landroid/view/View;Lcom/c/swipe/SwipeLayout$b;FI)V

    goto :goto_3

    .line 78
    :cond_f
    :goto_4
    iget-object v2, v8, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-interface {v1, v11, v2, v13, v3}, Lcom/c/swipe/SwipeLayout$d;->a(Landroid/view/View;Lcom/c/swipe/SwipeLayout$b;FI)V

    goto :goto_3

    :cond_10
    return-void
.end method

.method protected a(IIZ)V
    .locals 6

    .line 24
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->m()V

    .line 25
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 27
    iget v1, p0, Lcom/c/swipe/SwipeLayout;->r:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/c/swipe/SwipeLayout;->r:I

    .line 28
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/swipe/SwipeLayout$i;

    .line 29
    iget v4, p0, Lcom/c/swipe/SwipeLayout;->r:I

    if-ne v4, v2, :cond_1

    if-eqz p3, :cond_0

    .line 30
    invoke-interface {v3, p0}, Lcom/c/swipe/SwipeLayout$i;->d(Lcom/c/swipe/SwipeLayout;)V

    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v3, p0}, Lcom/c/swipe/SwipeLayout$i;->a(Lcom/c/swipe/SwipeLayout;)V

    .line 32
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    sub-int v5, p2, v5

    invoke-interface {v3, p0, v4, v5}, Lcom/c/swipe/SwipeLayout$i;->a(Lcom/c/swipe/SwipeLayout;II)V

    goto :goto_0

    .line 33
    :cond_2
    sget-object p1, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    const/4 p2, 0x0

    if-ne v0, p1, :cond_4

    .line 34
    iget-object p1, p0, Lcom/c/swipe/SwipeLayout;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/c/swipe/SwipeLayout$i;

    .line 35
    invoke-interface {p3, p0}, Lcom/c/swipe/SwipeLayout$i;->c(Lcom/c/swipe/SwipeLayout;)V

    goto :goto_2

    .line 36
    :cond_3
    iput p2, p0, Lcom/c/swipe/SwipeLayout;->r:I

    .line 37
    :cond_4
    sget-object p1, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, p1, :cond_7

    .line 38
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    :cond_5
    iget-object p1, p0, Lcom/c/swipe/SwipeLayout;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/c/swipe/SwipeLayout$i;

    .line 41
    invoke-interface {p3, p0}, Lcom/c/swipe/SwipeLayout$i;->b(Lcom/c/swipe/SwipeLayout;)V

    goto :goto_3

    .line 42
    :cond_6
    iput p2, p0, Lcom/c/swipe/SwipeLayout;->r:I

    :cond_7
    return-void
.end method

.method public a(Lcom/c/swipe/SwipeLayout$c;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->s:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/swipe/SwipeLayout;->s:Ljava/util/List;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/c/swipe/SwipeLayout$i;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ZZ)V
    .locals 7

    .line 140
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->a(Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 143
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 144
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 145
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    if-eqz p2, :cond_2

    .line 146
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p2, v0, v3, v4}, Lcom/c/swipe/SwipeLayout;->a(IIII)V

    .line 147
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p2, p1, v1, v2}, Lcom/c/swipe/SwipeLayout;->b(IIII)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->m()V

    .line 149
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected a(Landroid/view/View;Landroid/graphics/Rect;Lcom/c/swipe/SwipeLayout$b;IIII)Z
    .locals 8

    .line 5
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 6
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 7
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 8
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 9
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getShowMode()Lcom/c/swipe/SwipeLayout$e;

    move-result-object v2

    sget-object v3, Lcom/c/swipe/SwipeLayout$e;->a:Lcom/c/swipe/SwipeLayout$e;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v3, :cond_4

    .line 10
    sget-object v2, Lcom/c/swipe/f;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v2, p3

    if-eq p3, v7, :cond_3

    if-eq p3, v6, :cond_2

    if-eq p3, v5, :cond_1

    if-eq p3, v4, :cond_0

    goto :goto_0

    :cond_0
    if-le p6, p1, :cond_9

    if-gt p6, v0, :cond_9

    return v7

    :cond_1
    if-ge p4, v0, :cond_9

    if-lt p4, p1, :cond_9

    return v7

    :cond_2
    if-le p7, v1, :cond_9

    if-gt p7, p2, :cond_9

    return v7

    :cond_3
    if-lt p5, v1, :cond_9

    if-ge p5, p2, :cond_9

    return v7

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getShowMode()Lcom/c/swipe/SwipeLayout$e;

    move-result-object p4

    sget-object p5, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne p4, p5, :cond_9

    .line 12
    sget-object p4, Lcom/c/swipe/f;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, p4, p3

    if-eq p3, v7, :cond_8

    if-eq p3, v6, :cond_7

    if-eq p3, v5, :cond_6

    if-eq p3, v4, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    if-gt p1, p2, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    if-le v0, p1, :cond_9

    return v7

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    if-lt v0, p2, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    if-ge p1, p2, :cond_9

    return v7

    .line 15
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    if-ge v1, p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    if-lt v1, p1, :cond_9

    return v7

    .line 16
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    if-ge v1, p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_9

    return v7

    :cond_9
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "gravity"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_3

    .line 3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    and-int/lit8 v1, v0, 0x30

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 v1, 0x50

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 10
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    if-eqz p1, :cond_7

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected b(IIII)V
    .locals 3

    .line 11
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getDragEdge()Lcom/c/swipe/SwipeLayout$b;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-gez p3, :cond_3

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne v0, v1, :cond_1

    if-lez p3, :cond_3

    goto :goto_0

    .line 14
    :cond_1
    sget-object p3, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    if-ne v0, p3, :cond_2

    if-gez p4, :cond_3

    goto :goto_0

    .line 15
    :cond_2
    sget-object p3, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    if-ne v0, p3, :cond_3

    if-lez p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    .line 16
    :goto_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/c/swipe/SwipeLayout;->a(IIZ)V

    return-void
.end method

.method public b(ZZ)V
    .locals 8

    .line 24
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 25
    invoke-direct {p0, v2}, Lcom/c/swipe/SwipeLayout;->a(Z)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    iget p2, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 27
    :cond_1
    iget p1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr p1, v3

    .line 28
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 29
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 30
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getShowMode()Lcom/c/swipe/SwipeLayout$e;

    move-result-object v0

    sget-object v4, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne v0, v4, :cond_2

    .line 31
    invoke-direct {p0, v4, v2}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout$e;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 32
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    :cond_2
    if-eqz p2, :cond_3

    .line 33
    iget p2, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p2, v0, v1, v4}, Lcom/c/swipe/SwipeLayout;->a(IIII)V

    .line 34
    iget p2, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p2, v0, p1, v3}, Lcom/c/swipe/SwipeLayout;->b(IIII)V

    goto :goto_0

    .line 35
    :cond_3
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->m()V

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->o:[Z

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected b(Landroid/view/View;Landroid/graphics/Rect;Lcom/c/swipe/SwipeLayout$b;IIII)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 4
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 5
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 6
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getShowMode()Lcom/c/swipe/SwipeLayout$e;

    move-result-object v3

    sget-object v4, Lcom/c/swipe/SwipeLayout$e;->a:Lcom/c/swipe/SwipeLayout$e;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    .line 8
    sget-object v3, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne p3, v3, :cond_1

    if-le p6, p1, :cond_9

    :cond_1
    sget-object p1, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-ne p3, p1, :cond_2

    if-ge p4, v1, :cond_9

    :cond_2
    sget-object p1, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    if-ne p3, p1, :cond_3

    if-ge p5, p2, :cond_9

    :cond_3
    sget-object p1, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    if-ne p3, p1, :cond_8

    if-gt p7, v2, :cond_8

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getShowMode()Lcom/c/swipe/SwipeLayout$e;

    move-result-object p4

    sget-object p5, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    if-ne p4, p5, :cond_8

    .line 10
    sget-object p4, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    if-ne p3, p4, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    if-le v1, p4, :cond_9

    :cond_5
    sget-object p4, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    if-ne p3, p4, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    if-ge p1, p4, :cond_9

    :cond_6
    sget-object p1, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    if-ne p3, p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    if-ge v2, p1, :cond_9

    :cond_7
    sget-object p1, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    if-ne p3, p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    :cond_9
    :goto_0
    return v5
.end method

.method public c()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->o:[Z

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 2
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->o:[Z

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/c/swipe/SwipeLayout;->n:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->o:[Z

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method g()V
    .locals 6

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/c/swipe/SwipeLayout;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 6
    :cond_0
    sget-object v1, Lcom/c/swipe/SwipeLayout$e;->a:Lcom/c/swipe/SwipeLayout$e;

    invoke-direct {p0, v1, v0}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout$e;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method public getBottomViews()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/c/swipe/SwipeLayout$b;->values()[Lcom/c/swipe/SwipeLayout$b;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    iget-object v5, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCurrentBottomView()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDragDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/c/swipe/SwipeLayout;->e:I

    return v0
.end method

.method public getDragEdge()Lcom/c/swipe/SwipeLayout$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->c:Lcom/c/swipe/SwipeLayout$b;

    return-object v0
.end method

.method public getDragEdgeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/c/swipe/SwipeLayout$b;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDragEdges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/c/swipe/SwipeLayout$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOpenStatus()Lcom/c/swipe/SwipeLayout$f;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/c/swipe/SwipeLayout;->e:I

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/c/swipe/SwipeLayout;->e:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/c/swipe/SwipeLayout;->e:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/c/swipe/SwipeLayout$f;->a:Lcom/c/swipe/SwipeLayout$f;

    return-object v0

    .line 8
    :cond_3
    :goto_0
    sget-object v0, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    return-object v0
.end method

.method public getShowMode()Lcom/c/swipe/SwipeLayout$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->g:Lcom/c/swipe/SwipeLayout$e;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 6

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/c/swipe/SwipeLayout;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 6
    :cond_0
    sget-object v1, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    invoke-direct {p0, v1, v0}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout$e;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/c/swipe/SwipeLayout;->b(ZZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->w:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/c/swipe/d;

    invoke-direct {v0, p0}, Lcom/c/swipe/d;-><init>(Lcom/c/swipe/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/c/swipe/SwipeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->x:Landroid/view/View$OnLongClickListener;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/c/swipe/e;

    invoke-direct {v0, p0}, Lcom/c/swipe/e;-><init>(Lcom/c/swipe/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/c/swipe/SwipeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/c/swipe/SwipeLayout;->p:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v3, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    if-ne v0, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/swipe/SwipeLayout$g;

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v3, p1}, Lcom/c/swipe/SwipeLayout$g;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 5
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    .line 6
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-boolean v0, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    .line 8
    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->a(Landroid/view/MotionEvent;)V

    .line 9
    iget-boolean p1, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    if-nez v0, :cond_8

    .line 12
    iget-boolean p1, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    if-eqz p1, :cond_8

    return v1

    .line 13
    :cond_6
    iput-boolean v1, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    .line 14
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 16
    iput-boolean v1, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/c/swipe/SwipeLayout;->u:F

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/c/swipe/SwipeLayout;->v:F

    .line 19
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object p1

    sget-object v0, Lcom/c/swipe/SwipeLayout$f;->a:Lcom/c/swipe/SwipeLayout$f;

    if-ne p1, v0, :cond_8

    .line 20
    iput-boolean v2, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    .line 21
    :cond_8
    :goto_0
    iget-boolean p1, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/c/swipe/SwipeLayout;->n()V

    .line 2
    iget-object p1, p0, Lcom/c/swipe/SwipeLayout;->s:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/c/swipe/SwipeLayout;->s:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/c/swipe/SwipeLayout;->s:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/c/swipe/SwipeLayout$c;

    invoke-interface {p2, p0}, Lcom/c/swipe/SwipeLayout$c;->a(Lcom/c/swipe/SwipeLayout;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/c/swipe/SwipeLayout;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->z:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    .line 6
    iget-object v3, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/c/swipe/SwipeLayout;->u:F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/c/swipe/SwipeLayout;->v:F

    .line 10
    :cond_3
    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->a(Landroid/view/MotionEvent;)V

    .line 11
    iget-boolean v3, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    iget-object v3, p0, Lcom/c/swipe/SwipeLayout;->d:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 14
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/c/swipe/SwipeLayout;->t:Z

    if-nez p1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBottomSwipeEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->o:[Z

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    return-void
.end method

.method public setClickToClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/c/swipe/SwipeLayout;->p:Z

    return-void
.end method

.method public setDragDistance(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    int-to-float p1, p1

    .line 1
    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->a(F)I

    move-result p1

    iput p1, p0, Lcom/c/swipe/SwipeLayout;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setDragEdge(Lcom/c/swipe/SwipeLayout$b;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/c/swipe/SwipeLayout$b;)V

    return-void
.end method

.method public setDragEdges(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/c/swipe/SwipeLayout$b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/swipe/SwipeLayout$b;

    .line 3
    iget-object v4, p0, Lcom/c/swipe/SwipeLayout;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/c/swipe/SwipeLayout;->a:Lcom/c/swipe/SwipeLayout$b;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/swipe/SwipeLayout$b;

    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/c/swipe/SwipeLayout$b;)V

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    sget-object p1, Lcom/c/swipe/SwipeLayout;->a:Lcom/c/swipe/SwipeLayout$b;

    invoke-direct {p0, p1}, Lcom/c/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/c/swipe/SwipeLayout$b;)V

    :goto_2
    return-void
.end method

.method public varargs setDragEdges([Lcom/c/swipe/SwipeLayout$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/c/swipe/SwipeLayout;->setDragEdges(Ljava/util/List;)V

    return-void
.end method

.method public setLeftSwipeEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->o:[Z

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iput-object p1, p0, Lcom/c/swipe/SwipeLayout;->w:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleClickListener(Lcom/c/swipe/SwipeLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/c/swipe/SwipeLayout;->m:Lcom/c/swipe/SwipeLayout$a;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2
    iput-object p1, p0, Lcom/c/swipe/SwipeLayout;->x:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setRightSwipeEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->o:[Z

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    return-void
.end method

.method public setShowMode(Lcom/c/swipe/SwipeLayout$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/c/swipe/SwipeLayout;->g:Lcom/c/swipe/SwipeLayout$e;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/c/swipe/SwipeLayout;->n:Z

    return-void
.end method

.method public setTopSwipeEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/c/swipe/SwipeLayout;->o:[Z

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    return-void
.end method
