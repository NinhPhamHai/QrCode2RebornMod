.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/a;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/a;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;

    move-result-object p1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;->b(Ljava/lang/String;)V

    return-void
.end method
