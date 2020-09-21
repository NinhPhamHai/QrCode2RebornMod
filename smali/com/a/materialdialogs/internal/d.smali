.class Lcom/a/materialdialogs/internal/d;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/a/materialdialogs/internal/MDRootLayout;


# direct methods
.method constructor <init>(Lcom/a/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/a/materialdialogs/internal/d;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    iput-object p2, p0, Lcom/a/materialdialogs/internal/d;->a:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/a/materialdialogs/internal/d;->b:Z

    iput-boolean p4, p0, Lcom/a/materialdialogs/internal/d;->c:Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/a/materialdialogs/internal/d;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    invoke-static {p1}, Lcom/a/materialdialogs/internal/MDRootLayout;->a(Lcom/a/materialdialogs/internal/MDRootLayout;)[Lcom/a/materialdialogs/internal/MDButton;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/a/materialdialogs/internal/d;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    iget-object p2, p0, Lcom/a/materialdialogs/internal/d;->a:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/a/materialdialogs/internal/d;->b:Z

    iget-boolean v1, p0, Lcom/a/materialdialogs/internal/d;->c:Z

    invoke-static {p1, p2, v0, v1, p3}, Lcom/a/materialdialogs/internal/MDRootLayout;->a(Lcom/a/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V

    .line 5
    iget-object p1, p0, Lcom/a/materialdialogs/internal/d;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
