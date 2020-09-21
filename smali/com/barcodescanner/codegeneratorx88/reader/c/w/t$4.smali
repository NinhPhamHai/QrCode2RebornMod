.class Lcom/barcodescanner/codegeneratorx88/reader/c/w/t$4;
.super Ljava/lang/Object;
.source "t.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/c/w/t;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/t;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/c/w/t;)V
    .locals 0
    .param p1, "this$0"    # Lcom/barcodescanner/codegeneratorx88/reader/c/w/t;

    .line 84
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/t$4;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/t$4;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/t;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/w/e;->getInstance(Landroid/content/Context;)Lcom/barcodescanner/codegeneratorx88/reader/c/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/w/t$4;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/w/t;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/c/w/e;->buySubcription(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 92
    :goto_0
    return-void
.end method
