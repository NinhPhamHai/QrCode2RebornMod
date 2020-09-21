.class Lcom/e/bottomnavigationviewex/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->setIconVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;


# direct methods
.method constructor <init>(Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/e/bottomnavigationviewex/a;->b:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;

    iput-object p2, p0, Lcom/e/bottomnavigationviewex/a;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/e/bottomnavigationviewex/a;->b:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;

    invoke-static {v0}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->a(Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;)I

    move-result v1

    iget-object v2, p0, Lcom/e/bottomnavigationviewex/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;->setItemHeight(I)V

    return-void
.end method
