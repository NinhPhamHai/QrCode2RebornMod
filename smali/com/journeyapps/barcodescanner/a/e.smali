.class Lcom/journeyapps/barcodescanner/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/a/m;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/journeyapps/barcodescanner/a/m;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/a/m;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/e;->b:Lcom/journeyapps/barcodescanner/a/m;

    iput-boolean p2, p0, Lcom/journeyapps/barcodescanner/a/e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/e;->b:Lcom/journeyapps/barcodescanner/a/m;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/a/m;->a(Lcom/journeyapps/barcodescanner/a/m;)Lcom/journeyapps/barcodescanner/a/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/a/e;->a:Z

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/n;->a(Z)V

    return-void
.end method
