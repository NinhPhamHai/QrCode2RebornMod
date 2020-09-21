.class Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$2;
.super Ljava/lang/Object;
.source "q.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;)V
    .locals 0
    .param p1, "this$0"    # Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;

    .line 45
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$2;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 48
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->getInstance()Lcom/barcodescanner/codegeneratorx88/reader/c/y;

    move-result-object v0

    const-string v1, "isFirst"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$2;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->checkVip()V

    .line 50
    return-void
.end method
