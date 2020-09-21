.class Lcom/a/materialdialogs/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


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
    iput-object p1, p0, Lcom/a/materialdialogs/internal/e;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    iput-object p2, p0, Lcom/a/materialdialogs/internal/e;->a:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/a/materialdialogs/internal/e;->b:Z

    iput-boolean p4, p0, Lcom/a/materialdialogs/internal/e;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/a/materialdialogs/internal/e;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    invoke-static {v0}, Lcom/a/materialdialogs/internal/MDRootLayout;->a(Lcom/a/materialdialogs/internal/MDRootLayout;)[Lcom/a/materialdialogs/internal/MDButton;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/a/materialdialogs/internal/e;->a:Landroid/view/ViewGroup;

    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/a/materialdialogs/internal/e;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    check-cast v0, Landroid/webkit/WebView;

    iget-boolean v3, p0, Lcom/a/materialdialogs/internal/e;->b:Z

    iget-boolean v4, p0, Lcom/a/materialdialogs/internal/e;->c:Z

    invoke-static {v1, v0, v3, v4, v2}, Lcom/a/materialdialogs/internal/MDRootLayout;->a(Lcom/a/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/a/materialdialogs/internal/e;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    iget-boolean v3, p0, Lcom/a/materialdialogs/internal/e;->b:Z

    iget-boolean v4, p0, Lcom/a/materialdialogs/internal/e;->c:Z

    invoke-static {v1, v0, v3, v4, v2}, Lcom/a/materialdialogs/internal/MDRootLayout;->a(Lcom/a/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V

    .line 6
    :goto_2
    iget-object v0, p0, Lcom/a/materialdialogs/internal/e;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
