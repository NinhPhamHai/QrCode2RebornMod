.class public abstract La/b/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;La/b/b/g;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    new-instance v0, La/b/b/j;

    .line 2
    invoke-static {p2}, La/b/b/n$a;->a(Landroid/os/IBinder;)La/b/b/n;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, La/b/b/j;-><init>(La/b/b/k;La/b/b/n;Landroid/content/ComponentName;)V

    .line 3
    invoke-virtual {p0, p1, v0}, La/b/b/k;->onCustomTabsServiceConnected(Landroid/content/ComponentName;La/b/b/g;)V

    return-void
.end method
