.class Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperApi19$DrawableWrapperStateKitKat;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19$DrawableWrapperStateKitKat;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19$DrawableWrapperStateKitKat;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method
