.class public Lru/scancode/generalservice/activities/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field public static final ACCESSIBL:Ljava/lang/String; = "ru.scancode.generalservice"

.field public static final AUTOSTART_SP:Ljava/lang/String; = "autostart"

.field private static final REQ_DANG_PERM:I = 0x1


# instance fields
.field private serialTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkAccessibilityService()V
    .registers 4

    .line 152
    invoke-virtual {p0}, Lru/scancode/generalservice/activities/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    .line 151
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "ru.scancode.generalservice"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1f

    .line 170
    :cond_15
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "accessibility already enabled"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3e

    .line 156
    :cond_1f
    :goto_1f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100029

    .line 158
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100028

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100057

    .line 161
    new-instance v2, Lru/scancode/generalservice/activities/-$$Lambda$MainActivity$Wok7FbzUOe-vLdSizBZTbf-Sfj4;

    invoke-direct {v2, p0}, Lru/scancode/generalservice/activities/-$$Lambda$MainActivity$Wok7FbzUOe-vLdSizBZTbf-Sfj4;-><init>(Lru/scancode/generalservice/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_3e
    return-void
.end method

.method private checkPermissions()V
    .registers 5

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 135
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez v1, :cond_10

    .line 136
    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    .line 139
    :cond_10
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    const-string v3, "request dangerous permissions"

    invoke-virtual {v1, p0, v3}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 141
    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_25
    return-void
.end method

.method private initViews()V
    .registers 4

    .line 69
    invoke-virtual {p0}, Lru/scancode/generalservice/activities/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 70
    invoke-virtual {p0}, Lru/scancode/generalservice/activities/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lru/scancode/generalservice/activities/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/high16 v2, 0x7f0d0000

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setLogo(I)V

    .line 72
    invoke-virtual {p0}, Lru/scancode/generalservice/activities/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    :cond_1e
    const v0, 0x7f090098

    .line 75
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09004a

    .line 78
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09009d

    .line 81
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090048

    .line 84
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900d1

    .line 88
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090085

    .line 91
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900ec

    .line 94
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/scancode/generalservice/activities/MainActivity;->serialTv:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0}, Lru/scancode/generalservice/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lru/scancode/generalservice/utils/Serial;->getSerialNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090133

    .line 101
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0.0.0.21 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RELEASE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900cd

    .line 105
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lru/scancode/generalservice/activities/-$$Lambda$MainActivity$_1vIfs6SQERr1-RcKGUCu_o7Ac0;

    invoke-direct {v1, p0}, Lru/scancode/generalservice/activities/-$$Lambda$MainActivity$_1vIfs6SQERr1-RcKGUCu_o7Ac0;-><init>(Lru/scancode/generalservice/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000a

    .line 114
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lru/scancode/generalservice/activities/-$$Lambda$MainActivity$YBaUKGOL5KLNtLSLWOt-TAKEM9o;

    invoke-direct {v1, p0}, Lru/scancode/generalservice/activities/-$$Lambda$MainActivity$YBaUKGOL5KLNtLSLWOt-TAKEM9o;-><init>(Lru/scancode/generalservice/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900d2

    .line 120
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lru/scancode/generalservice/activities/-$$Lambda$MainActivity$g-xbmZpvU0ll6dhBlK8oUnNGerI;

    invoke-direct {v1, p0}, Lru/scancode/generalservice/activities/-$$Lambda$MainActivity$g-xbmZpvU0ll6dhBlK8oUnNGerI;-><init>(Lru/scancode/generalservice/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startAccessibilitySettings()V
    .registers 3

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$checkAccessibilityService$3$MainActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 163
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 164
    invoke-direct {p0}, Lru/scancode/generalservice/activities/MainActivity;->startAccessibilitySettings()V

    return-void
.end method

.method public synthetic lambda$initViews$0$MainActivity(Landroid/view/View;)V
    .registers 3

    .line 106
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 107
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lru/scancode/generalservice/services/MainService;->prinfScanConfig()V

    goto :goto_1c

    .line 109
    :cond_e
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const v0, 0x7f10006b

    invoke-virtual {p0, v0}, Lru/scancode/generalservice/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public synthetic lambda$initViews$1$MainActivity(Landroid/view/View;)V
    .registers 2

    .line 116
    invoke-direct {p0}, Lru/scancode/generalservice/activities/MainActivity;->startAccessibilitySettings()V

    return-void
.end method

.method public synthetic lambda$initViews$2$MainActivity(Landroid/view/View;)V
    .registers 4

    .line 122
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lru/scancode/generalservice/activities/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "l.lcn"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_14
    const p1, 0x7f100026

    .line 128
    invoke-virtual {p0, p1}, Lru/scancode/generalservice/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 49
    invoke-virtual {p0, p1}, Lru/scancode/generalservice/activities/MainActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lru/scancode/generalservice/activities/MainActivity;->initViews()V

    .line 53
    invoke-direct {p0}, Lru/scancode/generalservice/activities/MainActivity;->checkPermissions()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 64
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_41

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 191
    :goto_5
    array-length v1, p2

    if-ge p1, v1, :cond_12

    .line 193
    aget v1, p3, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_12
    if-lez v0, :cond_26

    .line 199
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const p2, 0x7f10005e

    invoke-virtual {p0, p2}, Lru/scancode/generalservice/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lru/scancode/generalservice/utils/App;->toastInfo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lru/scancode/generalservice/activities/MainActivity;->finish()V

    goto :goto_41

    .line 203
    :cond_26
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const p2, 0x7f10005d

    invoke-virtual {p0, p2}, Lru/scancode/generalservice/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lru/scancode/generalservice/activities/MainActivity;->serialTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/scancode/generalservice/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lru/scancode/generalservice/utils/Serial;->getSerialNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    :goto_41
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 59
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 60
    invoke-direct {p0}, Lru/scancode/generalservice/activities/MainActivity;->checkAccessibilityService()V

    return-void
.end method
