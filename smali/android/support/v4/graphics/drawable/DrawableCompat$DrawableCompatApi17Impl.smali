.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatApi17Impl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompatApi17"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 6

    .line 1
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethodFetched:Z

    const-string v1, "DrawableCompatApi17"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    new-array v4, v2, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "getLayoutDirection"

    :try_start_1
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 3
    sget-object v3, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to retrieve getLayoutDirection() method"

    .line 4
    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :goto_0
    sput-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethodFetched:Z

    .line 6
    :cond_0
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 7
    :try_start_2
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return p1

    :catch_1
    move-exception p1

    const-string v0, "Failed to invoke getLayoutDirection() via reflection"

    .line 8
    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 9
    sput-object p1, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_1
    return v2
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 6

    .line 1
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethodFetched:Z

    const-string v1, "DrawableCompatApi17"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "setLayoutDirection"

    .line 3
    :try_start_1
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 4
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    .line 5
    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    sput-boolean v3, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethodFetched:Z

    .line 7
    :cond_0
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 8
    :try_start_2
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v3

    :catch_1
    move-exception p1

    const-string p2, "Failed to invoke setLayoutDirection(int) via reflection"

    .line 9
    invoke-static {v1, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 10
    sput-object p1, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_1
    return v2
.end method
