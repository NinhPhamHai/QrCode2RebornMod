.class Lb/d/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/d/a/a$a;
.implements Lb/d/a/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/d/c/c;


# direct methods
.method private constructor <init>(Lb/d/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/d/c/c;Lb/d/c/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/d/c/c$a;-><init>(Lb/d/c/c;)V

    return-void
.end method


# virtual methods
.method public a(Lb/d/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->b(Lb/d/c/c;)Lb/d/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->b(Lb/d/c/c;)Lb/d/a/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/d/a/a$a;->a(Lb/d/a/a;)V

    :cond_0
    return-void
.end method

.method public a(Lb/d/a/o;)V
    .locals 6

    .line 3
    invoke-virtual {p1}, Lb/d/a/o;->g()F

    move-result v0

    .line 4
    iget-object v1, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v1}, Lb/d/c/c;->c(Lb/d/c/c;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/d/c/c$c;

    .line 5
    iget v1, p1, Lb/d/c/c$c;->a:I

    and-int/lit16 v1, v1, 0x1ff

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v1}, Lb/d/c/c;->d(Lb/d/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 8
    :cond_0
    iget-object p1, p1, Lb/d/c/c$c;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/d/c/c$b;

    .line 11
    iget v4, v3, Lb/d/c/c$b;->b:F

    iget v5, v3, Lb/d/c/c$b;->c:F

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    .line 12
    iget-object v5, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    iget v3, v3, Lb/d/c/c$b;->a:I

    invoke-static {v5, v3, v4}, Lb/d/c/c;->a(Lb/d/c/c;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {p1}, Lb/d/c/c;->d(Lb/d/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public b(Lb/d/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->b(Lb/d/c/c;)Lb/d/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->b(Lb/d/c/c;)Lb/d/a/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/d/a/a$a;->b(Lb/d/a/a;)V

    :cond_0
    return-void
.end method

.method public c(Lb/d/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->b(Lb/d/c/c;)Lb/d/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->b(Lb/d/c/c;)Lb/d/a/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/d/a/a$a;->c(Lb/d/a/a;)V

    :cond_0
    return-void
.end method

.method public d(Lb/d/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->b(Lb/d/c/c;)Lb/d/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->b(Lb/d/c/c;)Lb/d/a/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/d/a/a$a;->d(Lb/d/a/a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->c(Lb/d/c/c;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    invoke-static {p1}, Lb/d/c/c;->c(Lb/d/c/c;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lb/d/c/c$a;->a:Lb/d/c/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/d/c/c;->a(Lb/d/c/c;Lb/d/a/a$a;)Lb/d/a/a$a;

    :cond_1
    return-void
.end method
