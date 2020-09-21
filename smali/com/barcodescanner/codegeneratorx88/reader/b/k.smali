.class public Lcom/barcodescanner/codegeneratorx88/reader/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;",
            "Lcom/barcodescanner/codegeneratorx88/reader/b/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;

.field private c:Landroid/view/View;

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->d:F

    .line 3
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->b:Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;

    const p2, 0x1020002

    .line 4
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->c:Landroid/view/View;

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->d:F

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->b:Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;

    .line 11
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "input_method"

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 8
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->a(Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;)V

    .line 2
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/b/k;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/k;-><init>(Landroid/app/Activity;Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;

    .line 5
    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->a()V

    .line 6
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 4
    iget v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->d:F

    div-float/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/k;->b:Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;

    if-eqz v1, :cond_1

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/k$a;->onToggleSoftKeyboard(Z)V

    :cond_1
    return-void
.end method
