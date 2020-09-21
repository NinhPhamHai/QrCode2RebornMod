.class public final enum Lcom/c/swipe/SwipeLayout$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/c/swipe/SwipeLayout$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/swipe/SwipeLayout$b;

.field public static final enum b:Lcom/c/swipe/SwipeLayout$b;

.field public static final enum c:Lcom/c/swipe/SwipeLayout$b;

.field public static final enum d:Lcom/c/swipe/SwipeLayout$b;

.field private static final synthetic e:[Lcom/c/swipe/SwipeLayout$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/c/swipe/SwipeLayout$b;

    const/4 v1, 0x0

    const-string v2, "Left"

    invoke-direct {v0, v2, v1}, Lcom/c/swipe/SwipeLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    .line 2
    new-instance v0, Lcom/c/swipe/SwipeLayout$b;

    const/4 v2, 0x1

    const-string v3, "Top"

    invoke-direct {v0, v3, v2}, Lcom/c/swipe/SwipeLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    .line 3
    new-instance v0, Lcom/c/swipe/SwipeLayout$b;

    const/4 v3, 0x2

    const-string v4, "Right"

    invoke-direct {v0, v4, v3}, Lcom/c/swipe/SwipeLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    .line 4
    new-instance v0, Lcom/c/swipe/SwipeLayout$b;

    const/4 v4, 0x3

    const-string v5, "Bottom"

    invoke-direct {v0, v5, v4}, Lcom/c/swipe/SwipeLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/c/swipe/SwipeLayout$b;

    sget-object v5, Lcom/c/swipe/SwipeLayout$b;->a:Lcom/c/swipe/SwipeLayout$b;

    aput-object v5, v0, v1

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->b:Lcom/c/swipe/SwipeLayout$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->c:Lcom/c/swipe/SwipeLayout$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/swipe/SwipeLayout$b;->d:Lcom/c/swipe/SwipeLayout$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/c/swipe/SwipeLayout$b;->e:[Lcom/c/swipe/SwipeLayout$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/swipe/SwipeLayout$b;
    .locals 1

    .line 1
    const-class v0, Lcom/c/swipe/SwipeLayout$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/c/swipe/SwipeLayout$b;

    return-object p0
.end method

.method public static values()[Lcom/c/swipe/SwipeLayout$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/c/swipe/SwipeLayout$b;->e:[Lcom/c/swipe/SwipeLayout$b;

    invoke-virtual {v0}, [Lcom/c/swipe/SwipeLayout$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/swipe/SwipeLayout$b;

    return-object v0
.end method
