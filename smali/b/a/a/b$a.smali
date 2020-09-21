.class Lb/a/a/b$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/widget/CompoundButton;

.field final b:Landroid/widget/TextView;

.field final c:Lb/a/a/b;


# direct methods
.method constructor <init>(Landroid/view/View;Lb/a/a/b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    sget v0, Lb/a/a/q;->md_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lb/a/a/b$a;->a:Landroid/widget/CompoundButton;

    .line 3
    sget v0, Lb/a/a/q;->md_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lb/a/a/b$a;->b:Landroid/widget/TextView;

    .line 4
    iput-object p2, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {p2}, Lb/a/a/b;->a(Lb/a/a/b;)Lb/a/a/l;

    move-result-object p2

    iget-object p2, p2, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p2, p2, Lb/a/a/l$a;->F:Lb/a/a/l$h;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v0}, Lb/a/a/b;->b(Lb/a/a/b;)Lb/a/a/b$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v1}, Lb/a/a/b;->a(Lb/a/a/b;)Lb/a/a/l;

    move-result-object v1

    iget-object v1, v1, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v1, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v2}, Lb/a/a/b;->a(Lb/a/a/b;)Lb/a/a/l;

    move-result-object v2

    iget-object v2, v2, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v2, v2, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v0, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v0}, Lb/a/a/b;->a(Lb/a/a/b;)Lb/a/a/l;

    move-result-object v0

    iget-object v0, v0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v0, v0, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :cond_0
    move-object v5, v0

    .line 5
    iget-object v0, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v0}, Lb/a/a/b;->b(Lb/a/a/b;)Lb/a/a/b$b;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v0}, Lb/a/a/b;->a(Lb/a/a/b;)Lb/a/a/l;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lb/a/a/b$b;->a(Lb/a/a/l;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v0}, Lb/a/a/b;->b(Lb/a/a/b;)Lb/a/a/b$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v1}, Lb/a/a/b;->a(Lb/a/a/b;)Lb/a/a/l;

    move-result-object v1

    iget-object v1, v1, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v1, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v2}, Lb/a/a/b;->a(Lb/a/a/b;)Lb/a/a/l;

    move-result-object v2

    iget-object v2, v2, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v2, v2, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v0, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v0}, Lb/a/a/b;->a(Lb/a/a/b;)Lb/a/a/l;

    move-result-object v0

    iget-object v0, v0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v0, v0, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :cond_0
    move-object v5, v0

    .line 5
    iget-object v0, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    invoke-static {v0}, Lb/a/a/b;->b(Lb/a/a/b;)Lb/a/a/b$b;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/b$a;->c:Lb/a/a/b;

    .line 6
    invoke-static {v0}, Lb/a/a/b;->a(Lb/a/a/b;)Lb/a/a/l;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    const/4 v6, 0x1

    move-object v3, p1

    .line 7
    invoke-interface/range {v1 .. v6}, Lb/a/a/b$b;->a(Lb/a/a/l;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
