.class Lcom/journeyapps/barcodescanner/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/a/m;->a(Lcom/journeyapps/barcodescanner/a/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/a/v;

.field final synthetic b:Lcom/journeyapps/barcodescanner/a/m;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/a/m;Lcom/journeyapps/barcodescanner/a/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/f;->b:Lcom/journeyapps/barcodescanner/a/m;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/a/f;->a:Lcom/journeyapps/barcodescanner/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/f;->b:Lcom/journeyapps/barcodescanner/a/m;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/a/m;->a(Lcom/journeyapps/barcodescanner/a/m;)Lcom/journeyapps/barcodescanner/a/n;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/f;->a:Lcom/journeyapps/barcodescanner/a/v;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/n;->a(Lcom/journeyapps/barcodescanner/a/v;)V

    return-void
.end method
