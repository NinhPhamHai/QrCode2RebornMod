.class Lb/d/a/e$a;
.super Lb/d/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field e:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lb/d/a/e;-><init>()V

    .line 7
    iput p1, p0, Lb/d/a/e;->a:F

    .line 8
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lb/d/a/e;->b:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/d/a/e;-><init>()V

    .line 2
    iput p1, p0, Lb/d/a/e;->a:F

    .line 3
    iput p2, p0, Lb/d/a/e$a;->e:F

    .line 4
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lb/d/a/e;->b:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lb/d/a/e;->d:Z

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lb/d/a/e$a;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lb/d/a/e$a;
    .locals 3

    .line 3
    new-instance v0, Lb/d/a/e$a;

    invoke-virtual {p0}, Lb/d/a/e;->a()F

    move-result v1

    iget v2, p0, Lb/d/a/e$a;->e:F

    invoke-direct {v0, v1, v2}, Lb/d/a/e$a;-><init>(FF)V

    .line 4
    invoke-virtual {p0}, Lb/d/a/e;->b()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/d/a/e;->a(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lb/d/a/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/e$a;->clone()Lb/d/a/e$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/d/a/e$a;->clone()Lb/d/a/e$a;

    move-result-object v0

    return-object v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lb/d/a/e$a;->e:F

    return v0
.end method
