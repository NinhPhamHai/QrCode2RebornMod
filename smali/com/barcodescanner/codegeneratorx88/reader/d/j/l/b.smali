.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;

    iget-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$latitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    return-void
.end method
