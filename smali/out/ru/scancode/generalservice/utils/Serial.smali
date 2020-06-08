.class public Lru/scancode/generalservice/utils/Serial;
.super Ljava/lang/Object;
.source "Serial.java"


# static fields
.field private static final C5000:Ljava/lang/String; = "C5000"

.field private static final C6000:Ljava/lang/String; = "C6000"

.field private static final GETDEFAULT:Ljava/lang/String; = "getDefault"

.field private static final GETDSN:Ljava/lang/String; = "getDsn"

.field private static final GP_TELEPHONY_MANAGE:Ljava/lang/String; = "android.telephony.TelephonyManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialNo(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 36
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "C5000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f100056

    if-nez v1, :cond_51

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "C6000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_51

    :cond_1e
    const-string v1, "autoid q7"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 40
    new-instance v0, Lcom/seuic/misc/Misc;

    invoke-direct {v0}, Lcom/seuic/misc/Misc;-><init>()V

    invoke-virtual {v0}, Lcom/seuic/misc/Misc;->getSN()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    .line 47
    :cond_30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_4e

    .line 49
    :try_start_36
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_3a} :catch_3b

    goto :goto_55

    :catch_3b
    move-exception v0

    .line 51
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSerialNo error: "

    invoke-virtual {v1, v4, v3, v0}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 52
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_4e
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_55

    .line 38
    :cond_51
    :goto_51
    invoke-static {p0}, Lru/scancode/generalservice/utils/Serial;->getSerialWithReflection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 60
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :cond_5e
    return-object v0
.end method

.method private static getSerialWithReflection(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    const-string v0, "getSerialNo"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "android.telephony.TelephonyManager"

    .line 71
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_17

    :catch_a
    move-exception v2

    .line 75
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v1

    :goto_17
    const-string v3, ""

    :try_start_19
    const-string v4, "phone"

    .line 81
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_61

    const-string v5, "getDefault"

    .line 87
    invoke-virtual {v2, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getDsn"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    .line 89
    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_37} :catch_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_37} :catch_69

    .line 93
    :try_start_37
    invoke-virtual {v5, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v10

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_45} :catch_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_45} :catch_47
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_45} :catch_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_37 .. :try_end_45} :catch_69

    move-object v3, p0

    goto :goto_77

    :catch_47
    move-exception p0

    .line 100
    :try_start_48
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_77

    :catch_54
    move-exception p0

    .line 97
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_77

    .line 84
    :cond_61
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "TelephonyManager is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_69
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_69} :catch_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_48 .. :try_end_69} :catch_69

    :catch_69
    move-exception p0

    goto :goto_6c

    :catch_6b
    move-exception p0

    .line 104
    :goto_6c
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_77
    return-object v3
.end method
