.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;

    iget-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    return-void
.end method
