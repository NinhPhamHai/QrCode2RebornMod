.class public final synthetic Lcom/barcodescanner/codegeneratorx88/reader/d/scan/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;


# direct methods
.method public synthetic constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->a(Ljava/lang/Object;)V

    return-void
.end method
