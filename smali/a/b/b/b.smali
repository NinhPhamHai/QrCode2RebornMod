.class La/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/b/f;->a(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:La/b/b/f;


# direct methods
.method constructor <init>(La/b/b/f;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/b/b;->c:La/b/b/f;

    iput p2, p0, La/b/b/b;->a:I

    iput-object p3, p0, La/b/b/b;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, La/b/b/b;->c:La/b/b/f;

    iget-object v0, v0, La/b/b/f;->b:La/b/b/a;

    iget v1, p0, La/b/b/b;->a:I

    iget-object v2, p0, La/b/b/b;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, La/b/b/a;->a(ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
