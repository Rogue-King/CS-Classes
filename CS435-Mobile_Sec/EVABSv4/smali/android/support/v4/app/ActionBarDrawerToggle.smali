.class public Landroid/support/v4/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;,
        Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;,
        Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ID_HOME:I = 0x102002c

.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggle"

.field private static final THEME_ATTRS:[I

.field private static final TOGGLE_DRAWABLE_OFFSET:F = 0.33333334f


# instance fields
.field final mActivity:Landroid/app/Activity;

.field private final mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerImage:Landroid/graphics/drawable/Drawable;

.field private final mDrawerImageResource:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

.field private mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->THEME_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "drawerImageRes"    # I
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .line 166
    invoke-static {p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->assumeMaterial(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "animate"    # Z
    .param p4, "drawerImageRes"    # I
    .param p5, "openDrawerContentDescRes"    # I
    .param p6, "closeDrawerContentDescRes"    # I

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 199
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 202
    instance-of v0, p1, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_0

    .line 203
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    .line 208
    :goto_0
    iput-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 209
    iput p4, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    .line 210
    iput p5, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 211
    iput p6, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 213
    invoke-direct {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 215
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    .line 216
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    if-eqz p3, :cond_1

    const v1, 0x3eaaaaab

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    .line 217
    return-void
.end method

.method private static assumeMaterial(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 414
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 415
    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 417
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 418
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 420
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 423
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 426
    .restart local v1    # "context":Landroid/content/Context;
    :goto_0
    const/4 v3, 0x0

    sget-object v4, Landroid/support/v4/app/ActionBarDrawerToggle;->THEME_ATTRS:[I

    const v5, 0x10102ce

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 428
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 429
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 430
    return-object v2

    .line 432
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    .end local v3    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    sget-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->THEME_ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 433
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 434
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 435
    return-object v1
.end method

.method private setActionBarDescription(I)V
    .locals 5
    .param p1, "contentDescRes"    # I

    .line 472
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 474
    return-void

    .line 476
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 477
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 478
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 481
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    if-nez v0, :cond_3

    .line 483
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    .line 485
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 487
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 488
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 489
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 488
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActionBarDrawerToggle"

    const-string v2, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    return-void
.end method

.method private setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 440
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 442
    return-void

    .line 444
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 445
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 446
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 448
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 450
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    if-nez v0, :cond_3

    .line 452
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    .line 454
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const-string v1, "ActionBarDrawerToggle"

    if-eqz v0, :cond_4

    .line 456
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 457
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeActionContentDescription:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    .line 459
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 458
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    nop

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 463
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 464
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;

    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggle$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 466
    :cond_5
    const-string v0, "Couldn\'t set home-as-up indicator"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_0
    return-void
.end method


# virtual methods
.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 325
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 328
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 329
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 330
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .line 396
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 397
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 398
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-direct {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .line 381
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 382
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 383
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-direct {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 363
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->getPosition()F

    move-result v0

    .line 364
    .local v0, "glyphOffset":F
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v3, p2, v2

    if-lez v3, :cond_0

    .line 365
    const/4 v3, 0x0

    sub-float v2, p2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    .line 367
    :cond_0
    mul-float v1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 369
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 370
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 411
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 342
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 348
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 350
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 297
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_2

    .line 298
    if-eqz p1, :cond_1

    .line 299
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 302
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 304
    :goto_1
    iput-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 306
    :cond_2
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 280
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 284
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 253
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 254
    invoke-direct {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 255
    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0

    .line 257
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 261
    :goto_0
    iget-boolean v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 264
    :cond_1
    return-void
.end method

.method public syncState()V
    .locals 3

    .line 229
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 235
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 239
    :cond_2
    return-void
.end method
