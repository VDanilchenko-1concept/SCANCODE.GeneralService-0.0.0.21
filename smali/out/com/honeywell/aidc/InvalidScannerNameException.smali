.class public final Lcom/honeywell/aidc/InvalidScannerNameException;
.super Lcom/honeywell/aidc/AidcException;
.source "InvalidScannerNameException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/honeywell/aidc/AidcException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/honeywell/aidc/AidcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
