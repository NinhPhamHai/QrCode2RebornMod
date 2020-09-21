.class Lb/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/i;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lb/a/a/i;


# direct methods
.method constructor <init>(Lb/a/a/i;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/h;->b:Lb/a/a/i;

    iput p2, p0, Lb/a/a/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/h;->b:Lb/a/a/i;

    iget-object v0, v0, Lb/a/a/i;->a:Lb/a/a/l;

    iget-object v0, v0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lb/a/a/h;->b:Lb/a/a/i;

    iget-object v0, v0, Lb/a/a/i;->a:Lb/a/a/l;

    iget-object v0, v0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v0, v0, Lb/a/a/l$a;->Y:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v1, p0, Lb/a/a/h;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method
