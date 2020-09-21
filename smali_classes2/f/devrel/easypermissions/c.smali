.class public Lf/devrel/easypermissions/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lf/devrel/easypermissions/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Ljava/lang/Object;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/devrel/easypermissions/b;

    invoke-direct {v0}, Lf/devrel/easypermissions/b;-><init>()V

    sput-object v0, Lf/devrel/easypermissions/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/devrel/easypermissions/c;->a:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/devrel/easypermissions/c;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/devrel/easypermissions/c;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/devrel/easypermissions/c;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/devrel/easypermissions/c;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lf/devrel/easypermissions/c;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lf/devrel/easypermissions/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/devrel/easypermissions/c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static a(Landroid/content/Intent;Landroid/app/Activity;)Lf/devrel/easypermissions/c;
    .locals 1

    const-string v0, "extra_app_settings"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lf/devrel/easypermissions/c;

    .line 2
    invoke-direct {p0, p1}, Lf/devrel/easypermissions/c;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3

    .line 3
    iput-object p1, p0, Lf/devrel/easypermissions/c;->g:Ljava/lang/Object;

    .line 4
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lf/devrel/easypermissions/c;->h:Landroid/content/Context;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/devrel/easypermissions/c;->h:Landroid/content/Context;

    goto :goto_0

    .line 8
    :cond_1
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lf/devrel/easypermissions/c;->h:Landroid/content/Context;

    :goto_0
    return-void

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;
    .locals 3

    .line 11
    iget v0, p0, Lf/devrel/easypermissions/c;->a:I

    if-lez v0, :cond_0

    .line 12
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lf/devrel/easypermissions/c;->h:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lf/devrel/easypermissions/c;->h:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const/4 v0, 0x0

    .line 14
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lf/devrel/easypermissions/c;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lf/devrel/easypermissions/c;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lf/devrel/easypermissions/c;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lf/devrel/easypermissions/c;->e:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lf/devrel/easypermissions/c;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lf/devrel/easypermissions/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lf/devrel/easypermissions/c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lf/devrel/easypermissions/c;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lf/devrel/easypermissions/c;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget p2, p0, Lf/devrel/easypermissions/c;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
