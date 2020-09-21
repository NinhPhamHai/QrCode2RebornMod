.class Lcom/c/swipe/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/swipe/SwipeLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/swipe/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/c/swipe/SwipeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/c/swipe/e;->a:Lcom/c/swipe/SwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/c/swipe/e;->a:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/c/swipe/SwipeLayout;->f(Lcom/c/swipe/SwipeLayout;)Z

    const/4 p1, 0x1

    return p1
.end method
