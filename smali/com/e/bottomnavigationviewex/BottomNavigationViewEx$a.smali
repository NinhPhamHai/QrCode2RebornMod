.class Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
