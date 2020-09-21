.class Lcom/barcodescanner/codegeneratorx88/reader/c/w/r$5;
.super Ljava/lang/Object;
.source "r.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;)V
    .locals 0
    .param p1, "this$0"    # Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    .line 80
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r$5;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r$5;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;->openPolicy()V

    .line 84
    return-void
.end method
