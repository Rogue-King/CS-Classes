.class public Landroid/support/v7/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 850
    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    .line 873
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 877
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 901
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 902
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    .line 903
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 904
    return-void
.end method

.method private createListView(Landroid/support/v7/app/AlertController;)V
    .locals 11
    .param p1, "dialog"    # Landroid/support/v7/app/AlertController;

    .line 964
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Landroid/support/v7/app/AlertController;->mListLayout:I

    .line 965
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertController$RecycleListView;

    .line 968
    .local v0, "listView":Landroid/support/v7/app/AlertController$RecycleListView;
    iget-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 969
    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 970
    new-instance v9, Landroid/support/v7/app/AlertController$AlertParams$1;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v4, p1, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    const v5, 0x1020014

    iget-object v6, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/AlertController$AlertParams$1;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    .local v1, "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 985
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    new-instance v9, Landroid/support/v7/app/AlertController$AlertParams$2;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/AlertController$AlertParams$2;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1014
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    .line 1015
    iget v1, p1, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .local v1, "layout":I
    goto :goto_0

    .line 1017
    .end local v1    # "layout":I
    :cond_2
    iget v1, p1, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    .line 1020
    .restart local v1    # "layout":I
    :goto_0
    iget-object v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v2, 0x1020014

    if-eqz v5, :cond_3

    .line 1021
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    new-array v10, v8, [I

    aput v2, v10, v7

    move-object v2, v9

    move v4, v1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v2

    .local v2, "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1023
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4

    .line 1024
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object v1, v2

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1026
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v3, Landroid/support/v7/app/AlertController$CheckedItemAdapter;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v1, v2, v5}, Landroid/support/v7/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v1, v3

    .line 1030
    .local v1, "adapter":Landroid/widget/ListAdapter;
    :goto_1
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_5

    .line 1031
    invoke-interface {v2, v0}, Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1037
    :cond_5
    iput-object v1, p1, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1038
    iget v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    iput v2, p1, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 1040
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_6

    .line 1041
    new-instance v2, Landroid/support/v7/app/AlertController$AlertParams$3;

    invoke-direct {v2, p0, p1}, Landroid/support/v7/app/AlertController$AlertParams$3;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 1050
    :cond_6
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_7

    .line 1051
    new-instance v2, Landroid/support/v7/app/AlertController$AlertParams$4;

    invoke-direct {v2, p0, v0, p1}, Landroid/support/v7/app/AlertController$AlertParams$4;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1064
    :cond_7
    :goto_2
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_8

    .line 1065
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1068
    :cond_8
    iget-boolean v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_9

    .line 1069
    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_3

    .line 1070
    :cond_9
    iget-boolean v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_a

    .line 1071
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1073
    :cond_a
    :goto_3
    iput-object v0, p1, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1074
    return-void
.end method


# virtual methods
.method public apply(Landroid/support/v7/app/AlertController;)V
    .locals 7
    .param p1, "dialog"    # Landroid/support/v7/app/AlertController;

    .line 907
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 910
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 911
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 913
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 914
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 916
    :cond_2
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    .line 917
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    .line 919
    :cond_3
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    .line 920
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    .line 923
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 924
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 926
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 927
    const/4 v2, -0x1

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 930
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 931
    const/4 v2, -0x2

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 934
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 935
    const/4 v2, -0x3

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 940
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    .line 941
    :cond_9
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V

    .line 943
    :cond_a
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 944
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_b

    .line 945
    iget v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_1

    .line 948
    :cond_b
    invoke-virtual {p1, v2}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 950
    :cond_c
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_d

    .line 951
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setView(I)V

    .line 961
    :cond_d
    :goto_1
    return-void
.end method
