.class Lcom/journeyapps/barcodescanner/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/h;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/h;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/g;->a:Lcom/journeyapps/barcodescanner/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/g;->a:Lcom/journeyapps/barcodescanner/h;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/h;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/j;->c(Lcom/journeyapps/barcodescanner/j;)V

    return-void
.end method
