.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;

    .line 3
    const-class v0, Landroid/support/v4/widget/NestedScrollView;

    const v1, 0x7f08013d

    const-string v2, "field \'scrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->scrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 4
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    const v1, 0x7f0800ee

    const-string v2, "field \'mapViewLocation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->mapViewLocation:Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    .line 5
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080081

    const-string v2, "field \'etLatitude\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    .line 6
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080083

    const-string v2, "field \'etLongitude\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLongitude:Landroid/widget/AutoCompleteTextView;

    .line 7
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080087

    const-string v2, "field \'etQueryLocation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etQueryLocation:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0800d0

    const-string v1, "field \'ivSaveQREncode\' and method \'createQREncodeLocation\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSaveQREncode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->ivSaveQREncode:Landroid/widget/ImageView;

    .line 10
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;->b:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/e;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a3

    const-string v1, "method \'backLocationCreate\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;->c:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/f;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->scrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->mapViewLocation:Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLongitude:Landroid/widget/AutoCompleteTextView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etQueryLocation:Landroid/widget/AutoCompleteTextView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->ivSaveQREncode:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;->b:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
