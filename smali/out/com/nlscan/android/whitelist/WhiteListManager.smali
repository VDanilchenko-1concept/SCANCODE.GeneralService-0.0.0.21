.class public Lcom/nlscan/android/whitelist/WhiteListManager;
.super Ljava/lang/Object;
.source "WhiteListManager.java"


# static fields
.field public static final CHECK_MODE_ALLOW_ALL:I

.field public static final CHECK_MODE_DISABLE_ALL:I

.field public static final CHECK_MODE_PKG_PREFIX:I

.field public static final CHECK_MODE_SIGNATURE:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "CHECK_MODE_ALLOW_ALL"

    const/16 v1, 0x3e8

    .line 18
    invoke-static {v0, v1}, Lcom/nlscan/android/whitelist/WhiteListManager;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nlscan/android/whitelist/WhiteListManager;->CHECK_MODE_ALLOW_ALL:I

    const-string v0, "CHECK_MODE_DISABLE_ALL"

    const/16 v1, 0x7d0

    .line 20
    invoke-static {v0, v1}, Lcom/nlscan/android/whitelist/WhiteListManager;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nlscan/android/whitelist/WhiteListManager;->CHECK_MODE_DISABLE_ALL:I

    const-string v0, "CHECK_MODE_PKG_PREFIX"

    const/16 v1, 0xbb8

    .line 23
    invoke-static {v0, v1}, Lcom/nlscan/android/whitelist/WhiteListManager;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nlscan/android/whitelist/WhiteListManager;->CHECK_MODE_PKG_PREFIX:I

    const-string v0, "CHECK_MODE_SIGNATURE"

    const/16 v1, 0xfa0

    .line 25
    invoke-static {v0, v1}, Lcom/nlscan/android/whitelist/WhiteListManager;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nlscan/android/whitelist/WhiteListManager;->CHECK_MODE_SIGNATURE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nlscan/android/whitelist/WhiteListManager;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getIntFieldValue(Ljava/lang/String;I)I
    .registers 3

    :try_start_0
    const-string v0, "com.nlscan.android.whitelist.WhiteListConstants"

    .line 151
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    return p1
.end method

.method private static getLongFieldValue(Ljava/lang/String;J)J
    .registers 4

    :try_start_0
    const-string v0, "com.nlscan.android.whitelist.WhiteListConstants"

    .line 163
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-wide p0

    :catch_f
    move-exception p0

    const-string v0, "TAG"

    .line 167
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide p1
.end method

.method private static getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "com.nlscan.android.whitelist.WhiteListConstants"

    .line 175
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    return-object p1
.end method


# virtual methods
.method public addSignatureInfo(Lcom/nlscan/android/whitelist/SignatureInfo;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public checkAppInstallable(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public clearSignatures()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckMode()I
    .registers 2

    .line 136
    sget v0, Lcom/nlscan/android/whitelist/WhiteListManager;->CHECK_MODE_SIGNATURE:I

    return v0
.end method

.method public getPkgPrefixs()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nlscan/android/whitelist/SignatureInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSignatureExits(Lcom/nlscan/android/whitelist/SignatureInfo;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public parseSignatureInfo(Ljava/lang/String;)Lcom/nlscan/android/whitelist/SignatureInfo;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeSignature(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setCheckMode(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setPkgPrefixs([Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public updateSignatureInfo(ILcom/nlscan/android/whitelist/SignatureInfo;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
