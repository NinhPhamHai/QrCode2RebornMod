.class Lb/d/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/d/c/f;


# direct methods
.method constructor <init>(Lb/d/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/c/e;->a:Lb/d/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/c/e;->a:Lb/d/c/f;

    invoke-static {v0}, Lb/d/c/f;->a(Lb/d/c/f;)V

    return-void
.end method
