.class public Lcom/zkyouxi/pratical_pro/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static returnTest()Z
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public static returnTest1()I
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public static returnTest2()D
    .registers 2

    .prologue
    .line 23
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public static returnTest3()F
    .registers 1

    .prologue
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static show(Landroid/content/Context;)V
    .registers 3
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 9
    const-string v0, "\u638c\u6606\u6e38\u620f"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10
    return-void
.end method
