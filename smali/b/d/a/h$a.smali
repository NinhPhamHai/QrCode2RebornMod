.class Lb/d/a/h$a;
.super Lb/d/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field r:Lb/d/a/c;

.field s:F


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lb/d/a/h;-><init>(Ljava/lang/String;Lb/d/a/g;)V

    .line 2
    invoke-virtual {p0, p2}, Lb/d/a/h$a;->a([F)V

    return-void
.end method


# virtual methods
.method a(F)V
    .locals 1

    .line 3
    iget-object v0, p0, Lb/d/a/h$a;->r:Lb/d/a/c;

    invoke-virtual {v0, p1}, Lb/d/a/c;->b(F)F

    move-result p1

    iput p1, p0, Lb/d/a/h$a;->s:F

    return-void
.end method

.method public varargs a([F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/d/a/h;->a([F)V

    .line 2
    iget-object p1, p0, Lb/d/a/h;->m:Lb/d/a/f;

    check-cast p1, Lb/d/a/c;

    iput-object p1, p0, Lb/d/a/h$a;->r:Lb/d/a/c;

    return-void
.end method

.method public clone()Lb/d/a/h$a;
    .locals 2

    .line 3
    invoke-super {p0}, Lb/d/a/h;->clone()Lb/d/a/h;

    move-result-object v0

    check-cast v0, Lb/d/a/h$a;

    .line 4
    iget-object v1, v0, Lb/d/a/h;->m:Lb/d/a/f;

    check-cast v1, Lb/d/a/c;

    iput-object v1, v0, Lb/d/a/h$a;->r:Lb/d/a/c;

    return-object v0
.end method

.method public bridge synthetic clone()Lb/d/a/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/h$a;->clone()Lb/d/a/h$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/d/a/h$a;->clone()Lb/d/a/h$a;

    move-result-object v0

    return-object v0
.end method
