.class Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundButtonCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .line 82
    sget-boolean v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableFieldFetched:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    :try_start_0
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 85
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    sput-boolean v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableFieldFetched:Z

    .line 92
    :cond_0
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 94
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Failed to get button drawable via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    return-object v2
.end method

.method public getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .line 62
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {v0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .line 75
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {v0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 56
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {v0, p2}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 69
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {v0, p2}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 72
    :cond_0
    return-void
.end method
