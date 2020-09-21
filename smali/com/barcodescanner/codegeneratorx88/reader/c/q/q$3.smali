.class Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$3;
.super Ljava/lang/Object;
.source "q.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 58
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$3;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$3;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->checkVip()V

    .line 62
    return-void
.end method
