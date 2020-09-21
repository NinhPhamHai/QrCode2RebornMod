.class public Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

.field tvContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08017e
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080193
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter$MyViewHolder;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
