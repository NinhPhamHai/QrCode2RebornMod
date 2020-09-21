.class Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/view/ViewPager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/util/SparseIntArray;

.field private e:I


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;ZLandroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->e:I

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->b:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p4, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->a:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 5
    iput-boolean p3, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->c:Z

    .line 6
    invoke-virtual {p2}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p2

    .line 8
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p3, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->d:Landroid/util/SparseIntArray;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 9
    invoke-interface {p1, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p4

    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result p4

    .line 10
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4, p3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->a:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->d:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->e:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->a:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, p1}, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-static {v2}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Z)Z

    .line 7
    iget-object v4, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->d:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-boolean v4, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->c:Z

    invoke-virtual {v1, p1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 8
    invoke-static {v3}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Z)Z

    .line 9
    iput v0, p0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx$b;->e:I

    return v2
.end method
