.class La/b/f/aa;
.super La/b/f/Z;
.source "SourceFile"


# static fields
.field private static f:Ljava/lang/reflect/Method;

.field private static g:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/b/f/Z;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    .line 7
    sget-boolean v0, La/b/f/aa;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "suppressLayout"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, La/b/f/aa;->f:Ljava/lang/reflect/Method;

    .line 9
    sget-object v1, La/b/f/aa;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ViewUtilsApi18"

    const-string v3, "Failed to retrieve suppressLayout method"

    .line 10
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :goto_0
    sput-boolean v0, La/b/f/aa;->g:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)La/b/f/W;
    .locals 1

    .line 1
    new-instance v0, La/b/f/V;

    invoke-direct {v0, p1}, La/b/f/V;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 4

    const-string v0, "ViewUtilsApi18"

    .line 2
    invoke-direct {p0}, La/b/f/aa;->a()V

    .line 3
    sget-object v1, La/b/f/aa;->f:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error invoking suppressLayout method"

    .line 5
    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "Failed to invoke suppressLayout method"

    .line 6
    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
