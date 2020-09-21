.class Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$2;
.super Ljava/lang/Object;
.source "ab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;)V
    .locals 0
    .param p1, "this$0"    # Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    .line 52
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$2;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$2;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->dismiss()V

    .line 56
    return-void
.end method
