.class public final Lcom/google/zxing/client/android/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x3

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x6

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_font:I = 0x0

.field public static final FontFamilyFont_fontStyle:I = 0x1

.field public static final FontFamilyFont_fontWeight:I = 0x2

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final zxing_camera_preview:[I

.field public static final zxing_camera_preview_zxing_framing_rect_height:I = 0x0

.field public static final zxing_camera_preview_zxing_framing_rect_width:I = 0x1

.field public static final zxing_camera_preview_zxing_preview_scaling_strategy:I = 0x2

.field public static final zxing_camera_preview_zxing_use_texture_view:I = 0x3

.field public static final zxing_finder:[I

.field public static final zxing_finder_zxing_possible_result_points:I = 0x0

.field public static final zxing_finder_zxing_result_view:I = 0x1

.field public static final zxing_finder_zxing_viewfinder_laser:I = 0x2

.field public static final zxing_finder_zxing_viewfinder_mask:I = 0x3

.field public static final zxing_view:[I

.field public static final zxing_view_zxing_scanner_layout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/android/R$styleable;->CoordinatorLayout:[I

    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/client/android/R$styleable;->CoordinatorLayout_Layout:[I

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/client/android/R$styleable;->FontFamily:[I

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/client/android/R$styleable;->FontFamilyFont:[I

    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview:[I

    .line 6
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/zxing/client/android/R$styleable;->zxing_finder:[I

    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0301bf

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/R$styleable;->zxing_view:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0300cf
        0x7f03015d
    .end array-data

    :array_1
    .array-data 4
        0x10100b3
        0x7f0300d6
        0x7f0300d7
        0x7f0300d8
        0x7f0300db
        0x7f0300dc
        0x7f0300dd
    .end array-data

    :array_2
    .array-data 4
        0x7f0300ac
        0x7f0300ad
        0x7f0300ae
        0x7f0300af
        0x7f0300b0
        0x7f0300b1
    .end array-data

    :array_3
    .array-data 4
        0x7f0300aa
        0x7f0300b2
        0x7f0300b3
    .end array-data

    :array_4
    .array-data 4
        0x7f0301ba
        0x7f0301bb
        0x7f0301bd
        0x7f0301c0
    .end array-data

    :array_5
    .array-data 4
        0x7f0301bc
        0x7f0301be
        0x7f0301c1
        0x7f0301c2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
