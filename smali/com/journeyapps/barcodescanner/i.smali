.class Lcom/journeyapps/barcodescanner/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/journeyapps/barcodescanner/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/j;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/i;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/i;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/j;->e(Lcom/journeyapps/barcodescanner/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/journeyapps/barcodescanner/j$a;

    .line 2
    invoke-interface {v1}, Lcom/journeyapps/barcodescanner/j$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/i;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/j;->e(Lcom/journeyapps/barcodescanner/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/journeyapps/barcodescanner/j$a;

    .line 4
    invoke-interface {v1, p1}, Lcom/journeyapps/barcodescanner/j$a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/i;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/j;->e(Lcom/journeyapps/barcodescanner/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/journeyapps/barcodescanner/j$a;

    .line 2
    invoke-interface {v1}, Lcom/journeyapps/barcodescanner/j$a;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/i;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/j;->e(Lcom/journeyapps/barcodescanner/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/journeyapps/barcodescanner/j$a;

    .line 2
    invoke-interface {v1}, Lcom/journeyapps/barcodescanner/j$a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/i;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/j;->e(Lcom/journeyapps/barcodescanner/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/journeyapps/barcodescanner/j$a;

    .line 2
    invoke-interface {v1}, Lcom/journeyapps/barcodescanner/j$a;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method
