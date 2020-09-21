.class public abstract Lb/d/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/e$a;
    }
.end annotation


# instance fields
.field a:F

.field b:Ljava/lang/Class;

.field private c:Landroid/view/animation/Interpolator;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/d/a/e;->c:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb/d/a/e;->d:Z

    return-void
.end method

.method public static a(F)Lb/d/a/e;
    .locals 1

    .line 2
    new-instance v0, Lb/d/a/e$a;

    invoke-direct {v0, p0}, Lb/d/a/e$a;-><init>(F)V

    return-object v0
.end method

.method public static a(FF)Lb/d/a/e;
    .locals 1

    .line 1
    new-instance v0, Lb/d/a/e$a;

    invoke-direct {v0, p0, p1}, Lb/d/a/e$a;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 3
    iget v0, p0, Lb/d/a/e;->a:F

    return v0
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lb/d/a/e;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public b()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/e;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method public abstract clone()Lb/d/a/e;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/e;->clone()Lb/d/a/e;

    move-result-object v0

    return-object v0
.end method
