.class Lcom/barcodescanner/codegeneratorx88/reader/c/u$1;
.super Ljava/lang/Object;
.source "u.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/c/u;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/u;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/c/u;)V
    .locals 0
    .param p1, "this$0"    # Lcom/barcodescanner/codegeneratorx88/reader/c/u;

    .line 15
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/u$1;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/u$1;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/u;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/u;->finish()V

    .line 19
    return-void
.end method
