.class public Ljxl/biff/XFRecord;
.super Ljxl/biff/WritableRecordData;
.source "XFRecord.java"

# interfaces
.implements Ljxl/format/CellFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/XFRecord$XFType;,
        Ljxl/biff/XFRecord$BiffType;
    }
.end annotation


# static fields
.field private static final USE_ALIGNMENT:I = 0x10

.field private static final USE_BACKGROUND:I = 0x40

.field private static final USE_BORDER:I = 0x20

.field private static final USE_DEFAULT_VALUE:I = 0xf8

.field private static final USE_FONT:I = 0x4

.field private static final USE_FORMAT:I = 0x8

.field private static final USE_PROTECTION:I = 0x80

.field public static final biff7:Ljxl/biff/XFRecord$BiffType;

.field public static final biff8:Ljxl/biff/XFRecord$BiffType;

.field protected static final cell:Ljxl/biff/XFRecord$XFType;

.field static synthetic class$jxl$biff$XFRecord:Ljava/lang/Class;

.field private static final dateFormats:[I

.field private static final javaDateFormats:[Ljava/text/DateFormat;

.field private static javaNumberFormats:[Ljava/text/NumberFormat;

.field private static logger:Lcommon/Logger;

.field private static numberFormats:[I

.field protected static final style:Ljxl/biff/XFRecord$XFType;


# instance fields
.field private align:Ljxl/format/Alignment;

.field private backgroundColour:Ljxl/format/Colour;

.field private biffType:Ljxl/biff/XFRecord$BiffType;

.field private bottomBorder:Ljxl/format/BorderLineStyle;

.field private bottomBorderColour:Ljxl/format/Colour;

.field private copied:Z

.field private date:Z

.field private dateFormat:Ljava/text/DateFormat;

.field private excelFormat:Ljxl/format/Format;

.field private font:Ljxl/biff/FontRecord;

.field private fontIndex:I

.field private format:Ljxl/biff/DisplayFormat;

.field public formatIndex:I

.field private formatInfoInitialized:Z

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private hidden:Z

.field private indentation:I

.field private initialized:Z

.field private leftBorder:Ljxl/format/BorderLineStyle;

.field private leftBorderColour:Ljxl/format/Colour;

.field private locked:Z

.field private number:Z

.field private numberFormat:Ljava/text/NumberFormat;

.field private options:I

.field private orientation:Ljxl/format/Orientation;

.field private parentFormat:I

.field private pattern:Ljxl/format/Pattern;

.field private read:Z

.field private rightBorder:Ljxl/format/BorderLineStyle;

.field private rightBorderColour:Ljxl/format/Colour;

.field private shrinkToFit:Z

.field private topBorder:Ljxl/format/BorderLineStyle;

.field private topBorderColour:Ljxl/format/Colour;

.field private usedAttributes:B

.field private valign:Ljxl/format/VerticalAlignment;

.field private wrap:Z

.field private xfFormatType:Ljxl/biff/XFRecord$XFType;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 53
    sget-object v0, Ljxl/biff/XFRecord;->class$jxl$biff$XFRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.biff.XFRecord"

    invoke-static {v0}, Ljxl/biff/XFRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/XFRecord;->class$jxl$biff$XFRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/XFRecord;->logger:Lcommon/Logger;

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 250
    fill-array-data v1, :array_170

    sput-object v1, Ljxl/biff/XFRecord;->dateFormats:[I

    new-array v1, v0, [Ljava/text/DateFormat;

    const/4 v2, 0x3

    .line 267
    invoke-static {v2}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "d-MMM"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v3

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "MMM-yy"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v2

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "h:mm a"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v5, v1, v7

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mm:ss a"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x5

    aput-object v5, v1, v8

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "H:mm"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x6

    aput-object v5, v1, v9

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "H:mm:ss"

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x7

    aput-object v5, v1, v11

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v12, "M/d/yy H:mm"

    invoke-direct {v5, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x8

    aput-object v5, v1, v12

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v13, "mm:ss"

    invoke-direct {v5, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x9

    aput-object v5, v1, v13

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v10, 0xa

    aput-object v5, v1, v10

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v14, "mm:ss.S"

    invoke-direct {v5, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v5, v1, v14

    sput-object v1, Ljxl/biff/XFRecord;->javaDateFormats:[Ljava/text/DateFormat;

    const/16 v1, 0x14

    new-array v5, v1, [I

    .line 284
    fill-array-data v5, :array_18c

    sput-object v5, Ljxl/biff/XFRecord;->numberFormats:[I

    new-array v1, v1, [Ljava/text/NumberFormat;

    .line 309
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v15, "0"

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v4

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v6

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "#,##0"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v3

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#,##0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "$#,##0;($#,##0)"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "$#,##0.00;($#,##0.00)"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v11

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "0%"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v12

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "0.00%"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v13

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "0.00E00"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "#,##0;(#,##0)"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v14

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/16 v0, 0xd

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v6, "#,##0.00;(#,##0.00)"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/16 v0, 0xe

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/16 v0, 0xf

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/16 v0, 0x10

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/16 v0, 0x11

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/16 v0, 0x12

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/16 v0, 0x13

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "##0.0E0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    sput-object v1, Ljxl/biff/XFRecord;->javaNumberFormats:[Ljava/text/NumberFormat;

    .line 334
    new-instance v0, Ljxl/biff/XFRecord$BiffType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/biff/XFRecord$BiffType;-><init>(Ljxl/biff/XFRecord$1;)V

    sput-object v0, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    .line 335
    new-instance v0, Ljxl/biff/XFRecord$BiffType;

    invoke-direct {v0, v1}, Ljxl/biff/XFRecord$BiffType;-><init>(Ljxl/biff/XFRecord$1;)V

    sput-object v0, Ljxl/biff/XFRecord;->biff7:Ljxl/biff/XFRecord$BiffType;

    .line 346
    new-instance v0, Ljxl/biff/XFRecord$XFType;

    invoke-direct {v0, v1}, Ljxl/biff/XFRecord$XFType;-><init>(Ljxl/biff/XFRecord$1;)V

    sput-object v0, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    .line 347
    new-instance v0, Ljxl/biff/XFRecord$XFType;

    invoke-direct {v0, v1}, Ljxl/biff/XFRecord$XFType;-><init>(Ljxl/biff/XFRecord$1;)V

    sput-object v0, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    return-void

    :array_170
    .array-data 4
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x2d
        0x2e
        0x2f
    .end array-data

    :array_18c
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x30
    .end array-data
.end method

.method public constructor <init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V
    .registers 6

    .line 425
    sget-object v0, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    const/4 v1, 0x1

    .line 428
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 429
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 430
    sget-object v2, Ljxl/format/Alignment;->GENERAL:Ljxl/format/Alignment;

    iput-object v2, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    .line 431
    sget-object v2, Ljxl/format/VerticalAlignment;->BOTTOM:Ljxl/format/VerticalAlignment;

    iput-object v2, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    .line 432
    sget-object v2, Ljxl/format/Orientation;->HORIZONTAL:Ljxl/format/Orientation;

    iput-object v2, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 433
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->wrap:Z

    .line 434
    sget-object v2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    .line 435
    sget-object v2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    .line 436
    sget-object v2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    .line 437
    sget-object v2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 438
    sget-object v2, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    .line 439
    sget-object v2, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    .line 440
    sget-object v2, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    .line 441
    sget-object v2, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 442
    sget-object v2, Ljxl/format/Pattern;->NONE:Ljxl/format/Pattern;

    iput-object v2, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 443
    sget-object v2, Ljxl/format/Colour;->DEFAULT_BACKGROUND:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 444
    iput v0, p0, Ljxl/biff/XFRecord;->indentation:I

    .line 445
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    const/16 v2, 0x7c

    .line 446
    iput-byte v2, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 450
    iput v0, p0, Ljxl/biff/XFRecord;->parentFormat:I

    const/4 v2, 0x0

    .line 451
    iput-object v2, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 453
    iput-object p1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    .line 454
    iput-object p2, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    .line 455
    sget-object p2, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    iput-object p2, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    .line 456
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->read:Z

    .line 457
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->copied:Z

    .line 458
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-eqz p1, :cond_62

    const/4 p1, 0x1

    goto :goto_63

    :cond_62
    const/4 p1, 0x0

    .line 460
    :goto_63
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    .line 461
    iget-object p1, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    if-eqz p1, :cond_6b

    const/4 v0, 0x1

    :cond_6b
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/XFRecord;)V
    .registers 4

    .line 472
    sget-object v0, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    .line 475
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->locked:Z

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 476
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->hidden:Z

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 477
    iget-object v1, p1, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    iput-object v1, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    .line 478
    iget-object v1, p1, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    iput-object v1, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    .line 479
    iget-object v1, p1, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    iput-object v1, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 480
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->wrap:Z

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->wrap:Z

    .line 481
    iget-object v1, p1, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    iput-object v1, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    .line 482
    iget-object v1, p1, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    iput-object v1, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    .line 483
    iget-object v1, p1, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    iput-object v1, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    .line 484
    iget-object v1, p1, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    iput-object v1, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 485
    iget-object v1, p1, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    .line 486
    iget-object v1, p1, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    .line 487
    iget-object v1, p1, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    .line 488
    iget-object v1, p1, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 489
    iget-object v1, p1, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    iput-object v1, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 490
    iget-object v1, p1, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    iput-object v1, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 491
    iget v1, p1, Ljxl/biff/XFRecord;->indentation:I

    iput v1, p0, Ljxl/biff/XFRecord;->indentation:I

    .line 492
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->shrinkToFit:Z

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    .line 493
    iget v1, p1, Ljxl/biff/XFRecord;->parentFormat:I

    iput v1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 494
    iget-object v1, p1, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 497
    iget-object v1, p1, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    iput-object v1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    .line 498
    iget-object v1, p1, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    iput-object v1, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    .line 500
    iget v1, p1, Ljxl/biff/XFRecord;->fontIndex:I

    iput v1, p0, Ljxl/biff/XFRecord;->fontIndex:I

    .line 501
    iget v1, p1, Ljxl/biff/XFRecord;->formatIndex:I

    iput v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    .line 503
    iget-boolean p1, p1, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    iput-boolean p1, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    .line 505
    sget-object p1, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    iput-object p1, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    .line 506
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->read:Z

    const/4 p1, 0x1

    .line 507
    iput-boolean p1, p0, Ljxl/biff/XFRecord;->copied:Z

    return-void
.end method

.method protected constructor <init>(Ljxl/format/CellFormat;)V
    .registers 6

    .line 519
    sget-object v0, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 521
    :goto_c
    invoke-static {v2}, Lcommon/Assert;->verify(Z)V

    .line 522
    instance-of v2, p1, Ljxl/biff/XFRecord;

    invoke-static {v2}, Lcommon/Assert;->verify(Z)V

    .line 523
    check-cast p1, Ljxl/biff/XFRecord;

    .line 525
    iget-boolean v2, p1, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v2, :cond_1d

    .line 527
    invoke-direct {p1}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 530
    :cond_1d
    iget-boolean v2, p1, Ljxl/biff/XFRecord;->locked:Z

    iput-boolean v2, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 531
    iget-boolean v2, p1, Ljxl/biff/XFRecord;->hidden:Z

    iput-boolean v2, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 532
    iget-object v2, p1, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    iput-object v2, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    .line 533
    iget-object v2, p1, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    iput-object v2, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    .line 534
    iget-object v2, p1, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    iput-object v2, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 535
    iget-boolean v2, p1, Ljxl/biff/XFRecord;->wrap:Z

    iput-boolean v2, p0, Ljxl/biff/XFRecord;->wrap:Z

    .line 536
    iget-object v2, p1, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    .line 537
    iget-object v2, p1, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    .line 538
    iget-object v2, p1, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    .line 539
    iget-object v2, p1, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 540
    iget-object v2, p1, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    .line 541
    iget-object v2, p1, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    .line 542
    iget-object v2, p1, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    .line 543
    iget-object v2, p1, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 544
    iget-object v2, p1, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    iput-object v2, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 545
    iget-object v2, p1, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    iput-object v2, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 546
    iget v2, p1, Ljxl/biff/XFRecord;->parentFormat:I

    iput v2, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 547
    iget v2, p1, Ljxl/biff/XFRecord;->indentation:I

    iput v2, p0, Ljxl/biff/XFRecord;->indentation:I

    .line 548
    iget-boolean v2, p1, Ljxl/biff/XFRecord;->shrinkToFit:Z

    iput-boolean v2, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    .line 549
    iget-object v2, p1, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 552
    new-instance v2, Ljxl/biff/FontRecord;

    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFont()Ljxl/format/Font;

    move-result-object v3

    invoke-direct {v2, v3}, Ljxl/biff/FontRecord;-><init>(Ljxl/format/Font;)V

    iput-object v2, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    .line 555
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFormat()Ljxl/format/Format;

    move-result-object v2

    if-nez v2, :cond_97

    .line 558
    iget-object v2, p1, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-interface {v2}, Ljxl/biff/DisplayFormat;->isBuiltIn()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 560
    iget-object p1, p1, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    iput-object p1, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    goto :goto_c5

    .line 565
    :cond_8b
    new-instance v2, Ljxl/biff/FormatRecord;

    iget-object p1, p1, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    check-cast p1, Ljxl/biff/FormatRecord;

    invoke-direct {v2, p1}, Ljxl/biff/FormatRecord;-><init>(Ljxl/biff/FormatRecord;)V

    iput-object v2, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    goto :goto_c5

    .line 568
    :cond_97
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFormat()Ljxl/format/Format;

    move-result-object v2

    instance-of v2, v2, Ljxl/biff/BuiltInFormat;

    if-eqz v2, :cond_ac

    .line 571
    iget-object v2, p1, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    check-cast v2, Ljxl/biff/BuiltInFormat;

    iput-object v2, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    .line 572
    iget-object p1, p1, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    check-cast p1, Ljxl/biff/BuiltInFormat;

    iput-object p1, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    goto :goto_c5

    .line 577
    :cond_ac
    iget-boolean v2, p1, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    invoke-static {v2}, Lcommon/Assert;->verify(Z)V

    .line 581
    iget-object v2, p1, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    instance-of v2, v2, Ljxl/biff/FormatRecord;

    invoke-static {v2}, Lcommon/Assert;->verify(Z)V

    .line 584
    new-instance v2, Ljxl/biff/FormatRecord;

    iget-object p1, p1, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    check-cast p1, Ljxl/biff/FormatRecord;

    invoke-direct {v2, p1}, Ljxl/biff/FormatRecord;-><init>(Ljxl/biff/FormatRecord;)V

    .line 588
    iput-object v2, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    .line 589
    iput-object v2, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    .line 592
    :goto_c5
    sget-object p1, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    iput-object p1, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    .line 595
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    .line 599
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->read:Z

    .line 602
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->copied:Z

    .line 605
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->initialized:Z

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/XFRecord$BiffType;)V
    .registers 10

    .line 357
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 359
    iput-object p3, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    .line 361
    invoke-virtual {p0}, Ljxl/biff/XFRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p3, 0x0

    .line 363
    aget-byte v0, p1, p3

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    invoke-static {v0, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/XFRecord;->fontIndex:I

    const/4 v0, 0x2

    .line 364
    aget-byte v2, p1, v0

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/XFRecord;->formatIndex:I

    .line 365
    iput-boolean p3, p0, Ljxl/biff/XFRecord;->date:Z

    .line 366
    iput-boolean p3, p0, Ljxl/biff/XFRecord;->number:Z

    const/4 v2, 0x0

    .line 370
    :goto_2a
    sget-object v3, Ljxl/biff/XFRecord;->dateFormats:[I

    array-length v4, v3

    if-ge v2, v4, :cond_44

    iget-boolean v4, p0, Ljxl/biff/XFRecord;->date:Z

    if-nez v4, :cond_44

    .line 372
    iget v4, p0, Ljxl/biff/XFRecord;->formatIndex:I

    aget v3, v3, v2

    if-ne v4, v3, :cond_41

    .line 374
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->date:Z

    .line 375
    sget-object v3, Ljxl/biff/XFRecord;->javaDateFormats:[Ljava/text/DateFormat;

    aget-object v3, v3, v2

    iput-object v3, p0, Ljxl/biff/XFRecord;->dateFormat:Ljava/text/DateFormat;

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_44
    const/4 v2, 0x0

    .line 380
    :goto_45
    sget-object v3, Ljxl/biff/XFRecord;->numberFormats:[I

    array-length v4, v3

    if-ge v2, v4, :cond_71

    iget-boolean v4, p0, Ljxl/biff/XFRecord;->number:Z

    if-nez v4, :cond_71

    .line 382
    iget v4, p0, Ljxl/biff/XFRecord;->formatIndex:I

    aget v3, v3, v2

    if-ne v4, v3, :cond_6e

    .line 384
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->number:Z

    .line 385
    sget-object v3, Ljxl/biff/XFRecord;->javaNumberFormats:[Ljava/text/NumberFormat;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DecimalFormat;

    .line 386
    new-instance v4, Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p2}, Ljxl/WorkbookSettings;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 388
    invoke-virtual {v3, v4}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 389
    iput-object v3, p0, Ljxl/biff/XFRecord;->numberFormat:Ljava/text/NumberFormat;

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_71
    const/4 p2, 0x4

    .line 395
    aget-byte v2, p1, p2

    const/4 v3, 0x5

    aget-byte p1, p1, v3

    invoke-static {v2, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    const v2, 0xfff0

    and-int/2addr v2, p1

    shr-int/lit8 p2, v2, 0x4

    .line 396
    iput p2, p0, Ljxl/biff/XFRecord;->parentFormat:I

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_8a

    .line 399
    sget-object p2, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    goto :goto_8c

    :cond_8a
    sget-object p2, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    :goto_8c
    iput-object p2, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_94

    const/4 p2, 0x1

    goto :goto_95

    :cond_94
    const/4 p2, 0x0

    .line 400
    :goto_95
    iput-boolean p2, p0, Ljxl/biff/XFRecord;->locked:Z

    and-int/2addr p1, v0

    if-eqz p1, :cond_9c

    const/4 p1, 0x1

    goto :goto_9d

    :cond_9c
    const/4 p1, 0x0

    .line 401
    :goto_9d
    iput-boolean p1, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 403
    iget-object p1, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    sget-object p2, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    if-ne p1, p2, :cond_b5

    iget p1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    const/16 p2, 0xfff

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_b5

    .line 407
    iput p3, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 408
    sget-object p1, Ljxl/biff/XFRecord;->logger:Lcommon/Logger;

    const-string p2, "Invalid parent format found - ignoring"

    invoke-virtual {p1, p2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 411
    :cond_b5
    iput-boolean p3, p0, Ljxl/biff/XFRecord;->initialized:Z

    .line 412
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->read:Z

    .line 413
    iput-boolean p3, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    .line 414
    iput-boolean p3, p0, Ljxl/biff/XFRecord;->copied:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeFormatInformation()V
    .registers 8

    .line 1349
    iget v0, p0, Ljxl/biff/XFRecord;->formatIndex:I

    sget-object v1, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    iget v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_18

    .line 1352
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    iget v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    goto :goto_22

    .line 1356
    :cond_18
    iget-object v0, p0, Ljxl/biff/XFRecord;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getFormatRecord(I)Ljxl/biff/FormatRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    .line 1360
    :goto_22
    iget-object v0, p0, Ljxl/biff/XFRecord;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0}, Ljxl/biff/FormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v0

    iget v1, p0, Ljxl/biff/XFRecord;->fontIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    .line 1363
    invoke-virtual {p0}, Ljxl/biff/XFRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    .line 1366
    aget-byte v2, v0, v1

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    const v3, 0xfff0

    and-int/2addr v3, v2

    shr-int/lit8 v1, v3, 0x4

    .line 1367
    iput v1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    and-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_51

    .line 1369
    sget-object v1, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    goto :goto_53

    :cond_51
    sget-object v1, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    :goto_53
    iput-object v1, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    and-int/lit8 v1, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5d

    const/4 v1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    .line 1370
    :goto_5e
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->locked:Z

    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_66

    const/4 v1, 0x1

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    .line 1371
    :goto_67
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 1373
    iget-object v1, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    sget-object v2, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    if-ne v1, v2, :cond_7f

    iget v1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    const/16 v2, 0xfff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7f

    .line 1377
    iput v3, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 1378
    sget-object v1, Ljxl/biff/XFRecord;->logger:Lcommon/Logger;

    const-string v2, "Invalid parent format found - ignoring"

    invoke-virtual {v1, v2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_7f
    const/4 v1, 0x6

    .line 1382
    aget-byte v1, v0, v1

    const/4 v2, 0x7

    aget-byte v5, v0, v2

    invoke-static {v1, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_8f

    .line 1387
    iput-boolean v4, p0, Ljxl/biff/XFRecord;->wrap:Z

    :cond_8f
    and-int/lit8 v5, v1, 0x7

    .line 1391
    invoke-static {v5}, Ljxl/format/Alignment;->getAlignment(I)Ljxl/format/Alignment;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v2

    .line 1394
    invoke-static {v5}, Ljxl/format/VerticalAlignment;->getAlignment(I)Ljxl/format/VerticalAlignment;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    const/16 v5, 0x8

    shr-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    .line 1397
    invoke-static {v1}, Ljxl/format/Orientation;->getOrientation(I)Ljxl/format/Orientation;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 1399
    aget-byte v1, v0, v5

    const/16 v5, 0x9

    aget-byte v6, v0, v5

    invoke-static {v1, v6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    and-int/lit8 v6, v1, 0xf

    .line 1402
    iput v6, p0, Ljxl/biff/XFRecord;->indentation:I

    const/16 v6, 0x10

    and-int/2addr v1, v6

    if-eqz v1, :cond_bf

    const/4 v3, 0x1

    .line 1405
    :cond_bf
    iput-boolean v3, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    .line 1408
    iget-object v1, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    sget-object v3, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    if-ne v1, v3, :cond_cb

    .line 1410
    aget-byte v1, v0, v5

    iput-byte v1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    :cond_cb
    const/16 v1, 0xa

    .line 1414
    aget-byte v3, v0, v1

    const/16 v5, 0xb

    aget-byte v5, v0, v5

    invoke-static {v3, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    and-int/lit8 v5, v3, 0x7

    .line 1416
    invoke-static {v5}, Ljxl/format/BorderLineStyle;->getStyle(I)Ljxl/format/BorderLineStyle;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v2

    .line 1417
    invoke-static {v5}, Ljxl/format/BorderLineStyle;->getStyle(I)Ljxl/format/BorderLineStyle;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    shr-int/lit8 v5, v3, 0x8

    and-int/2addr v5, v2

    .line 1418
    invoke-static {v5}, Ljxl/format/BorderLineStyle;->getStyle(I)Ljxl/format/BorderLineStyle;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    const/16 v5, 0xc

    shr-int/2addr v3, v5

    and-int/2addr v3, v2

    .line 1419
    invoke-static {v3}, Ljxl/format/BorderLineStyle;->getStyle(I)Ljxl/format/BorderLineStyle;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 1421
    aget-byte v3, v0, v5

    const/16 v5, 0xd

    aget-byte v5, v0, v5

    invoke-static {v3, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    and-int/lit8 v5, v3, 0x7f

    .line 1423
    invoke-static {v5}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    and-int/lit16 v3, v3, 0x3f80

    shr-int/2addr v3, v2

    .line 1424
    invoke-static {v3}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    const/16 v3, 0xe

    .line 1427
    aget-byte v3, v0, v3

    const/16 v5, 0xf

    aget-byte v5, v0, v5

    invoke-static {v3, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    and-int/lit8 v5, v3, 0x7f

    .line 1428
    invoke-static {v5}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    and-int/lit16 v3, v3, 0x3f80

    shr-int/lit8 v2, v3, 0x7

    .line 1429
    invoke-static {v2}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 1432
    iget-object v2, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    sget-object v3, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    if-ne v2, v3, :cond_173

    .line 1435
    aget-byte v2, v0, v6

    const/16 v3, 0x11

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    const v3, 0xfc00

    and-int/2addr v2, v3

    shr-int/lit8 v1, v2, 0xa

    .line 1438
    invoke-static {v1}, Ljxl/format/Pattern;->getPattern(I)Ljxl/format/Pattern;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    const/16 v1, 0x12

    .line 1441
    aget-byte v1, v0, v1

    const/16 v2, 0x13

    aget-byte v0, v0, v2

    invoke-static {v1, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    .line 1442
    invoke-static {v0}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 1444
    sget-object v1, Ljxl/format/Colour;->UNKNOWN:Ljxl/format/Colour;

    if-eq v0, v1, :cond_16e

    iget-object v0, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    sget-object v1, Ljxl/format/Colour;->DEFAULT_BACKGROUND1:Ljxl/format/Colour;

    if-ne v0, v1, :cond_17b

    .line 1447
    :cond_16e
    sget-object v0, Ljxl/format/Colour;->DEFAULT_BACKGROUND:Ljxl/format/Colour;

    iput-object v0, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    goto :goto_17b

    .line 1452
    :cond_173
    sget-object v0, Ljxl/format/Pattern;->NONE:Ljxl/format/Pattern;

    iput-object v0, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 1453
    sget-object v0, Ljxl/format/Colour;->DEFAULT_BACKGROUND:Ljxl/format/Colour;

    iput-object v0, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 1457
    :cond_17b
    :goto_17b
    iput-boolean v4, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1531
    :cond_4
    instance-of v1, p1, Ljxl/biff/XFRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1536
    :cond_a
    check-cast p1, Ljxl/biff/XFRecord;

    .line 1539
    iget-boolean v1, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v1, :cond_13

    .line 1541
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1544
    :cond_13
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v1, :cond_1a

    .line 1546
    invoke-direct {p1}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1549
    :cond_1a
    iget-object v1, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    iget-object v3, p1, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    if-ne v1, v3, :cond_ca

    iget v1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    iget v3, p1, Ljxl/biff/XFRecord;->parentFormat:I

    if-ne v1, v3, :cond_ca

    iget-boolean v1, p0, Ljxl/biff/XFRecord;->locked:Z

    iget-boolean v3, p1, Ljxl/biff/XFRecord;->locked:Z

    if-ne v1, v3, :cond_ca

    iget-boolean v1, p0, Ljxl/biff/XFRecord;->hidden:Z

    iget-boolean v3, p1, Ljxl/biff/XFRecord;->hidden:Z

    if-ne v1, v3, :cond_ca

    iget-byte v1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    iget-byte v3, p1, Ljxl/biff/XFRecord;->usedAttributes:B

    if-eq v1, v3, :cond_3a

    goto/16 :goto_ca

    .line 1558
    :cond_3a
    iget-object v1, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    iget-object v3, p1, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    if-ne v1, v3, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    iget-object v3, p1, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    if-ne v1, v3, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    iget-object v3, p1, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    if-ne v1, v3, :cond_ca

    iget-boolean v1, p0, Ljxl/biff/XFRecord;->wrap:Z

    iget-boolean v3, p1, Ljxl/biff/XFRecord;->wrap:Z

    if-ne v1, v3, :cond_ca

    iget-boolean v1, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    iget-boolean v3, p1, Ljxl/biff/XFRecord;->shrinkToFit:Z

    if-ne v1, v3, :cond_ca

    iget v1, p0, Ljxl/biff/XFRecord;->indentation:I

    iget v3, p1, Ljxl/biff/XFRecord;->indentation:I

    if-eq v1, v3, :cond_60

    goto/16 :goto_ca

    .line 1568
    :cond_60
    iget-object v1, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    iget-object v3, p1, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    if-ne v1, v3, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    iget-object v3, p1, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    if-ne v1, v3, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    iget-object v3, p1, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    if-ne v1, v3, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    iget-object v3, p1, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    if-eq v1, v3, :cond_79

    goto :goto_ca

    .line 1576
    :cond_79
    iget-object v1, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    iget-object v3, p1, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    if-ne v1, v3, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    iget-object v3, p1, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    if-ne v1, v3, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    iget-object v3, p1, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    if-ne v1, v3, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    iget-object v3, p1, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    if-eq v1, v3, :cond_92

    goto :goto_ca

    .line 1584
    :cond_92
    iget-object v1, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    iget-object v3, p1, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    if-ne v1, v3, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    iget-object v3, p1, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    if-eq v1, v3, :cond_9f

    goto :goto_ca

    .line 1590
    :cond_9f
    iget-boolean v1, p0, Ljxl/biff/XFRecord;->initialized:Z

    if-eqz v1, :cond_b4

    iget-boolean v1, p1, Ljxl/biff/XFRecord;->initialized:Z

    if-eqz v1, :cond_b4

    .line 1597
    iget v1, p0, Ljxl/biff/XFRecord;->fontIndex:I

    iget v3, p1, Ljxl/biff/XFRecord;->fontIndex:I

    if-ne v1, v3, :cond_b3

    iget v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    iget p1, p1, Ljxl/biff/XFRecord;->formatIndex:I

    if-eq v1, p1, :cond_c9

    :cond_b3
    return v2

    .line 1606
    :cond_b4
    iget-object v1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    iget-object v3, p1, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    invoke-virtual {v1, v3}, Ljxl/biff/FontRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    iget-object p1, p1, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c9

    goto :goto_ca

    :cond_c9
    return v0

    :cond_ca
    :goto_ca
    return v2
.end method

.method public getAlignment()Ljxl/format/Alignment;
    .registers 2

    .line 860
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 862
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 865
    :cond_7
    iget-object v0, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    return-object v0
.end method

.method public getBackgroundColour()Ljxl/format/Colour;
    .registers 2

    .line 967
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 969
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 972
    :cond_7
    iget-object v0, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    return-object v0
.end method

.method public getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;
    .registers 2

    .line 1103
    invoke-virtual {p0, p1}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object p1

    return-object p1
.end method

.method public getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;
    .registers 3

    .line 1159
    sget-object v0, Ljxl/format/Border;->NONE:Ljxl/format/Border;

    if-eq p1, v0, :cond_2f

    sget-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    if-ne p1, v0, :cond_9

    goto :goto_2f

    .line 1165
    :cond_9
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_10

    .line 1167
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1170
    :cond_10
    sget-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    if-ne p1, v0, :cond_17

    .line 1172
    iget-object p1, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    return-object p1

    .line 1174
    :cond_17
    sget-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    if-ne p1, v0, :cond_1e

    .line 1176
    iget-object p1, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    return-object p1

    .line 1178
    :cond_1e
    sget-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    if-ne p1, v0, :cond_25

    .line 1180
    iget-object p1, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    return-object p1

    .line 1182
    :cond_25
    sget-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    if-ne p1, v0, :cond_2c

    .line 1184
    iget-object p1, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    return-object p1

    .line 1187
    :cond_2c
    sget-object p1, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    return-object p1

    .line 1162
    :cond_2f
    :goto_2f
    sget-object p1, Ljxl/format/Colour;->PALETTE_BLACK:Ljxl/format/Colour;

    return-object p1
.end method

.method public getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;
    .registers 3

    .line 1117
    sget-object v0, Ljxl/format/Border;->NONE:Ljxl/format/Border;

    if-eq p1, v0, :cond_2f

    sget-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    if-ne p1, v0, :cond_9

    goto :goto_2f

    .line 1123
    :cond_9
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_10

    .line 1125
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1128
    :cond_10
    sget-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    if-ne p1, v0, :cond_17

    .line 1130
    iget-object p1, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    return-object p1

    .line 1132
    :cond_17
    sget-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    if-ne p1, v0, :cond_1e

    .line 1134
    iget-object p1, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    return-object p1

    .line 1136
    :cond_1e
    sget-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    if-ne p1, v0, :cond_25

    .line 1138
    iget-object p1, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    return-object p1

    .line 1140
    :cond_25
    sget-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    if-ne p1, v0, :cond_2c

    .line 1142
    iget-object p1, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    return-object p1

    .line 1145
    :cond_2c
    sget-object p1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    return-object p1

    .line 1120
    :cond_2f
    :goto_2f
    sget-object p1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    return-object p1
.end method

.method public getData()[B
    .registers 11

    .line 671
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 673
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    :cond_7
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 678
    iget v1, p0, Ljxl/biff/XFRecord;->fontIndex:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 679
    iget v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    const/4 v3, 0x2

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 684
    invoke-virtual {p0}, Ljxl/biff/XFRecord;->getLocked()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    .line 689
    :cond_1e
    invoke-virtual {p0}, Ljxl/biff/XFRecord;->getHidden()Z

    move-result v1

    if-eqz v1, :cond_26

    or-int/lit8 v2, v2, 0x2

    .line 694
    :cond_26
    iget-object v1, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    sget-object v3, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    if-ne v1, v3, :cond_33

    or-int/lit8 v2, v2, 0x4

    const v1, 0xffff

    .line 697
    iput v1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 700
    :cond_33
    iget v1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    const/4 v3, 0x4

    shl-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 702
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 704
    iget-object v1, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    invoke-virtual {v1}, Ljxl/format/Alignment;->getValue()I

    move-result v1

    .line 706
    iget-boolean v2, p0, Ljxl/biff/XFRecord;->wrap:Z

    if-eqz v2, :cond_47

    or-int/lit8 v1, v1, 0x8

    .line 711
    :cond_47
    iget-object v2, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    invoke-virtual {v2}, Ljxl/format/VerticalAlignment;->getValue()I

    move-result v2

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 713
    iget-object v2, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    invoke-virtual {v2}, Ljxl/format/Orientation;->getValue()I

    move-result v2

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/4 v2, 0x6

    .line 715
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x9

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    .line 720
    iget-object v5, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v5}, Ljxl/format/BorderLineStyle;->getValue()I

    move-result v5

    .line 721
    iget-object v6, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v6}, Ljxl/format/BorderLineStyle;->getValue()I

    move-result v6

    shl-int/lit8 v3, v6, 0x4

    or-int/2addr v3, v5

    .line 722
    iget-object v5, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v5}, Ljxl/format/BorderLineStyle;->getValue()I

    move-result v5

    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    .line 723
    iget-object v5, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v5}, Ljxl/format/BorderLineStyle;->getValue()I

    move-result v5

    const/16 v6, 0xc

    shl-int/2addr v5, v6

    or-int/2addr v3, v5

    const/16 v5, 0xa

    .line 725
    invoke-static {v3, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    if-eqz v3, :cond_bd

    .line 731
    iget-object v3, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    invoke-virtual {v3}, Ljxl/format/Colour;->getValue()I

    move-result v3

    int-to-byte v3, v3

    .line 732
    iget-object v7, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    invoke-virtual {v7}, Ljxl/format/Colour;->getValue()I

    move-result v7

    int-to-byte v7, v7

    .line 733
    iget-object v8, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    invoke-virtual {v8}, Ljxl/format/Colour;->getValue()I

    move-result v8

    int-to-byte v8, v8

    .line 734
    iget-object v9, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    invoke-virtual {v9}, Ljxl/format/Colour;->getValue()I

    move-result v9

    int-to-byte v9, v9

    and-int/lit8 v3, v3, 0x7f

    and-int/lit8 v7, v7, 0x7f

    shl-int/lit8 v7, v7, 0x7

    or-int/2addr v3, v7

    and-int/lit8 v7, v8, 0x7f

    and-int/lit8 v8, v9, 0x7f

    shl-int/lit8 v8, v8, 0x7

    or-int/2addr v7, v8

    .line 739
    invoke-static {v3, v0, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v3, 0xe

    .line 740
    invoke-static {v7, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 744
    :cond_bd
    iget-object v3, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    invoke-virtual {v3}, Ljxl/format/Pattern;->getValue()I

    move-result v3

    shl-int/2addr v3, v5

    .line 745
    invoke-static {v3, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 748
    iget-object v3, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    invoke-virtual {v3}, Ljxl/format/Colour;->getValue()I

    move-result v3

    or-int/lit16 v3, v3, 0x2000

    const/16 v5, 0x12

    .line 750
    invoke-static {v3, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 753
    iget v3, p0, Ljxl/biff/XFRecord;->options:I

    iget v5, p0, Ljxl/biff/XFRecord;->indentation:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v3, v5

    iput v3, p0, Ljxl/biff/XFRecord;->options:I

    .line 755
    iget-boolean v5, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    if-eqz v5, :cond_e5

    or-int/2addr v2, v3

    .line 757
    iput v2, p0, Ljxl/biff/XFRecord;->options:I

    goto :goto_e9

    :cond_e5
    and-int/lit16 v2, v3, 0xef

    .line 761
    iput v2, p0, Ljxl/biff/XFRecord;->options:I

    .line 764
    :goto_e9
    iget v2, p0, Ljxl/biff/XFRecord;->options:I

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 766
    iget-object v2, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    sget-object v3, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    if-ne v2, v3, :cond_f8

    .line 768
    iget-byte v2, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    aput-byte v2, v0, v1

    :cond_f8
    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .registers 2

    .line 615
    iget-object v0, p0, Ljxl/biff/XFRecord;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getFont()Ljxl/format/Font;
    .registers 2

    .line 1336
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 1338
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1340
    :cond_7
    iget-object v0, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    return-object v0
.end method

.method public getFontIndex()I
    .registers 2

    .line 1633
    iget v0, p0, Ljxl/biff/XFRecord;->fontIndex:I

    return v0
.end method

.method public getFormat()Ljxl/format/Format;
    .registers 2

    .line 1322
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 1324
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1326
    :cond_7
    iget-object v0, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    return-object v0
.end method

.method public getFormatRecord()I
    .registers 2

    .line 635
    iget v0, p0, Ljxl/biff/XFRecord;->formatIndex:I

    return v0
.end method

.method protected final getHidden()Z
    .registers 2

    .line 791
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->hidden:Z

    return v0
.end method

.method public getIndentation()I
    .registers 2

    .line 875
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 877
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 880
    :cond_7
    iget v0, p0, Ljxl/biff/XFRecord;->indentation:I

    return v0
.end method

.method protected final getLocked()Z
    .registers 2

    .line 781
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->locked:Z

    return v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .registers 2

    .line 625
    iget-object v0, p0, Ljxl/biff/XFRecord;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getOrientation()Ljxl/format/Orientation;
    .registers 2

    .line 936
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 938
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 941
    :cond_7
    iget-object v0, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    return-object v0
.end method

.method public getPattern()Ljxl/format/Pattern;
    .registers 2

    .line 982
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 984
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 987
    :cond_7
    iget-object v0, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    return-object v0
.end method

.method public getVerticalAlignment()Ljxl/format/VerticalAlignment;
    .registers 2

    .line 921
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 923
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 926
    :cond_7
    iget-object v0, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    return-object v0
.end method

.method public getWrap()Z
    .registers 2

    .line 1041
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 1043
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1046
    :cond_7
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->wrap:Z

    return v0
.end method

.method public final getXFIndex()I
    .registers 2

    .line 1290
    iget v0, p0, Ljxl/biff/XFRecord;->xfIndex:I

    return v0
.end method

.method public final hasBorders()Z
    .registers 3

    .line 1199
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 1201
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1204
    :cond_7
    iget-object v0, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    return v0

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1467
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 1469
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    :cond_7
    const/16 v0, 0x25

    const/16 v1, 0x275

    .line 1476
    iget-boolean v2, p0, Ljxl/biff/XFRecord;->hidden:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x25

    .line 1477
    iget-boolean v2, p0, Ljxl/biff/XFRecord;->locked:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x25

    .line 1478
    iget-boolean v2, p0, Ljxl/biff/XFRecord;->wrap:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x25

    .line 1479
    iget-boolean v2, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    add-int/2addr v1, v2

    .line 1482
    iget-object v2, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    sget-object v3, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    if-ne v2, v3, :cond_28

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1486
    :cond_28
    sget-object v3, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    if-ne v2, v3, :cond_30

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    :cond_30
    :goto_30
    mul-int v1, v1, v0

    .line 1491
    iget-object v2, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    invoke-virtual {v2}, Ljxl/format/Alignment;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1492
    iget-object v2, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    invoke-virtual {v2}, Ljxl/format/VerticalAlignment;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1493
    iget-object v2, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    invoke-virtual {v2}, Ljxl/format/Orientation;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 1495
    iget-object v2, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v2}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    .line 1496
    iget-object v2, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v2}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    .line 1497
    iget-object v2, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v2}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    .line 1498
    iget-object v2, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v2}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1500
    iget-object v2, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    invoke-virtual {v2}, Ljxl/format/Colour;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1501
    iget-object v2, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    invoke-virtual {v2}, Ljxl/format/Colour;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1502
    iget-object v2, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    invoke-virtual {v2}, Ljxl/format/Colour;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1503
    iget-object v2, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    invoke-virtual {v2}, Ljxl/format/Colour;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1504
    iget-object v2, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    invoke-virtual {v2}, Ljxl/format/Colour;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1505
    iget-object v2, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    invoke-virtual {v2}, Ljxl/format/Pattern;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1508
    iget-byte v2, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1509
    iget v2, p0, Ljxl/biff/XFRecord;->parentFormat:I

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1510
    iget v2, p0, Ljxl/biff/XFRecord;->fontIndex:I

    add-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 1511
    iget v2, p0, Ljxl/biff/XFRecord;->formatIndex:I

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    .line 1512
    iget v1, p0, Ljxl/biff/XFRecord;->indentation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final initialize(ILjxl/biff/FormattingRecords;Ljxl/biff/Fonts;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NumFormatRecordsException;
        }
    .end annotation

    .line 1228
    iput p1, p0, Ljxl/biff/XFRecord;->xfIndex:I

    .line 1229
    iput-object p2, p0, Ljxl/biff/XFRecord;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 1235
    iget-boolean p1, p0, Ljxl/biff/XFRecord;->read:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3b

    iget-boolean p1, p0, Ljxl/biff/XFRecord;->copied:Z

    if-eqz p1, :cond_e

    goto :goto_3b

    .line 1241
    :cond_e
    iget-object p1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    invoke-virtual {p1}, Ljxl/biff/FontRecord;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 1243
    iget-object p1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    invoke-virtual {p3, p1}, Ljxl/biff/Fonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 1246
    :cond_1b
    iget-object p1, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_28

    .line 1248
    iget-object p1, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-virtual {p2, p1}, Ljxl/biff/FormattingRecords;->addFormat(Ljxl/biff/DisplayFormat;)V

    .line 1251
    :cond_28
    iget-object p1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    invoke-virtual {p1}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result p1

    iput p1, p0, Ljxl/biff/XFRecord;->fontIndex:I

    .line 1252
    iget-object p1, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result p1

    iput p1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    .line 1254
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    return-void

    .line 1237
    :cond_3b
    :goto_3b
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    return-void
.end method

.method public isDate()Z
    .registers 2

    .line 645
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->date:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 1300
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    return v0
.end method

.method public isLocked()Z
    .registers 2

    .line 905
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 907
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 910
    :cond_7
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->locked:Z

    return v0
.end method

.method public isNumber()Z
    .registers 2

    .line 655
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->number:Z

    return v0
.end method

.method public final isRead()Z
    .registers 2

    .line 1312
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->read:Z

    return v0
.end method

.method public isShrinkToFit()Z
    .registers 2

    .line 890
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_7

    .line 892
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 895
    :cond_7
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    return v0
.end method

.method rationalize(Ljxl/biff/IndexMapping;)V
    .registers 4

    .line 1664
    iget v0, p0, Ljxl/biff/XFRecord;->xfIndex:I

    invoke-virtual {p1, v0}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v0

    iput v0, p0, Ljxl/biff/XFRecord;->xfIndex:I

    .line 1666
    iget-object v0, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    sget-object v1, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    if-ne v0, v1, :cond_16

    .line 1668
    iget v0, p0, Ljxl/biff/XFRecord;->parentFormat:I

    invoke-virtual {p1, v0}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result p1

    iput p1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    :cond_16
    return-void
.end method

.method public setFont(Ljxl/biff/FontRecord;)V
    .registers 2

    .line 1684
    iput-object p1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    return-void
.end method

.method setFontIndex(I)V
    .registers 2

    .line 1644
    iput p1, p0, Ljxl/biff/XFRecord;->fontIndex:I

    return-void
.end method

.method setFormatIndex(I)V
    .registers 2

    .line 1623
    iput p1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    return-void
.end method

.method protected setXFAlignment(Ljxl/format/Alignment;)V
    .registers 3

    .line 824
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 825
    iput-object p1, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    .line 826
    iget-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    return-void
.end method

.method protected setXFBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V
    .registers 4

    .line 954
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 955
    iput-object p1, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 956
    iput-object p2, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 957
    iget-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    iput-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    return-void
.end method

.method protected setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V
    .registers 5

    .line 1059
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 1061
    sget-object v0, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    if-ne p3, v0, :cond_d

    .line 1063
    sget-object p3, Ljxl/format/Colour;->PALETTE_BLACK:Ljxl/format/Colour;

    .line 1066
    :cond_d
    sget-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    if-ne p1, v0, :cond_16

    .line 1068
    iput-object p2, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    .line 1069
    iput-object p3, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    goto :goto_30

    .line 1071
    :cond_16
    sget-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    if-ne p1, v0, :cond_1f

    .line 1073
    iput-object p2, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    .line 1074
    iput-object p3, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    goto :goto_30

    .line 1076
    :cond_1f
    sget-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    if-ne p1, v0, :cond_28

    .line 1078
    iput-object p2, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    .line 1079
    iput-object p3, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    goto :goto_30

    .line 1081
    :cond_28
    sget-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    if-ne p1, v0, :cond_30

    .line 1083
    iput-object p2, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 1084
    iput-object p3, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 1087
    :cond_30
    :goto_30
    iget-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    return-void
.end method

.method protected final setXFCellOptions(I)V
    .registers 3

    .line 812
    iget v0, p0, Ljxl/biff/XFRecord;->options:I

    or-int/2addr p1, v0

    iput p1, p0, Ljxl/biff/XFRecord;->options:I

    return-void
.end method

.method protected setXFDetails(Ljxl/biff/XFRecord$XFType;I)V
    .registers 3

    .line 1654
    iput-object p1, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 1655
    iput p2, p0, Ljxl/biff/XFRecord;->parentFormat:I

    return-void
.end method

.method protected setXFIndentation(I)V
    .registers 3

    .line 836
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 837
    iput p1, p0, Ljxl/biff/XFRecord;->indentation:I

    .line 838
    iget-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    return-void
.end method

.method final setXFIndex(I)V
    .registers 2

    .line 1280
    iput p1, p0, Ljxl/biff/XFRecord;->xfIndex:I

    return-void
.end method

.method protected final setXFLocked(Z)V
    .registers 2

    .line 801
    iput-boolean p1, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 802
    iget-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    iput-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    return-void
.end method

.method protected setXFOrientation(Ljxl/format/Orientation;)V
    .registers 3

    .line 1015
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 1016
    iput-object p1, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 1017
    iget-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    return-void
.end method

.method protected setXFShrinkToFit(Z)V
    .registers 3

    .line 848
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 849
    iput-boolean p1, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    .line 850
    iget-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    return-void
.end method

.method protected setXFVerticalAlignment(Ljxl/format/VerticalAlignment;)V
    .registers 3

    .line 1000
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 1001
    iput-object p1, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    .line 1002
    iget-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    return-void
.end method

.method protected setXFWrap(Z)V
    .registers 3

    .line 1029
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 1030
    iput-boolean p1, p0, Ljxl/biff/XFRecord;->wrap:Z

    .line 1031
    iget-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    return-void
.end method

.method public final uninitialize()V
    .registers 3

    .line 1265
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1267
    sget-object v0, Ljxl/biff/XFRecord;->logger:Lcommon/Logger;

    const-string v1, "A default format has been initialized"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    .line 1269
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    return-void
.end method
