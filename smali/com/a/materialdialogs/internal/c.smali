.class Lcom/a/materialdialogs/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/a/materialdialogs/internal/MDRootLayout;


# direct methods
.method constructor <init>(Lcom/a/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/a/materialdialogs/internal/c;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    iput-object p2, p0, Lcom/a/materialdialogs/internal/c;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/a/materialdialogs/internal/c;->b:Z

    iput-boolean p4, p0, Lcom/a/materialdialogs/internal/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/a/materialdialogs/internal/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/a/materialdialogs/internal/c;->a:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/a/materialdialogs/internal/MDRootLayout;->a(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/a/materialdialogs/internal/c;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/a/materialdialogs/internal/c;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    invoke-static {v0, v1}, Lcom/a/materialdialogs/internal/MDRootLayout;->a(Lcom/a/materialdialogs/internal/MDRootLayout;Z)Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/a/materialdialogs/internal/c;->c:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/a/materialdialogs/internal/c;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    invoke-static {v0, v1}, Lcom/a/materialdialogs/internal/MDRootLayout;->b(Lcom/a/materialdialogs/internal/MDRootLayout;Z)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/a/materialdialogs/internal/c;->d:Lcom/a/materialdialogs/internal/MDRootLayout;

    iget-object v1, p0, Lcom/a/materialdialogs/internal/c;->a:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/a/materialdialogs/internal/c;->b:Z

    iget-boolean v3, p0, Lcom/a/materialdialogs/internal/c;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/a/materialdialogs/internal/MDRootLayout;->a(Lcom/a/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/a/materialdialogs/internal/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
