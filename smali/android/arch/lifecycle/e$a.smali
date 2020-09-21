.class Landroid/arch/lifecycle/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/arch/lifecycle/a$b;

.field b:Landroid/arch/lifecycle/GenericLifecycleObserver;


# virtual methods
.method a(Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/arch/lifecycle/e;->a(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/a$b;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/e;->a(Landroid/arch/lifecycle/a$b;Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$b;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/a$b;

    .line 3
    iget-object v1, p0, Landroid/arch/lifecycle/e$a;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/GenericLifecycleObserver;->a(Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V

    .line 4
    iput-object v0, p0, Landroid/arch/lifecycle/e$a;->a:Landroid/arch/lifecycle/a$b;

    return-void
.end method
