.class public Landroid/support/v7/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x1000

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 55
    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconResId:I

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 68
    iput-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 69
    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mHasIconTint:Z

    .line 70
    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 74
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 83
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 84
    iput p3, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mId:I

    .line 85
    iput p2, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mGroup:I

    .line 86
    iput p4, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mCategoryOrder:I

    .line 87
    iput p5, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mOrdering:I

    .line 88
    iput-object p6, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 89
    return-void
.end method

.method private applyIconTint()V
    .locals 2

    .line 433
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    .line 434
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 435
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 441
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 445
    :cond_2
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 98
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 93
    iget-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 103
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 414
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 429
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 118
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 128
    iget-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 138
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 1

    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 399
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .line 302
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    return v1

    .line 306
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 307
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 308
    return v1

    .line 311
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 163
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1

    .line 168
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 173
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 178
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "resId"    # I

    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "actionView"    # Landroid/view/View;

    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C

    .line 183
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 184
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .line 189
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 190
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 191
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checkable"    # Z

    .line 196
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 197
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "checked"    # Z

    .line 207
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 208
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 382
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    .line 383
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .line 213
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 214
    return-object p0
.end method

.method public setExclusiveCheckable(Z)Landroid/support/v7/view/menu/ActionMenuItem;
    .locals 2
    .param p1, "exclusive"    # Z

    .line 201
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 202
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .line 228
    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconResId:I

    .line 229
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItem;->applyIconTint()V

    .line 232
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 219
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconResId:I

    .line 222
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItem;->applyIconTint()V

    .line 223
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintList"    # Landroid/content/res/ColorStateList;

    .line 404
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mHasIconTint:Z

    .line 407
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItem;->applyIconTint()V

    .line 409
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 419
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 422
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItem;->applyIconTint()V

    .line 424
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 237
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 238
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "numericChar"    # C

    .line 243
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 244
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .line 249
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 250
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 251
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 377
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 256
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 257
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .line 262
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 263
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 264
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .line 270
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 271
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 272
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 273
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 274
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .param p1, "show"    # I

    .line 317
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .line 356
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 357
    return-object p0
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "actionProvider"    # Landroid/support/v4/view/ActionProvider;

    .line 351
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .line 285
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 286
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 279
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 280
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 291
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 292
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 393
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    .line 394
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "visible"    # Z

    .line 297
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 298
    return-object p0
.end method
