.class Lcom/barcodescanner/codegeneratorx88/reader/d/m/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/m/k;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/k;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/m/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/j;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/j;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/k;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
