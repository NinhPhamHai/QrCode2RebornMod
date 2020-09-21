.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800c5

    const-string v2, "field \'ivCreate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->ivCreate:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080196

    const-string v2, "field \'tvTitleCreate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->tvTitleCreate:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0801aa

    const-string v2, "field \'viewGroupItemCreate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->viewGroupItemCreate:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->ivCreate:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->tvTitleCreate:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->viewGroupItemCreate:Landroid/view/ViewGroup;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
