.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    const v0, 0x7f0800d0

    const-string v1, "field \'ivSaveQREncodeEvent\' and method \'createQREncodeEvent\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSaveQREncodeEvent\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->ivSaveQREncodeEvent:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->b:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/f;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08017c

    const-string v1, "field \'tvBeginTime\' and method \'showBeginTimePicker\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvBeginTime\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvBeginTime:Landroid/widget/TextView;

    .line 9
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/g;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/g;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080184

    const-string v1, "field \'tvEndTime\' and method \'showEndTimePicker\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvEndTime\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvEndTime:Landroid/widget/TextView;

    .line 13
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/h;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/h;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f08008a

    const-string v2, "field \'etTitleEvent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    .line 16
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080082

    const-string v2, "field \'etLocationEvent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etLocationEvent:Landroid/widget/AutoCompleteTextView;

    .line 17
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f08008d

    const-string v2, "field \'etUrlEvent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etUrlEvent:Landroid/widget/AutoCompleteTextView;

    .line 18
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080079

    const-string v2, "field \'etDescriptionEvent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etDescriptionEvent:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0801a3

    const-string v1, "method \'backEventCreate\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->e:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/i;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/i;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->ivSaveQREncodeEvent:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvBeginTime:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvEndTime:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etLocationEvent:Landroid/widget/AutoCompleteTextView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etUrlEvent:Landroid/widget/AutoCompleteTextView;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etDescriptionEvent:Landroid/widget/AutoCompleteTextView;

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->b:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->c:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->d:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
