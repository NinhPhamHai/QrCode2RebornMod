.class Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingPathTransform"
.end annotation


# instance fields
.field public mTrimPathEnd:F

.field public mTrimPathOffset:F

.field public mTrimPathStart:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;-><init>()V

    return-void
.end method


# virtual methods
.method public setTrimPathEnd(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathEnd:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathOffset:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathStart:F

    return-void
.end method
