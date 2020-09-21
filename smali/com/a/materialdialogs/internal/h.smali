.class public Lcom/a/materialdialogs/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/a/materialdialogs/internal/h;


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/content/res/ColorStateList;

.field public h:I

.field public i:I

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:I

.field public l:I

.field public m:Landroid/content/res/ColorStateList;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Lb/a/a/g;

.field public t:Lb/a/a/g;

.field public u:Lb/a/a/g;

.field public v:Lb/a/a/g;

.field public w:Lb/a/a/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/a/materialdialogs/internal/h;->b:Z

    .line 3
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->c:I

    .line 4
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->d:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/a/materialdialogs/internal/h;->e:Landroid/content/res/ColorStateList;

    .line 6
    iput-object v1, p0, Lcom/a/materialdialogs/internal/h;->f:Landroid/content/res/ColorStateList;

    .line 7
    iput-object v1, p0, Lcom/a/materialdialogs/internal/h;->g:Landroid/content/res/ColorStateList;

    .line 8
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->h:I

    .line 9
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->i:I

    .line 10
    iput-object v1, p0, Lcom/a/materialdialogs/internal/h;->j:Landroid/graphics/drawable/Drawable;

    .line 11
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->k:I

    .line 12
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->l:I

    .line 13
    iput-object v1, p0, Lcom/a/materialdialogs/internal/h;->m:Landroid/content/res/ColorStateList;

    .line 14
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->n:I

    .line 15
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->o:I

    .line 16
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->p:I

    .line 17
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->q:I

    .line 18
    iput v0, p0, Lcom/a/materialdialogs/internal/h;->r:I

    .line 19
    sget-object v0, Lb/a/a/g;->a:Lb/a/a/g;

    iput-object v0, p0, Lcom/a/materialdialogs/internal/h;->s:Lb/a/a/g;

    .line 20
    iput-object v0, p0, Lcom/a/materialdialogs/internal/h;->t:Lb/a/a/g;

    .line 21
    sget-object v0, Lb/a/a/g;->c:Lb/a/a/g;

    iput-object v0, p0, Lcom/a/materialdialogs/internal/h;->u:Lb/a/a/g;

    .line 22
    sget-object v0, Lb/a/a/g;->a:Lb/a/a/g;

    iput-object v0, p0, Lcom/a/materialdialogs/internal/h;->v:Lb/a/a/g;

    .line 23
    iput-object v0, p0, Lcom/a/materialdialogs/internal/h;->w:Lb/a/a/g;

    return-void
.end method

.method public static a()Lcom/a/materialdialogs/internal/h;
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/a/materialdialogs/internal/h;->a(Z)Lcom/a/materialdialogs/internal/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Lcom/a/materialdialogs/internal/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/a/materialdialogs/internal/h;->a:Lcom/a/materialdialogs/internal/h;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/a/materialdialogs/internal/h;

    invoke-direct {p0}, Lcom/a/materialdialogs/internal/h;-><init>()V

    sput-object p0, Lcom/a/materialdialogs/internal/h;->a:Lcom/a/materialdialogs/internal/h;

    .line 3
    :cond_0
    sget-object p0, Lcom/a/materialdialogs/internal/h;->a:Lcom/a/materialdialogs/internal/h;

    return-object p0
.end method
