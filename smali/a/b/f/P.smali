.class public La/b/f/P;
.super La/b/f/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/f/P$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/b/f/J;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, La/b/f/J;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, La/b/f/P;->b:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, La/b/f/P;->d:Z

    return-void
.end method

.method private a()V
    .locals 3

    .line 10
    new-instance v0, La/b/f/P$a;

    invoke-direct {v0, p0}, La/b/f/P$a;-><init>(La/b/f/P;)V

    .line 11
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    .line 12
    invoke-virtual {v2, v0}, La/b/f/J;->addListener(La/b/f/J$d;)La/b/f/J;

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, La/b/f/P;->c:I

    return-void
.end method

.method static synthetic a(La/b/f/P;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, La/b/f/P;->d:Z

    return p0
.end method

.method static synthetic a(La/b/f/P;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, La/b/f/P;->d:Z

    return p1
.end method

.method static synthetic b(La/b/f/P;)I
    .locals 0

    .line 1
    iget p0, p0, La/b/f/P;->c:I

    return p0
.end method

.method static synthetic c(La/b/f/P;)I
    .locals 1

    .line 1
    iget v0, p0, La/b/f/P;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/f/P;->c:I

    return v0
.end method


# virtual methods
.method public a(I)La/b/f/P;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, La/b/f/P;->b:Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iput-boolean v0, p0, La/b/f/P;->b:Z

    :goto_0
    return-object p0
.end method

.method public a(La/b/f/J;)La/b/f/P;
    .locals 5

    .line 6
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iput-object p0, p1, La/b/f/J;->mParent:La/b/f/P;

    .line 8
    iget-wide v0, p0, La/b/f/J;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 9
    invoke-virtual {p1, v0, v1}, La/b/f/J;->setDuration(J)La/b/f/J;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addListener(La/b/f/J$d;)La/b/f/J;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/b/f/P;->addListener(La/b/f/J$d;)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public addListener(La/b/f/J$d;)La/b/f/P;
    .locals 0

    .line 2
    invoke-super {p0, p1}, La/b/f/J;->addListener(La/b/f/J$d;)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public bridge synthetic addTarget(I)La/b/f/J;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/b/f/P;->addTarget(I)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)La/b/f/J;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, La/b/f/P;->addTarget(Landroid/view/View;)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)La/b/f/J;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, La/b/f/P;->addTarget(Ljava/lang/Class;)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)La/b/f/J;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, La/b/f/P;->addTarget(Ljava/lang/String;)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public addTarget(I)La/b/f/P;
    .locals 2

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1}, La/b/f/J;->addTarget(I)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, La/b/f/J;->addTarget(I)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public addTarget(Landroid/view/View;)La/b/f/P;
    .locals 2

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1}, La/b/f/J;->addTarget(Landroid/view/View;)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1}, La/b/f/J;->addTarget(Landroid/view/View;)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public addTarget(Ljava/lang/Class;)La/b/f/P;
    .locals 2

    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1}, La/b/f/J;->addTarget(Ljava/lang/Class;)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0, p1}, La/b/f/J;->addTarget(Ljava/lang/Class;)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public addTarget(Ljava/lang/String;)La/b/f/P;
    .locals 2

    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 12
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1}, La/b/f/J;->addTarget(Ljava/lang/String;)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1}, La/b/f/J;->addTarget(Ljava/lang/String;)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method protected cancel()V
    .locals 3

    .line 1
    invoke-super {p0}, La/b/f/J;->cancel()V

    .line 2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    invoke-virtual {v2}, La/b/f/J;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureEndValues(La/b/f/S;)V
    .locals 3

    .line 1
    iget-object v0, p1, La/b/f/S;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, La/b/f/J;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    .line 3
    iget-object v2, p1, La/b/f/S;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, La/b/f/J;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, La/b/f/J;->captureEndValues(La/b/f/S;)V

    .line 5
    iget-object v2, p1, La/b/f/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method capturePropagationValues(La/b/f/S;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, La/b/f/J;->capturePropagationValues(La/b/f/S;)V

    .line 2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    invoke-virtual {v2, p1}, La/b/f/J;->capturePropagationValues(La/b/f/S;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureStartValues(La/b/f/S;)V
    .locals 3

    .line 1
    iget-object v0, p1, La/b/f/S;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, La/b/f/J;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    .line 3
    iget-object v2, p1, La/b/f/S;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, La/b/f/J;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, La/b/f/J;->captureStartValues(La/b/f/S;)V

    .line 5
    iget-object v2, p1, La/b/f/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()La/b/f/J;
    .locals 4

    .line 2
    invoke-super {p0}, La/b/f/J;->clone()La/b/f/J;

    move-result-object v0

    check-cast v0, La/b/f/P;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, La/b/f/P;->a:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    iget-object v3, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/b/f/J;

    invoke-virtual {v3}, La/b/f/J;->clone()La/b/f/J;

    move-result-object v3

    invoke-virtual {v0, v3}, La/b/f/P;->a(La/b/f/J;)La/b/f/P;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La/b/f/P;->clone()La/b/f/J;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;La/b/f/T;La/b/f/T;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "La/b/f/T;",
            "La/b/f/T;",
            "Ljava/util/ArrayList<",
            "La/b/f/S;",
            ">;",
            "Ljava/util/ArrayList<",
            "La/b/f/S;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, La/b/f/J;->getStartDelay()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3
    iget-object v5, v0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, La/b/f/J;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 4
    iget-boolean v5, v0, La/b/f/P;->b:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 5
    :cond_0
    invoke-virtual {v6}, La/b/f/J;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, La/b/f/J;->setStartDelay(J)La/b/f/J;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1, v2}, La/b/f/J;->setStartDelay(J)La/b/f/J;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, La/b/f/J;->createAnimators(Landroid/view/ViewGroup;La/b/f/T;La/b/f/T;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)La/b/f/J;
    .locals 2

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1, p2}, La/b/f/J;->excludeTarget(IZ)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, La/b/f/J;->excludeTarget(IZ)La/b/f/J;

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)La/b/f/J;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1, p2}, La/b/f/J;->excludeTarget(Landroid/view/View;Z)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, La/b/f/J;->excludeTarget(Landroid/view/View;Z)La/b/f/J;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)La/b/f/J;
    .locals 2

    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1, p2}, La/b/f/J;->excludeTarget(Ljava/lang/Class;Z)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, La/b/f/J;->excludeTarget(Ljava/lang/Class;Z)La/b/f/J;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)La/b/f/J;
    .locals 2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1, p2}, La/b/f/J;->excludeTarget(Ljava/lang/String;Z)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, La/b/f/J;->excludeTarget(Ljava/lang/String;Z)La/b/f/J;

    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, La/b/f/J;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    invoke-virtual {v2, p1}, La/b/f/J;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, La/b/f/J;->pause(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    invoke-virtual {v2, p1}, La/b/f/J;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic removeListener(La/b/f/J$d;)La/b/f/J;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/b/f/P;->removeListener(La/b/f/J$d;)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(La/b/f/J$d;)La/b/f/P;
    .locals 0

    .line 2
    invoke-super {p0, p1}, La/b/f/J;->removeListener(La/b/f/J$d;)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public bridge synthetic removeTarget(I)La/b/f/J;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/b/f/P;->removeTarget(I)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)La/b/f/J;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, La/b/f/P;->removeTarget(Landroid/view/View;)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)La/b/f/J;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, La/b/f/P;->removeTarget(Ljava/lang/Class;)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)La/b/f/J;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, La/b/f/P;->removeTarget(Ljava/lang/String;)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public removeTarget(I)La/b/f/P;
    .locals 2

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1}, La/b/f/J;->removeTarget(I)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1}, La/b/f/J;->removeTarget(I)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public removeTarget(Landroid/view/View;)La/b/f/P;
    .locals 2

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1}, La/b/f/J;->removeTarget(Landroid/view/View;)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, La/b/f/J;->removeTarget(Landroid/view/View;)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public removeTarget(Ljava/lang/Class;)La/b/f/P;
    .locals 2

    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 12
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1}, La/b/f/J;->removeTarget(Ljava/lang/Class;)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1}, La/b/f/J;->removeTarget(Ljava/lang/Class;)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public removeTarget(Ljava/lang/String;)La/b/f/P;
    .locals 2

    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1}, La/b/f/J;->removeTarget(Ljava/lang/String;)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0, p1}, La/b/f/J;->removeTarget(Ljava/lang/String;)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public resume(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, La/b/f/J;->resume(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    invoke-virtual {v2, p1}, La/b/f/J;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 1
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, La/b/f/J;->start()V

    .line 3
    invoke-virtual {p0}, La/b/f/J;->end()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, La/b/f/P;->a()V

    .line 5
    iget-boolean v0, p0, La/b/f/P;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    .line 8
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    .line 9
    new-instance v3, La/b/f/O;

    invoke-direct {v3, p0, v2}, La/b/f/O;-><init>(La/b/f/P;La/b/f/J;)V

    invoke-virtual {v1, v3}, La/b/f/J;->addListener(La/b/f/J$d;)La/b/f/J;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/f/J;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, La/b/f/J;->runAnimators()V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    .line 13
    invoke-virtual {v1}, La/b/f/J;->runAnimators()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, La/b/f/J;->setCanRemoveViews(Z)V

    .line 2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    invoke-virtual {v2, p1}, La/b/f/J;->setCanRemoveViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)La/b/f/J;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, La/b/f/P;->setDuration(J)La/b/f/P;

    return-object p0
.end method

.method public setDuration(J)La/b/f/P;
    .locals 5

    .line 2
    invoke-super {p0, p1, p2}, La/b/f/J;->setDuration(J)La/b/f/J;

    .line 3
    iget-wide v0, p0, La/b/f/J;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 4
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    invoke-virtual {v2, p1, p2}, La/b/f/J;->setDuration(J)La/b/f/J;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setEpicenterCallback(La/b/f/J$c;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, La/b/f/J;->setEpicenterCallback(La/b/f/J$c;)V

    .line 2
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    invoke-virtual {v2, p1}, La/b/f/J;->setEpicenterCallback(La/b/f/J$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)La/b/f/J;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/b/f/P;->setInterpolator(Landroid/animation/TimeInterpolator;)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)La/b/f/P;
    .locals 0

    .line 2
    invoke-super {p0, p1}, La/b/f/J;->setInterpolator(Landroid/animation/TimeInterpolator;)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method public setPathMotion(La/b/f/w;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, La/b/f/J;->setPathMotion(La/b/f/w;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    invoke-virtual {v1, p1}, La/b/f/J;->setPathMotion(La/b/f/w;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)La/b/f/J;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/b/f/P;->setSceneRoot(Landroid/view/ViewGroup;)La/b/f/P;

    return-object p0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)La/b/f/P;
    .locals 3

    .line 2
    invoke-super {p0, p1}, La/b/f/J;->setSceneRoot(Landroid/view/ViewGroup;)La/b/f/J;

    .line 3
    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/f/J;

    invoke-virtual {v2, p1}, La/b/f/J;->setSceneRoot(Landroid/view/ViewGroup;)La/b/f/J;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)La/b/f/J;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, La/b/f/P;->setStartDelay(J)La/b/f/P;

    move-result-object p1

    return-object p1
.end method

.method public setStartDelay(J)La/b/f/P;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, La/b/f/J;->setStartDelay(J)La/b/f/J;

    move-object p1, p0

    check-cast p1, La/b/f/P;

    return-object p1
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, La/b/f/J;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/b/f/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/f/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, La/b/f/J;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
