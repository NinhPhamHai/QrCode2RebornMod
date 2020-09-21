.class public final La/b/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/b/i$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La/b/b/i;->a:Landroid/content/Intent;

    .line 4
    iput-object p2, p0, La/b/b/i;->b:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;La/b/b/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, La/b/b/i;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
