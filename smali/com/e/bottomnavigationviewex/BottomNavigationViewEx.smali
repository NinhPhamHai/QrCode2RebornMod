.class public Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;
.super Landroid/support/design/widget/BottomNavigationView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;,
        Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:Z

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Landroid/support/v4/view/ViewPager;

.field private m:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;

.field private mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

.field private n:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;

.field private o:[Landroid/support/design/internal/BottomNavigationItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->k:Z

    return-void
.end method

.method private static a(F)I
    .locals 2

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 7
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static synthetic a(Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->j:I

    return p0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 9
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 14
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p3, 0x1

    .line 15
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 16
    invoke-virtual {p1, p2, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 3
    sput-boolean p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a:Z

    return p0
.end method

.method private getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/support/design/widget/BottomNavigationView;

    const-string v1, "mMenuView"

    invoke-direct {p0, v0, p0, v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationMenuView;

    iput-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/support/design/internal/BottomNavigationItemView;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(II)V
    .locals 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    .line 32
    const-class v0, Landroid/support/design/internal/BottomNavigationItemView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "mDefaultMargin"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;Z)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->l:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 20
    iget-object v1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->n:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->l:Landroid/support/v4/view/ViewPager;

    .line 23
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void

    .line 24
    :cond_1
    iput-object p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->l:Landroid/support/v4/view/ViewPager;

    .line 25
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->n:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;

    if-nez v0, :cond_2

    .line 26
    new-instance v0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;

    invoke-direct {v0, p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;-><init>(Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;)V

    iput-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->n:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->n:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getOnNavigationItemSelectedListener()Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;-><init>(Landroid/support/v4/view/ViewPager;Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;ZLandroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    iput-object v1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->m:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;

    .line 30
    iget-object p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->m:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;

    invoke-super {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public b(I)Landroid/widget/TextView;
    .locals 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    .line 24
    const-class v0, Landroid/support/design/internal/BottomNavigationItemView;

    const-string v1, "mLargeLabel"

    invoke-direct {p0, v0, p1, v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public b(Z)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mLargeLabel"

    invoke-direct {p0, v6, v5, v7}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mSmallLabel"

    invoke-direct {p0, v7, v5, v8}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "mScaleDownFactor"

    const-string v9, "mScaleUpFactor"

    const-string v10, "mShiftAmount"

    if-nez p1, :cond_1

    .line 6
    iget-boolean v11, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->e:Z

    const/4 v12, 0x1

    if-nez v11, :cond_0

    .line 7
    iput-boolean v12, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->e:Z

    .line 8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11, v5, v10}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->b:I

    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11, v5, v9}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iput v11, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->c:F

    .line 10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11, v5, v8}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iput v11, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->d:F

    .line 11
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    iput v11, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->f:F

    .line 12
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    iput v7, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->g:F

    .line 13
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v7, v5, v10, v11}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v7, v5, v9, v10}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget v5, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->g:F

    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 17
    :cond_1
    iget-boolean v7, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->e:Z

    if-nez v7, :cond_2

    return-void

    .line 18
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget v11, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v7, v5, v10, v11}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget v10, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->c:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {p0, v7, v5, v9, v10}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget v9, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->d:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget v5, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->f:F

    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 22
    :cond_3
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public c(I)Landroid/widget/TextView;
    .locals 2

    .line 6
    invoke-virtual {p0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    .line 7
    const-class v0, Landroid/support/design/internal/BottomNavigationItemView;

    const-string v1, "mSmallLabel"

    invoke-direct {p0, v0, p1, v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public c(Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "mShiftingMode"

    invoke-direct {p0, v5, v4, v7, v6}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "mShiftingMode"

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->o:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mButtons"

    invoke-direct {p0, v1, v0, v2}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->o:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 4
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->o:[Landroid/support/design/internal/BottomNavigationItemView;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 4
    invoke-interface {v1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getItemHeight()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mItemHeight"

    invoke-direct {p0, v1, v0, v2}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOnNavigationItemSelectedListener()Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 2

    .line 1
    const-class v0, Landroid/support/design/widget/BottomNavigationView;

    const-string v1, "mSelectedListener"

    invoke-direct {p0, v0, p0, v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method public setCurrentItem(I)V
    .locals 4

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getMaxItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mOnClickListener"

    invoke-direct {p0, v2, v0, v3}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 5
    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item is out of bounds, we expected 0 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getMaxItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Actually "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIconVisibility(Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "mIcon"

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {p0, v7, v6, v5}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/4 v6, 0x4

    .line 5
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 6
    iget-boolean p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->i:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->i:Z

    .line 8
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getItemHeight()I

    move-result p1

    iput p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->j:I

    .line 9
    :cond_2
    aget-object p1, v1, v3

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p1, v5}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 11
    new-instance v1, Lcom/e/bottomnavigationviewex/a;

    invoke-direct {v1, p0, p1}, Lcom/e/bottomnavigationviewex/a;-><init>(Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 12
    :cond_3
    iget-boolean p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->i:Z

    if-nez p1, :cond_4

    return-void

    .line 13
    :cond_4
    iget p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->j:I

    invoke-virtual {p0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->setItemHeight(I)V

    .line 14
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setIconsMarginTop(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemHeight(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "mItemHeight"

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setLargeTextSize(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->b(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->m:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->a(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public setSmallTextSize(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->c(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->setLargeTextSize(F)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->setSmallTextSize(F)V

    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 10

    .line 1
    iput-boolean p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->k:Z

    .line 2
    invoke-direct {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mLargeLabel"

    invoke-direct {p0, v7, v6, v8}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mSmallLabel"

    invoke-direct {p0, v8, v6, v9}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 7
    iget-boolean v8, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->h:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->e:Z

    if-nez v8, :cond_0

    .line 8
    iput-boolean v5, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->h:Z

    .line 9
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    iput v5, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->f:F

    .line 10
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    iput v5, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->g:F

    :cond_0
    const/4 v5, 0x0

    .line 11
    invoke-virtual {v7, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 13
    :cond_1
    iget-boolean v8, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->h:Z

    if-nez v8, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    iget v5, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->f:F

    invoke-virtual {v7, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    iget v5, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->g:F

    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez p1, :cond_5

    .line 16
    iget-boolean p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->i:Z

    if-nez p1, :cond_4

    .line 17
    iput-boolean v5, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->i:Z

    .line 18
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getItemHeight()I

    move-result p1

    iput p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->j:I

    .line 19
    :cond_4
    iget p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->j:I

    iget v1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->g:F

    invoke-static {v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(F)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->setItemHeight(I)V

    goto :goto_3

    .line 20
    :cond_5
    iget-boolean p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->i:Z

    if-nez p1, :cond_6

    return-void

    .line 21
    :cond_6
    iget p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->j:I

    invoke-virtual {p0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->setItemHeight(I)V

    .line 22
    :goto_3
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->b(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->c(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Landroid/support/v4/view/ViewPager;Z)V

    return-void
.end method
