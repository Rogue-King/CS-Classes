.class final Landroid/support/design/widget/TextInputLayout$SavedState$1;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TextInputLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/design/widget/TextInputLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/TextInputLayout$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 999
    new-instance v0, Landroid/support/design/widget/TextInputLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/TextInputLayout$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 994
    new-instance v0, Landroid/support/design/widget/TextInputLayout$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 991
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/TextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 991
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/TextInputLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/TextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/design/widget/TextInputLayout$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 1004
    new-array v0, p1, [Landroid/support/design/widget/TextInputLayout$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 991
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout$SavedState$1;->newArray(I)[Landroid/support/design/widget/TextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method
