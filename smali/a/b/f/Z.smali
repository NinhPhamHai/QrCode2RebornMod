.class La/b/f/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b/f/ba;


# static fields
.field private static a:Landroid/animation/LayoutTransition;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/animation/LayoutTransition;)V
    .locals 7

    .line 30
    sget-boolean v0, La/b/f/Z;->e:Z

    const-string v1, "Failed to access cancel method by reflection"

    const/4 v2, 0x0

    const-string v3, "ViewGroupUtilsApi14"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 31
    :try_start_0
    const-class v4, Landroid/animation/LayoutTransition;

    const-string v5, "cancel"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, La/b/f/Z;->d:Ljava/lang/reflect/Method;

    .line 32
    sget-object v4, La/b/f/Z;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    sput-boolean v0, La/b/f/Z;->e:Z

    .line 35
    :cond_0
    sget-object v0, La/b/f/Z;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 36
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "Failed to invoke cancel method by reflection"

    .line 37
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 38
    :catch_2
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)La/b/f/W;
    .locals 0

    .line 1
    invoke-static {p1}, La/b/f/U;->a(Landroid/view/ViewGroup;)La/b/f/U;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 2
    sget-object v0, La/b/f/Z;->a:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, La/b/f/Y;

    invoke-direct {v0, p0}, La/b/f/Y;-><init>(La/b/f/Z;)V

    sput-object v0, La/b/f/Z;->a:Landroid/animation/LayoutTransition;

    .line 4
    sget-object v0, La/b/f/Z;->a:Landroid/animation/LayoutTransition;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 5
    sget-object v0, La/b/f/Z;->a:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 6
    sget-object v0, La/b/f/Z;->a:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 7
    sget-object v0, La/b/f/Z;->a:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 8
    sget-object v0, La/b/f/Z;->a:Landroid/animation/LayoutTransition;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    :cond_0
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p2}, La/b/f/Z;->a(Landroid/animation/LayoutTransition;)V

    .line 12
    :cond_1
    sget-object v0, La/b/f/Z;->a:Landroid/animation/LayoutTransition;

    if-eq p2, v0, :cond_2

    .line 13
    sget v0, La/b/f/C;->transition_layout_save:I

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 14
    :cond_2
    sget-object p2, La/b/f/Z;->a:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_4

    .line 15
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 16
    sget-boolean p2, La/b/f/Z;->c:Z

    const-string v0, "ViewGroupUtilsApi14"

    if-nez p2, :cond_4

    .line 17
    :try_start_0
    const-class p2, Landroid/view/ViewGroup;

    const-string v4, "mLayoutSuppressed"

    invoke-virtual {p2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    sput-object p2, La/b/f/Z;->b:Ljava/lang/reflect/Field;

    .line 18
    sget-object p2, La/b/f/Z;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "Failed to access mLayoutSuppressed field by reflection"

    .line 19
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_0
    sput-boolean v1, La/b/f/Z;->c:Z

    .line 21
    :cond_4
    sget-object p2, La/b/f/Z;->b:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_6

    .line 22
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p2, :cond_5

    .line 23
    :try_start_2
    sget-object v1, La/b/f/Z;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move v2, p2

    goto :goto_2

    :cond_5
    :goto_1
    move v2, p2

    goto :goto_3

    :catch_2
    :goto_2
    const-string p2, "Failed to get mLayoutSuppressed field by reflection"

    .line 24
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 26
    :cond_7
    sget p2, La/b/f/C;->transition_layout_save:I

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/LayoutTransition;

    if-eqz p2, :cond_8

    .line 28
    sget v0, La/b/f/C;->transition_layout_save:I

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_8
    :goto_4
    return-void
.end method
