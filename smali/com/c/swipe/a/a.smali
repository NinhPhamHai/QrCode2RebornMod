.class public abstract Lcom/c/swipe/a/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/c/swipe/c/b;
.implements Lcom/c/swipe/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Lcom/c/swipe/c/b;",
        "Lcom/c/swipe/c/a;"
    }
.end annotation


# instance fields
.field public a:Lcom/c/swipe/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Lcom/c/swipe/b/b;

    invoke-direct {v0, p0}, Lcom/c/swipe/b/b;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    invoke-virtual {v0}, Lcom/c/swipe/b/a;->a()V

    return-void
.end method

.method public a(Lcom/c/swipe/d/a;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    invoke-virtual {v0, p1}, Lcom/c/swipe/b/a;->a(Lcom/c/swipe/d/a;)V

    return-void
.end method
