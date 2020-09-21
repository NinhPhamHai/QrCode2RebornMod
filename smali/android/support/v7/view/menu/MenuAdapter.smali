.class public Landroid/support/v7/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field static final ITEM_LAYOUT:I


# instance fields
.field mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOverflowOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/view/menu/MenuAdapter;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 3
    iput-boolean p3, p0, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z

    .line 4
    iput-object p2, p0, Landroid/support/v7/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuAdapter;->findExpandedIndex()V

    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    if-ne v4, v0, :cond_0

    .line 5
    iput v3, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getAdapterMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getForceShowIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    return v0
.end method

.method public getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 2

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_1

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/MenuItemImpl;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Landroid/support/v7/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/view/menu/MenuAdapter;->ITEM_LAYOUT:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 3
    iget-boolean v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    .line 4
    move-object v1, p2

    check-cast v1, Landroid/support/v7/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 2
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    return-void
.end method
