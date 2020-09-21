.class La/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/b/f;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:La/b/b/f;


# direct methods
.method constructor <init>(La/b/b/f;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/b/d;->b:La/b/b/f;

    iput-object p2, p0, La/b/b/d;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/b/d;->b:La/b/b/f;

    iget-object v0, v0, La/b/b/f;->b:La/b/b/a;

    iget-object v1, p0, La/b/b/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, La/b/b/a;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
