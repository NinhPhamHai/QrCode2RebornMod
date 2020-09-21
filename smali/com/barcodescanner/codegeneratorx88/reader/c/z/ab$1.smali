.class Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$1;
.super Ljava/lang/Object;
.source "ab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

.field final synthetic val$imgClose:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    .line 46
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$1;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$1;->val$imgClose:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$1;->val$imgClose:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    return-void
.end method
