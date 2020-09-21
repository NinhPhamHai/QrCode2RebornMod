.class public final enum Lcom/c/swipe/SwipeLayout$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/c/swipe/SwipeLayout$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/swipe/SwipeLayout$e;

.field public static final enum b:Lcom/c/swipe/SwipeLayout$e;

.field private static final synthetic c:[Lcom/c/swipe/SwipeLayout$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/c/swipe/SwipeLayout$e;

    const/4 v1, 0x0

    const-string v2, "LayDown"

    invoke-direct {v0, v2, v1}, Lcom/c/swipe/SwipeLayout$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/swipe/SwipeLayout$e;->a:Lcom/c/swipe/SwipeLayout$e;

    .line 2
    new-instance v0, Lcom/c/swipe/SwipeLayout$e;

    const/4 v2, 0x1

    const-string v3, "PullOut"

    invoke-direct {v0, v3, v2}, Lcom/c/swipe/SwipeLayout$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/c/swipe/SwipeLayout$e;

    sget-object v3, Lcom/c/swipe/SwipeLayout$e;->a:Lcom/c/swipe/SwipeLayout$e;

    aput-object v3, v0, v1

    sget-object v1, Lcom/c/swipe/SwipeLayout$e;->b:Lcom/c/swipe/SwipeLayout$e;

    aput-object v1, v0, v2

    sput-object v0, Lcom/c/swipe/SwipeLayout$e;->c:[Lcom/c/swipe/SwipeLayout$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/c/swipe/SwipeLayout$e;
    .locals 1

    .line 1
    const-class v0, Lcom/c/swipe/SwipeLayout$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/c/swipe/SwipeLayout$e;

    return-object p0
.end method

.method public static values()[Lcom/c/swipe/SwipeLayout$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/c/swipe/SwipeLayout$e;->c:[Lcom/c/swipe/SwipeLayout$e;

    invoke-virtual {v0}, [Lcom/c/swipe/SwipeLayout$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/swipe/SwipeLayout$e;

    return-object v0
.end method
