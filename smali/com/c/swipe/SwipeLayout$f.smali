.class public final enum Lcom/c/swipe/SwipeLayout$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/c/swipe/SwipeLayout$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/swipe/SwipeLayout$f;

.field public static final enum b:Lcom/c/swipe/SwipeLayout$f;

.field public static final enum c:Lcom/c/swipe/SwipeLayout$f;

.field private static final synthetic d:[Lcom/c/swipe/SwipeLayout$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/c/swipe/SwipeLayout$f;

    const/4 v1, 0x0

    const-string v2, "Middle"

    invoke-direct {v0, v2, v1}, Lcom/c/swipe/SwipeLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/swipe/SwipeLayout$f;->a:Lcom/c/swipe/SwipeLayout$f;

    .line 2
    new-instance v0, Lcom/c/swipe/SwipeLayout$f;

    const/4 v2, 0x1

    const-string v3, "Open"

    invoke-direct {v0, v3, v2}, Lcom/c/swipe/SwipeLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    .line 3
    new-instance v0, Lcom/c/swipe/SwipeLayout$f;

    const/4 v3, 0x2

    const-string v4, "Close"

    invoke-direct {v0, v4, v3}, Lcom/c/swipe/SwipeLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lcom/c/swipe/SwipeLayout$f;

    sget-object v4, Lcom/c/swipe/SwipeLayout$f;->a:Lcom/c/swipe/SwipeLayout$f;

    aput-object v4, v0, v1

    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/swipe/SwipeLayout$f;->c:Lcom/c/swipe/SwipeLayout$f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/c/swipe/SwipeLayout$f;->d:[Lcom/c/swipe/SwipeLayout$f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/c/swipe/SwipeLayout$f;
    .locals 1

    .line 1
    const-class v0, Lcom/c/swipe/SwipeLayout$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/c/swipe/SwipeLayout$f;

    return-object p0
.end method

.method public static values()[Lcom/c/swipe/SwipeLayout$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/c/swipe/SwipeLayout$f;->d:[Lcom/c/swipe/SwipeLayout$f;

    invoke-virtual {v0}, [Lcom/c/swipe/SwipeLayout$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/swipe/SwipeLayout$f;

    return-object v0
.end method
