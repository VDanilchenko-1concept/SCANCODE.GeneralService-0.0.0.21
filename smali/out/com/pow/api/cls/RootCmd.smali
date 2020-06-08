.class public final Lcom/pow/api/cls/RootCmd;
.super Ljava/lang/Object;
.source "RootCmd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MYINFO"

.field private static mHaveRoot:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "MYINFO"

    const-string v1, ""

    const/4 v2, 0x0

    .line 117
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "sh"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 118
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_c5
    .catchall {:try_start_5 .. :try_end_18} :catchall_c2

    .line 119
    :try_start_18
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_be
    .catchall {:try_start_18 .. :try_end_21} :catchall_ba

    .line 120
    :try_start_21
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    const-string p0, "exit\n"

    .line 126
    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 131
    :goto_4d
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_51} :catch_b8
    .catchall {:try_start_21 .. :try_end_51} :catchall_b6

    const-string v6, "cmdreadline:"

    if-nez p0, :cond_96

    .line 136
    :try_start_55
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result p0

    if-lez p0, :cond_82

    .line 139
    :goto_5b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_62

    goto :goto_82

    .line 140
    :cond_62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5b

    .line 145
    :cond_82
    :goto_82
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_85} :catch_b8
    .catchall {:try_start_55 .. :try_end_85} :catchall_b6

    .line 151
    :try_start_85
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    :goto_8d
    :try_start_8d
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_d9

    :catch_91
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d9

    .line 132
    :cond_96
    :try_start_96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b5} :catch_b8
    .catchall {:try_start_96 .. :try_end_b5} :catchall_b6

    goto :goto_4d

    :catchall_b6
    move-exception p0

    goto :goto_bc

    :catch_b8
    move-exception p0

    goto :goto_c0

    :catchall_ba
    move-exception p0

    move-object v5, v2

    :goto_bc
    move-object v2, v4

    goto :goto_db

    :catch_be
    move-exception p0

    move-object v5, v2

    :goto_c0
    move-object v2, v4

    goto :goto_c7

    :catchall_c2
    move-exception p0

    move-object v5, v2

    goto :goto_db

    :catch_c5
    move-exception p0

    move-object v5, v2

    .line 147
    :goto_c7
    :try_start_c7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_da

    if-eqz v2, :cond_d4

    .line 151
    :try_start_cc
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_d4

    :catch_d0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d4
    :goto_d4
    if-eqz v5, :cond_d9

    .line 158
    :try_start_d6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_91

    :cond_d9
    :goto_d9
    return-object v1

    :catchall_da
    move-exception p0

    :goto_db
    if-eqz v2, :cond_e5

    .line 151
    :try_start_dd
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_e5

    :catch_e1
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e5
    :goto_e5
    if-eqz v5, :cond_ef

    .line 158
    :try_start_e7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_ef

    :catch_eb
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    :cond_ef
    :goto_ef
    goto :goto_f1

    :goto_f0
    throw p0

    :goto_f1
    goto :goto_f0
.end method

.method public static execCommand(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 87
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    :goto_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_48

    .line 101
    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-eqz v0, :cond_47

    .line 102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exit value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_40} :catch_41

    goto :goto_47

    :catch_41
    move-exception p0

    .line 106
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_47
    :goto_47
    return-void

    .line 93
    :cond_48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d
.end method

.method public static execRootCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "MYINFO"

    const-string v1, ""

    const/4 v2, 0x0

    .line 41
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 42
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_8f
    .catchall {:try_start_5 .. :try_end_18} :catchall_8c

    .line 43
    :try_start_18
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_88
    .catchall {:try_start_18 .. :try_end_21} :catchall_84

    .line 45
    :try_start_21
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    const-string p0, "exit\n"

    .line 48
    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 51
    :goto_44
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5e

    .line 55
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4d} :catch_82
    .catchall {:try_start_21 .. :try_end_4d} :catchall_80

    .line 61
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    :goto_55
    :try_start_55
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_a3

    :catch_59
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 52
    :cond_5e
    :try_start_5e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "cmdreadline:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_7f} :catch_82
    .catchall {:try_start_5e .. :try_end_7f} :catchall_80

    goto :goto_44

    :catchall_80
    move-exception p0

    goto :goto_86

    :catch_82
    move-exception p0

    goto :goto_8a

    :catchall_84
    move-exception p0

    move-object v5, v2

    :goto_86
    move-object v2, v4

    goto :goto_a5

    :catch_88
    move-exception p0

    move-object v5, v2

    :goto_8a
    move-object v2, v4

    goto :goto_91

    :catchall_8c
    move-exception p0

    move-object v5, v2

    goto :goto_a5

    :catch_8f
    move-exception p0

    move-object v5, v2

    .line 57
    :goto_91
    :try_start_91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_a4

    if-eqz v2, :cond_9e

    .line 61
    :try_start_96
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_9e

    :catch_9a
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9e
    :goto_9e
    if-eqz v5, :cond_a3

    .line 68
    :try_start_a0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_59

    :cond_a3
    :goto_a3
    return-object v1

    :catchall_a4
    move-exception p0

    :goto_a5
    if-eqz v2, :cond_af

    .line 61
    :try_start_a7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_af

    :catch_ab
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_af
    :goto_af
    if-eqz v5, :cond_b9

    .line 68
    :try_start_b1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 73
    :cond_b9
    :goto_b9
    goto :goto_bb

    :goto_ba
    throw p0

    :goto_bb
    goto :goto_ba
.end method

.method public static execRootCmdSilent(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 173
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_51
    .catchall {:try_start_1 .. :try_end_14} :catchall_4f

    :try_start_14
    const-string v0, "MYINFO"

    .line 176
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const-string p0, "exit\n"

    .line 179
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 181
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 182
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_40} :catch_4c
    .catchall {:try_start_14 .. :try_end_40} :catchall_49

    .line 188
    :try_start_40
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_60

    :catch_44
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    :catchall_49
    move-exception p0

    move-object v0, v2

    goto :goto_61

    :catch_4c
    move-exception p0

    move-object v0, v2

    goto :goto_52

    :catchall_4f
    move-exception p0

    goto :goto_61

    :catch_51
    move-exception p0

    .line 184
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4f

    if-eqz v0, :cond_5f

    .line 188
    :try_start_57
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5f
    :goto_5f
    const/4 p0, -0x1

    :goto_60
    return p0

    :goto_61
    if-eqz v0, :cond_6b

    .line 188
    :try_start_63
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    :cond_6b
    :goto_6b
    throw p0
.end method

.method public static haveRoot()Z
    .registers 3

    .line 20
    sget-boolean v0, Lcom/pow/api/cls/RootCmd;->mHaveRoot:Z

    const-string v1, "MYINFO"

    if-nez v0, :cond_1e

    const-string v0, "echo test"

    .line 21
    invoke-static {v0}, Lcom/pow/api/cls/RootCmd;->execRootCmdSilent(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    const-string v0, "have root!"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/pow/api/cls/RootCmd;->mHaveRoot:Z

    goto :goto_23

    :cond_18
    const-string v0, "not root!"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_1e
    const-string v0, "mHaveRoot = true, have root!"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_23
    sget-boolean v0, Lcom/pow/api/cls/RootCmd;->mHaveRoot:Z

    return v0
.end method
