.class Lb/d/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/d/c/c;


# direct methods
.method constructor <init>(Lb/d/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/c/b;->a:Lb/d/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/c/b;->a:Lb/d/c/c;

    invoke-static {v0}, Lb/d/c/c;->a(Lb/d/c/c;)V

    return-void
.end method
