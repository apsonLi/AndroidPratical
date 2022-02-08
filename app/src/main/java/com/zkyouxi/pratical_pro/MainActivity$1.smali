.class Lcom/zkyouxi/pratical_pro/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkyouxi/pratical_pro/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkyouxi/pratical_pro/MainActivity;


# direct methods
.method constructor <init>(Lcom/zkyouxi/pratical_pro/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/zkyouxi/pratical_pro/MainActivity;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zkyouxi/pratical_pro/MainActivity$1;->this$0:Lcom/zkyouxi/pratical_pro/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zkyouxi/pratical_pro/MainActivity$1;->this$0:Lcom/zkyouxi/pratical_pro/MainActivity;

    const-string v1, "\u70b9\u51fb\u5fae\u4fe1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method
