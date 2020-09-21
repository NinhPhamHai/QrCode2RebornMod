.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListCreateHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;

.field ivCreate:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c5
    .end annotation
.end field

.field tvTitleCreate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080196
    .end annotation
.end field

.field viewGroupItemCreate:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801aa
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
