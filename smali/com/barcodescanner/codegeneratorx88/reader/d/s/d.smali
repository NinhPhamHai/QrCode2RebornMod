.class Lcom/barcodescanner/codegeneratorx88/reader/d/s/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTgVibrate:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->performClick()Z

    return-void
.end method
