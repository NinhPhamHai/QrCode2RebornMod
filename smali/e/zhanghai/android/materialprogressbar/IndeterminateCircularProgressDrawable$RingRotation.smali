.class Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingRotation"
.end annotation


# instance fields
.field private mRotation:F


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
    invoke-direct {p0}, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;-><init>()V

    return-void
.end method

.method static synthetic access$200(Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;)F
    .locals 0

    .line 1
    iget p0, p0, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;->mRotation:F

    return p0
.end method


# virtual methods
.method public setRotation(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;->mRotation:F

    return-void
.end method
