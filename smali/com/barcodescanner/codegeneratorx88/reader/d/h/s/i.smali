.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/i;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/i;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mEdtSearch:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method
