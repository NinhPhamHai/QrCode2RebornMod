.class Lcom/barcodescanner/codegeneratorx88/reader/c/w/r$3;
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

    .line 57
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r$3;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r$3;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/w/e;->getInstance(Landroid/content/Context;)Lcom/barcodescanner/codegeneratorx88/reader/c/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r$3;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/c/w/e;->buySubcription(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r$3;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/c/w/t;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r$3;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    invoke-virtual {v2, v1}, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method
