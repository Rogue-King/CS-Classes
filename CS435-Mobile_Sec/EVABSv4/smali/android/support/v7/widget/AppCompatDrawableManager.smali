.class public final Landroid/support/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;,
        Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;,
        Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;,
        Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManager"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCacheLock:Ljava/lang/Object;

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 75
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 103
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    .line 109
    const/4 v0, 0x3

    new-array v2, v0, [I

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sput-object v2, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 119
    const/4 v2, 0x7

    new-array v3, v2, [I

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v7, v3, v5

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v7, v3, v0

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v8, 0x4

    aput v7, v3, v8

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v9, 0x5

    aput v7, v3, v9

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v7, v3, v1

    sput-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 133
    const/16 v3, 0xa

    new-array v3, v3, [I

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v7, v3, v5

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v7, v3, v0

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v7, v3, v8

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v7, v3, v9

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v7, v3, v1

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v1, v3, v2

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v2, 0x8

    aput v1, v3, v2

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    const/16 v2, 0x9

    aput v1, v3, v2

    sput-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 150
    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v6

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 160
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 170
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 785
    return-void
.end method

.method private addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "delegate"    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    .line 492
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 495
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-void
.end method

.method private addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 416
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 417
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_1

    .line 418
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/LongSparseArray;

    .line 420
    .local v2, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v2, :cond_0

    .line 421
    new-instance v3, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move-object v2, v3

    .line 422
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, p3, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 425
    .end local v2    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    monitor-exit v1

    .line 426
    const/4 v1, 0x1

    return v1

    .line 425
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 428
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "tintList"    # Landroid/content/res/ColorStateList;

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/SparseArrayCompat;

    .line 575
    .local v0, "themeTints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_1

    .line 576
    new-instance v1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    move-object v0, v1

    .line 577
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 580
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 505
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 506
    .local v3, "id":I
    if-ne v3, p1, :cond_0

    .line 507
    const/4 v0, 0x1

    return v0

    .line 505
    .end local v3    # "id":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    :cond_1
    return v1
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 748
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v0, :cond_0

    .line 750
    return-void

    .line 754
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 755
    sget v0, Landroid/support/v7/appcompat/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 756
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    return-void

    .line 757
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 758
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseColor"    # I

    .line 599
    const/4 v0, 0x4

    new-array v1, v0, [[I

    .line 600
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 601
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 603
    .local v2, "i":I
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    .line 604
    .local v3, "colorControlHighlight":I
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 607
    .local v4, "disabledColor":I
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 608
    aput v4, v0, v2

    .line 609
    add-int/lit8 v2, v2, 0x1

    .line 611
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 612
    invoke-static {v3, p2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v0, v2

    .line 613
    add-int/lit8 v2, v2, 0x1

    .line 615
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 616
    invoke-static {v3, p2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v0, v2

    .line 617
    add-int/lit8 v2, v2, 0x1

    .line 620
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v5, v1, v2

    .line 621
    aput p2, v0, v2

    .line 622
    add-int/lit8 v2, v2, 0x1

    .line 624
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 4
    .param p0, "tv"    # Landroid/util/TypedValue;

    .line 225
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 593
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    .line 594
    invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 593
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 583
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    .line 584
    invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 583
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 230
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 233
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 234
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 235
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v3

    .line 237
    .local v3, "key":J
    invoke-direct {p0, p1, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 238
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 240
    return-object v1

    .line 244
    :cond_1
    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v5, :cond_2

    .line 245
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 246
    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v6, v7

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 247
    invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    .line 251
    :cond_2
    if-eqz v1, :cond_3

    .line 252
    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 254
    invoke-direct {p0, p1, v3, v4, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 257
    :cond_3
    return-object v1
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 628
    const/4 v0, 0x3

    new-array v1, v0, [[I

    .line 629
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 630
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 632
    .local v2, "i":I
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 635
    .local v3, "thumbColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 640
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 641
    aget-object v4, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, v0, v2

    .line 642
    add-int/lit8 v2, v2, 0x1

    .line 644
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 645
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 646
    add-int/lit8 v2, v2, 0x1

    .line 649
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v1, v2

    .line 650
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    aput v4, v0, v2

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    :cond_0
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 657
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 658
    add-int/lit8 v2, v2, 0x1

    .line 660
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 661
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 662
    add-int/lit8 v2, v2, 0x1

    .line 665
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v1, v2

    .line 666
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 667
    add-int/lit8 v2, v2, 0x1

    .line 670
    :goto_0
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "tint"    # Landroid/content/res/ColorStateList;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p2, "state"    # [I

    .line 720
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 724
    .local v0, "color":I
    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    return-object v1

    .line 721
    .end local v0    # "color":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static get()Landroid/support/v7/widget/AppCompatDrawableManager;
    .locals 1

    .line 83
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 85
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V

    .line 87
    :cond_0
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    return-object v0
.end method

.method private getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J

    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 394
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/LongSparseArray;

    .line 395
    .local v1, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 396
    monitor-exit v0

    return-object v2

    .line 399
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 400
    .local v3, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_2

    .line 402
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 403
    .local v4, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v4, :cond_1

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 407
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 410
    .end local v1    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v4    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    monitor-exit v0

    .line 411
    return-object v2

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 729
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 731
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v0, :cond_0

    .line 733
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v1

    .line 734
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 737
    :cond_0
    return-object v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/SparseArrayCompat;

    .line 564
    .local v0, "tints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_0
    return-object v1

    .line 566
    .end local v0    # "tints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    :cond_1
    return-object v1
.end method

.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "resId"    # I

    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p0, v1, :cond_0

    .line 517
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 520
    :cond_0
    return-object v0
.end method

.method private static installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 95
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V

    const-string v1, "vector"

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 98
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;-><init>()V

    const-string v1, "animated-vector"

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 101
    :cond_0
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .line 764
    instance-of v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-nez v0, :cond_1

    .line 765
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 307
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 308
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, "cachedTagName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 311
    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 320
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 318
    .restart local v0    # "cachedTagName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 322
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    .line 325
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 326
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 328
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 329
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 330
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 332
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 334
    .local v4, "key":J
    invoke-direct {p0, p1, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 335
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 341
    return-object v6

    .line 344
    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 347
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 348
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 350
    .local v8, "attrs":Landroid/util/AttributeSet;
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v9, v11, :cond_5

    if-eq v10, v3, :cond_5

    goto :goto_2

    .line 354
    :cond_5
    if-ne v10, v11, :cond_8

    .line 358
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "tagName":Ljava/lang/String;
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v9, p2, v3}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 363
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    .line 364
    .local v9, "delegate":Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    if-eqz v9, :cond_6

    .line 365
    nop

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    .line 365
    invoke-interface {v9, p1, v7, v8, v11}, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v6, v11

    .line 368
    :cond_6
    if-eqz v6, :cond_7

    .line 370
    iget v11, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 371
    invoke-direct {p0, p1, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 378
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "delegate":Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    .end local v10    # "type":I
    :cond_7
    goto :goto_3

    .line 355
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "type":I
    :cond_8
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v3, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "type":I
    .restart local v0    # "tv":Landroid/util/TypedValue;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v4    # "key":J
    .restart local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resId":I
    :catch_0
    move-exception v3

    .line 377
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "AppCompatDrawableManager"

    const-string v8, "Exception while inflating drawable"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_3
    if-nez v6, :cond_a

    .line 383
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, p2, v2}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 385
    :cond_a
    return-object v6

    .line 388
    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_b
    return-object v1
.end method

.method private removeDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "delegate"    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 500
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_0
    return-void
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 741
    invoke-static {p0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 744
    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 745
    return-void
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 262
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 263
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_2

    .line 265
    invoke-static {p4}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 268
    :cond_0
    invoke-static {p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 269
    invoke-static {p4, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 272
    invoke-static {p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 273
    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_1

    .line 274
    invoke-static {p4, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 276
    .end local v1    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    goto/16 :goto_1

    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v1, :cond_3

    .line 277
    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 278
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 279
    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 278
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 280
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 281
    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 280
    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 283
    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 282
    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 284
    .end local v1    # "ld":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_1

    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v1, :cond_5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v1, :cond_5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_4

    goto :goto_0

    .line 296
    :cond_4
    invoke-static {p1, p2, p4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 297
    .local v1, "tinted":Z
    if-nez v1, :cond_6

    if-eqz p3, :cond_6

    .line 300
    const/4 p4, 0x0

    goto :goto_1

    .line 287
    .end local v1    # "tinted":Z
    :cond_5
    :goto_0
    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 288
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 289
    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 288
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 291
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 292
    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 291
    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 293
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 294
    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 293
    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 295
    .end local v1    # "ld":Landroid/graphics/drawable/LayerDrawable;
    nop

    .line 303
    :cond_6
    :goto_1
    return-object p4
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/support/v7/widget/TintInfo;
    .param p2, "state"    # [I

    .line 696
    invoke-static {p0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 698
    const-string v0, "AppCompatDrawableManager"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-void

    .line 702
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    .line 703
    :cond_2
    :goto_0
    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-boolean v1, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 711
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_5

    .line 714
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 716
    :cond_5
    return-void
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 445
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 446
    .local v0, "tintMode":Landroid/graphics/PorterDuff$Mode;
    const/4 v1, 0x0

    .line 447
    .local v1, "colorAttrSet":Z
    const/4 v2, 0x0

    .line 448
    .local v2, "colorAttr":I
    const/4 v3, -0x1

    .line 450
    .local v3, "alpha":I
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 452
    const/4 v1, 0x1

    goto :goto_0

    .line 453
    :cond_0
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 454
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 455
    const/4 v1, 0x1

    goto :goto_0

    .line 456
    :cond_1
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    const v2, 0x1010031

    .line 458
    const/4 v1, 0x1

    .line 459
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 460
    :cond_2
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v4, :cond_3

    .line 461
    const v2, 0x1010030

    .line 462
    const/4 v1, 0x1

    .line 463
    const v4, 0x42233333    # 40.8f

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    .line 464
    :cond_3
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne p1, v4, :cond_4

    .line 465
    const v2, 0x1010031

    .line 466
    const/4 v1, 0x1

    .line 469
    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    .line 470
    invoke-static {p2}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 471
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 474
    :cond_5
    invoke-static {p0, v2}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 475
    .local v4, "color":I
    invoke-static {v4, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 477
    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    .line 478
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 486
    :cond_6
    const/4 v5, 0x1

    return v5

    .line 488
    .end local v4    # "color":I
    :cond_7
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z

    .line 193
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 195
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    :cond_0
    if-nez v0, :cond_1

    .line 200
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    :cond_1
    if-eqz v0, :cond_2

    .line 205
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    :cond_2
    if-eqz v0, :cond_3

    .line 209
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_3
    return-object v0
.end method

.method getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 525
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 527
    .local v0, "tint":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_c

    .line 529
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p2, v1, :cond_0

    .line 530
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_1

    .line 531
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_1

    .line 532
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_1

    .line 533
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_2

    .line 534
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 535
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v1, :cond_3

    .line 536
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 537
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v1, :cond_4

    .line 538
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 539
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_5

    .line 540
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 541
    :cond_5
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_a

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_6

    goto :goto_0

    .line 544
    :cond_6
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 545
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 546
    :cond_7
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 547
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_default:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 548
    :cond_8
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 549
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 550
    :cond_9
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_b

    .line 551
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 543
    :cond_a
    :goto_0
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_spinner:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 554
    :cond_b
    :goto_1
    if-eqz v0, :cond_c

    .line 555
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 558
    :cond_c
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/LongSparseArray;

    .line 217
    .local v1, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 221
    .end local v1    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_0
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDrawableLoadedFromResources(Landroid/content/Context;Landroid/support/v7/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/support/v7/widget/VectorEnabledTintResources;
    .param p3, "resId"    # I

    .line 433
    invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 434
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 437
    :cond_0
    if-eqz v0, :cond_1

    .line 438
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 440
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
