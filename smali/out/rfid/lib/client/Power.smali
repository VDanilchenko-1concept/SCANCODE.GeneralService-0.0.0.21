.class public Lrfid/lib/client/Power;
.super Ljava/lang/Object;
.source "Power.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static off()V
    .registers 3

    :try_start_0
    const-string v0, "echo off >/proc/gpio127_ctl"

    .line 51
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_22

    const-wide/16 v0, 0xa

    .line 53
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_22

    goto :goto_f

    :catch_b
    move-exception v2

    .line 55
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_f
    const-string v2, "echo off >/proc/usb_dc_en"

    .line 57
    invoke-static {v2}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_22

    .line 59
    :try_start_14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_22

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 61
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1c
    const-string v0, "echo off >/proc/vbat_en"

    .line 63
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_26
    return-void
.end method

.method public static off_ST907_4P2v()V
    .registers 2

    :try_start_0
    const-string v0, "echo off >/proc/vbat_en"

    .line 152
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_10

    const-wide/16 v0, 0x64

    .line 154
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_10

    goto :goto_14

    :catch_b
    move-exception v0

    .line 156
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public static off_ST907_5v()V
    .registers 2

    :try_start_0
    const-string v0, "echo off> /proc/usb_dc_en"

    .line 99
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_10

    const-wide/16 v0, 0x64

    .line 101
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_10

    goto :goto_14

    :catch_b
    move-exception v0

    .line 103
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public static off_ST907ver2_5v()V
    .registers 2

    :try_start_0
    const-string v0, "echo 0 > /sys/devices/soc.0/xt_dev.68/xt_dc_in_en"

    .line 172
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_10

    const-wide/16 v0, 0x64

    .line 174
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_10

    goto :goto_14

    :catch_b
    move-exception v0

    .line 176
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public static off_ST917()V
    .registers 2

    :try_start_0
    const-string v0, "echo 0 > /d/debug_control/bb_5v_on"

    .line 254
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 0 > /sys/bb_ctrl/bb_ctrl_on"

    .line 255
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 0 > /sys/bb_ctrl/gpio_bb2"

    .line 256
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 0 > /sys/bb_ctrl/gpio_bb3"

    .line 257
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 0 > /sys/bb_ctrl/switch_vbat"

    .line 258
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_24

    const-wide/16 v0, 0x64

    .line 260
    :try_start_1b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_24

    goto :goto_28

    :catch_1f
    move-exception v0

    .line 262
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_28
    return-void
.end method

.method public static off_ST917_V2()V
    .registers 2

    :try_start_0
    const-string v0, "echo 0 > /sys/cgp_ctrl/cgp_vbus_5v"

    .line 304
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 0 > /sys/cgp_ctrl/cgp_switch_vbat"

    .line 305
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 0 > /sys/cgp_ctrl/cgp_on"

    .line 306
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_1a

    const-wide/16 v0, 0x64

    .line 308
    :try_start_11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1a

    goto :goto_1e

    :catch_15
    move-exception v0

    .line 310
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method public static on()V
    .registers 3

    :try_start_0
    const-string v0, "echo on >/proc/usb_dc_en"

    .line 25
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_22

    const-wide/16 v0, 0xa

    .line 27
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_22

    goto :goto_f

    :catch_b
    move-exception v2

    .line 29
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_f
    const-string v2, "echo on >/proc/vbat_en"

    .line 31
    invoke-static {v2}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_22

    .line 33
    :try_start_14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_22

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 35
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1c
    const-string v0, "echo on >/proc/gpio127_ctl"

    .line 37
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_26
    return-void
.end method

.method public static on_ST907()V
    .registers 2

    :try_start_0
    const-string v0, "echo on > /proc/uart3_3v3_en"

    .line 77
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo on > /proc/usb_dc_en"

    .line 79
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_15

    const-wide/16 v0, 0x1f4

    .line 81
    :try_start_c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_15

    goto :goto_19

    :catch_10
    move-exception v0

    .line 83
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_19
    return-void
.end method

.method public static on_ST907_4P2v()V
    .registers 2

    :try_start_0
    const-string v0, "echo on > /sys/devices/platform/scan_se955/power_status"

    .line 135
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo on > /proc/uart3_3v3_en"

    .line 136
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo on >/proc/vbat_en"

    .line 137
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_1a

    const-wide/16 v0, 0x1f4

    .line 139
    :try_start_11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1a

    goto :goto_1e

    :catch_15
    move-exception v0

    .line 141
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method public static on_ST907_5v()V
    .registers 2

    :try_start_0
    const-string v0, "echo on > /sys/devices/platform/scan_se955/power_status"

    .line 119
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo on > /proc/uart3_3v3_en"

    .line 120
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo on > /proc/usb_dc_en"

    .line 121
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_1a

    const-wide/16 v0, 0x1f4

    .line 123
    :try_start_11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1a

    goto :goto_1e

    :catch_15
    move-exception v0

    .line 125
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method public static on_ST907ver2_5v()V
    .registers 2

    :try_start_0
    const-string v0, "echo 1 > /sys/devices/soc.0/xt_dev.68/xt_dc_in_en"

    .line 192
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_10

    const-wide/16 v0, 0x64

    .line 194
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_10

    goto :goto_14

    :catch_b
    move-exception v0

    .line 196
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public static on_ST917()V
    .registers 2

    :try_start_0
    const-string v0, "echo 1 > /d/debug_control/bb_5v_on"

    .line 229
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 1 > /sys/bb_ctrl/bb_ctrl_on"

    .line 230
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 1 > /sys/bb_ctrl/gpio_bb2"

    .line 231
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 1 > /sys/bb_ctrl/gpio_bb3"

    .line 232
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 1 > /sys/bb_ctrl/switch_vbat"

    .line 233
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_24

    const-wide/16 v0, 0x64

    .line 235
    :try_start_1b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_24

    goto :goto_28

    :catch_1f
    move-exception v0

    .line 237
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_28
    return-void
.end method

.method public static on_ST917_V2()V
    .registers 2

    :try_start_0
    const-string v0, "echo 1 > /sys/cgp_ctrl/cgp_on"

    .line 286
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 1 > /sys/cgp_ctrl/cgp_switch_vbat"

    .line 287
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 0 > /sys/cgp_ctrl/cgp_uart_switch"

    .line 288
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 1 > /sys/cgp_ctrl/cgp_vbus_5v"

    .line 289
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_1f

    const-wide/16 v0, 0x64

    .line 291
    :try_start_16
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1f

    goto :goto_23

    :catch_1a
    move-exception v0

    .line 293
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_23
    return-void
.end method
