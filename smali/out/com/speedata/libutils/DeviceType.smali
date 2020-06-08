.class Lcom/speedata/libutils/DeviceType;
.super Ljava/lang/Object;
.source "DeviceType.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getGpio()[I
    .registers 8

    .line 86
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_72

    goto :goto_41

    :sswitch_f
    const-string v1, "KT50_B2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x4

    goto :goto_42

    :sswitch_19
    const-string v1, "kt45q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :sswitch_23
    const-string v1, "kt45"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    goto :goto_42

    :sswitch_2d
    const-string v1, "KT55"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x3

    goto :goto_42

    :sswitch_37
    const-string v1, "KT50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x2

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v0, -0x1

    :goto_42
    const/16 v1, 0x6a

    if-eqz v0, :cond_6c

    if-eq v0, v6, :cond_65

    const/16 v7, 0x40

    if-eq v0, v4, :cond_60

    if-eq v0, v3, :cond_5a

    if-eq v0, v2, :cond_55

    new-array v0, v6, [I

    aput v1, v0, v5

    return-object v0

    :cond_55
    new-array v0, v6, [I

    aput v7, v0, v5

    return-object v0

    :cond_5a
    new-array v0, v4, [I

    .line 94
    fill-array-data v0, :array_88

    return-object v0

    :cond_60
    new-array v0, v6, [I

    aput v7, v0, v5

    return-object v0

    :cond_65
    new-array v0, v6, [I

    const/16 v1, 0x5e

    aput v1, v0, v5

    return-object v0

    :cond_6c
    new-array v0, v6, [I

    aput v1, v0, v5

    return-object v0

    nop

    :sswitch_data_72
    .sparse-switch
        0x2359c4 -> :sswitch_37
        0x2359c9 -> :sswitch_2d
        0x325daa -> :sswitch_23
        0x6195807 -> :sswitch_19
        0x11cc8c8b -> :sswitch_f
    .end sparse-switch

    :array_88
    .array-data 4
        0x58
        0x6
    .end array-data
.end method

.method static getPowerType()Landroid/serialport/DeviceControlSpd$PowerType;
    .registers 6

    .line 63
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_5e

    goto :goto_40

    :sswitch_e
    const-string v1, "KT50_B2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x4

    goto :goto_41

    :sswitch_18
    const-string v1, "kt45q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :sswitch_22
    const-string v1, "kt45"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    goto :goto_41

    :sswitch_2c
    const-string v1, "KT55"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x3

    goto :goto_41

    :sswitch_36
    const-string v1, "KT50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x2

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, -0x1

    :goto_41
    if-eqz v0, :cond_5a

    if-eq v0, v5, :cond_57

    if-eq v0, v4, :cond_54

    if-eq v0, v3, :cond_51

    if-eq v0, v2, :cond_4e

    .line 77
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    return-object v0

    .line 73
    :cond_4e
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    return-object v0

    .line 71
    :cond_51
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    return-object v0

    .line 69
    :cond_54
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    return-object v0

    .line 67
    :cond_57
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    return-object v0

    .line 65
    :cond_5a
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    return-object v0

    nop

    :sswitch_data_5e
    .sparse-switch
        0x2359c4 -> :sswitch_36
        0x2359c9 -> :sswitch_2c
        0x325daa -> :sswitch_22
        0x6195807 -> :sswitch_18
        0x11cc8c8b -> :sswitch_e
    .end sparse-switch
.end method

.method static getSerialPort()Ljava/lang/String;
    .registers 3

    .line 37
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    sparse-switch v1, :sswitch_data_46

    goto :goto_3d

    :sswitch_b
    const-string v1, "KT50_B2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x4

    goto :goto_3e

    :sswitch_15
    const-string v1, "kt45q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :sswitch_1f
    const-string v1, "kt50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x2

    goto :goto_3e

    :sswitch_29
    const-string v1, "kt45"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    goto :goto_3e

    :sswitch_33
    const-string v1, "KT55"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x3

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v0, -0x1

    :goto_3e
    if-eq v0, v2, :cond_43

    const-string v0, "/dev/ttyMT1"

    return-object v0

    :cond_43
    const-string v0, "/dev/ttyMT2"

    return-object v0

    :sswitch_data_46
    .sparse-switch
        0x2359c9 -> :sswitch_33
        0x325daa -> :sswitch_29
        0x325dc4 -> :sswitch_1f
        0x6195807 -> :sswitch_15
        0x11cc8c8b -> :sswitch_b
    .end sparse-switch
.end method
