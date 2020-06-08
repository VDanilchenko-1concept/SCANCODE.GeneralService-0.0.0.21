.class Ljxl/write/biff/NameRecord;
.super Ljxl/biff/WritableRecordData;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/NameRecord$NameRange;
    }
.end annotation


# static fields
.field private static final areaReference:I = 0x3b

.field private static final cellReference:I = 0x3a

.field private static final subExpression:I = 0x29

.field private static final union:I = 0x10


# instance fields
.field private builtInName:Ljxl/biff/BuiltInName;

.field private data:[B

.field private index:I

.field private name:Ljava/lang/String;

.field private ranges:[Ljxl/write/biff/NameRecord$NameRange;

.field private sheetRef:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .registers 20

    move-object v7, p0

    move v0, p2

    .line 180
    sget-object v1, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v8, 0x0

    .line 58
    iput v8, v7, Ljxl/write/biff/NameRecord;->sheetRef:I

    move-object v1, p1

    .line 182
    iput-object v1, v7, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    .line 183
    iput v0, v7, Ljxl/write/biff/NameRecord;->index:I

    const/4 v1, 0x1

    if-eqz p8, :cond_14

    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    add-int/2addr v0, v1

    .line 184
    :goto_15
    iput v0, v7, Ljxl/write/biff/NameRecord;->sheetRef:I

    new-array v9, v1, [Ljxl/write/biff/NameRecord$NameRange;

    .line 187
    iput-object v9, v7, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 188
    new-instance v10, Ljxl/write/biff/NameRecord$NameRange;

    move-object v0, v10

    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Ljxl/write/biff/NameRecord$NameRange;-><init>(Ljxl/write/biff/NameRecord;IIIII)V

    aput-object v10, v9, v8

    return-void
.end method

.method constructor <init>(Ljxl/biff/BuiltInName;IIIIIIZ)V
    .registers 20

    move-object v7, p0

    move v0, p2

    .line 216
    sget-object v1, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v8, 0x0

    .line 58
    iput v8, v7, Ljxl/write/biff/NameRecord;->sheetRef:I

    move-object v1, p1

    .line 218
    iput-object v1, v7, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    .line 219
    iput v0, v7, Ljxl/write/biff/NameRecord;->index:I

    const/4 v1, 0x1

    if-eqz p8, :cond_14

    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    add-int/2addr v0, v1

    .line 220
    :goto_15
    iput v0, v7, Ljxl/write/biff/NameRecord;->sheetRef:I

    new-array v9, v1, [Ljxl/write/biff/NameRecord$NameRange;

    .line 223
    iput-object v9, v7, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 224
    new-instance v10, Ljxl/write/biff/NameRecord$NameRange;

    move-object v0, v10

    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Ljxl/write/biff/NameRecord$NameRange;-><init>(Ljxl/write/biff/NameRecord;IIIII)V

    aput-object v10, v9, v8

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/NameRecord;I)V
    .registers 6

    .line 143
    sget-object v0, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 145
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getData()[B

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/NameRecord;->data:[B

    .line 146
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getSheetRef()I

    move-result v1

    iput v1, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 148
    iput p2, p0, Ljxl/write/biff/NameRecord;->index:I

    .line 151
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object p1

    .line 152
    array-length p2, p1

    new-array p2, p2, [Ljxl/write/biff/NameRecord$NameRange;

    iput-object p2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 153
    :goto_25
    iget-object p2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v1, p2

    if-ge v0, v1, :cond_36

    .line 155
    new-instance v1, Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, p1, v0

    invoke-direct {v1, p0, v2}, Ljxl/write/biff/NameRecord$NameRange;-><init>(Ljxl/write/biff/NameRecord;Ljxl/read/biff/NameRecord$NameRange;)V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_36
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 6

    .line 238
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    if-eqz v0, :cond_5

    return-object v0

    .line 250
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_12

    :cond_c
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_12
    add-int/lit8 v0, v0, 0x1a

    .line 251
    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    .line 256
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    const/16 v0, 0x20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 260
    :goto_21
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-static {v0, v3, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 263
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 266
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/4 v4, 0x3

    if-eqz v3, :cond_33

    .line 268
    aput-byte v1, v0, v4

    goto :goto_3c

    .line 272
    :cond_33
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    :goto_3c
    const/16 v0, 0xb

    .line 276
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 279
    iget v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    iget-object v3, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/4 v4, 0x6

    invoke-static {v0, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 280
    iget v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    iget-object v3, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/16 v4, 0x8

    invoke-static {v0, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 286
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/16 v3, 0xf

    if-eqz v0, :cond_65

    .line 288
    iget-object v4, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-virtual {v0}, Ljxl/biff/BuiltInName;->getValue()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    goto :goto_6c

    .line 292
    :cond_65
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    iget-object v4, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-static {v0, v4, v3}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;[BI)V

    .line 296
    :goto_6c
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    if-eqz v0, :cond_73

    const/16 v0, 0x10

    goto :goto_7a

    :cond_73
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    .line 299
    :goto_7a
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/16 v4, 0x3b

    aput-byte v4, v3, v0

    .line 302
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord$NameRange;->getData()[B

    move-result-object v3

    .line 303
    iget-object v4, p0, Ljxl/write/biff/NameRecord;->data:[B

    add-int/2addr v0, v1

    array-length v1, v3

    invoke-static {v3, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 325
    iget v0, p0, Ljxl/write/biff/NameRecord;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRanges()[Ljxl/write/biff/NameRecord$NameRange;
    .registers 2

    .line 356
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    return-object v0
.end method

.method public getSheetRef()I
    .registers 2

    .line 336
    iget v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    return v0
.end method

.method public setSheetRef(I)V
    .registers 4

    .line 346
    iput p1, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 347
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-void
.end method
