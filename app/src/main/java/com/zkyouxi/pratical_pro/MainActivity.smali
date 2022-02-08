.class public Lcom/zkyouxi/pratical_pro/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static attach:J

.field private static isInit:Ljava/lang/Boolean;

.field private static isInitx:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/zkyouxi/pratical_pro/MainActivity;->attach:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 35
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lcom/zkyouxi/pratical_pro/MainActivity;->isInit:Ljava/lang/Boolean;

    if-nez v0, :cond_1a

    const-string v0, "a"

    :goto_8
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-boolean v1, Lcom/zkyouxi/pratical_pro/MainActivity;->isInitx:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Z)V

    .line 37
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lcom/zkyouxi/pratical_pro/MainActivity;->isInit:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 38
    return-void

    .line 35
    :cond_1a
    const-string v0, "b"

    goto :goto_8
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v4, 0x7f09001c

    invoke-virtual {p0, v4}, Lcom/zkyouxi/pratical_pro/MainActivity;->setContentView(I)V

    .line 44
    const v4, 0x7f070097

    invoke-virtual {p0, v4}, Lcom/zkyouxi/pratical_pro/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Lcom/zkyouxi/pratical_pro/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/zkyouxi/pratical_pro/MainActivity$1;-><init>(Lcom/zkyouxi/pratical_pro/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v4, 0x7f070098

    invoke-virtual {p0, v4}, Lcom/zkyouxi/pratical_pro/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 52
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v3, Lcom/zkyouxi/pratical_pro/WechatItemAdapter;

    invoke-direct {v3, p0}, Lcom/zkyouxi/pratical_pro/WechatItemAdapter;-><init>(Landroid/content/Context;)V

    .line 53
    .local v3, "wechatItemAdapter":Lcom/zkyouxi/pratical_pro/WechatItemAdapter;
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    :try_start_2b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "reflectMethod"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 59
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "test"

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2b .. :try_end_43} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_43} :catch_49
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_43} :catch_4e

    .line 68
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_43
    return-void

    .line 60
    :catch_44
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_43

    .line 62
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_49
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_43

    .line 64
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4e
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_43
.end method
