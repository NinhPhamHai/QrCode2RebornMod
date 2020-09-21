.class public abstract Landroid/support/design/widget/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BaseTransientBottomBar$Behavior;,
        Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$Duration;,
        Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;,
        Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final USE_OFFSET_API:Z

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final mContentViewCallback:Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field final mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field final mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$1;

    invoke-direct {v2}, Landroid/support/design/widget/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$3;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$3;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 3
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    .line 4
    iput-object p3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContentViewCallback:Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    .line 6
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 7
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 8
    sget p3, Landroid/support/design/R$layout;->design_layout_snackbar:I

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 9
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 11
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 12
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 13
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance p2, Landroid/support/design/widget/BaseTransientBottomBar$2;

    invoke-direct {p2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$2;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 14
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    const-string p2, "accessibility"

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContentViewCallback:Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v3, 0x2

    .line 3
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 4
    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$10;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$10;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    new-instance p1, Landroid/support/design/widget/BaseTransientBottomBar$11;

    invoke-direct {p1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$11;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/design/R$anim;->design_snackbar_out:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 10
    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 12
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$12;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$12;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 13
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method animateViewIn()V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xc

    if-lt v0, v3, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 3
    sget-boolean v3, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v3, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6
    :goto_0
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v4, 0x2

    .line 7
    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 8
    sget-object v4, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$7;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$7;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$8;

    invoke-direct {v1, p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar$8;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/design/R$anim;->design_snackbar_in:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 14
    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 16
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$9;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$9;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 17
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method dispatchDismiss(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/SnackbarManager;->dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mDuration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewOut(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 2
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 8
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method onViewShown()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 2
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mDuration:I

    return-object p0
.end method

.method shouldAnimate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mDuration:I

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/SnackbarManager;->show(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    return-void
.end method

.method final showView()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 5
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    const v2, 0x3dcccccd    # 0.1f

    .line 6
    invoke-virtual {v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior;->setStartAlphaSwipeDistance(F)V

    const v2, 0x3f19999a    # 0.6f

    .line 7
    invoke-virtual {v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior;->setEndAlphaSwipeDistance(F)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior;->setSwipeDirection(I)V

    .line 9
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$4;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$4;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    const/16 v1, 0x50

    .line 11
    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$5;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$5;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 14
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$6;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$6;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method
