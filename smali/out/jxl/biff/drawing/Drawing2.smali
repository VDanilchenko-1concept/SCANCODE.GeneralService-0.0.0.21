.class public Ljxl/biff/drawing/Drawing2;
.super Ljava/lang/Object;
.source "Drawing2.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;


# static fields
.field static synthetic class$jxl$biff$drawing$Drawing:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private blipId:I

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private drawingNumber:I

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private height:D

.field private imageData:[B

.field private imageFile:Ljava/io/File;

.field private initialized:Z

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private referenceCount:I

.field private shapeId:I

.field private type:Ljxl/biff/drawing/ShapeType;

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    sget-object v0, Ljxl/biff/drawing/Drawing2;->class$jxl$biff$drawing$Drawing:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.biff.drawing.Drawing"

    invoke-static {v0}, Ljxl/biff/drawing/Drawing2;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Drawing2;->class$jxl$biff$drawing$Drawing:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Drawing2;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(DDDDLjava/io/File;)V
    .registers 11

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 198
    iput-object p9, p0, Ljxl/biff/drawing/Drawing2;->imageFile:Ljava/io/File;

    const/4 p9, 0x1

    .line 199
    iput-boolean p9, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 200
    sget-object v0, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 201
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->x:D

    .line 202
    iput-wide p3, p0, Ljxl/biff/drawing/Drawing2;->y:D

    .line 203
    iput-wide p5, p0, Ljxl/biff/drawing/Drawing2;->width:D

    .line 204
    iput-wide p7, p0, Ljxl/biff/drawing/Drawing2;->height:D

    .line 205
    iput p9, p0, Ljxl/biff/drawing/Drawing2;->referenceCount:I

    .line 206
    sget-object p1, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->type:Ljxl/biff/drawing/ShapeType;

    return-void
.end method

.method public constructor <init>(DDDD[B)V
    .registers 11

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 224
    iput-object p9, p0, Ljxl/biff/drawing/Drawing2;->imageData:[B

    const/4 p9, 0x1

    .line 225
    iput-boolean p9, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 226
    sget-object v0, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 227
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->x:D

    .line 228
    iput-wide p3, p0, Ljxl/biff/drawing/Drawing2;->y:D

    .line 229
    iput-wide p5, p0, Ljxl/biff/drawing/Drawing2;->width:D

    .line 230
    iput-wide p7, p0, Ljxl/biff/drawing/Drawing2;->height:D

    .line 231
    iput p9, p0, Ljxl/biff/drawing/Drawing2;->referenceCount:I

    .line 232
    sget-object p1, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->type:Ljxl/biff/drawing/ShapeType;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V
    .registers 6

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 172
    check-cast p1, Ljxl/biff/drawing/Drawing2;

    .line 173
    iget-object v1, p1, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 174
    iget-object v1, p1, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 175
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 176
    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 177
    iget-object v0, p1, Ljxl/biff/drawing/Drawing2;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 178
    iput-object p2, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 179
    iget p1, p1, Ljxl/biff/drawing/Drawing2;->drawingNumber:I

    iput p1, p0, Ljxl/biff/drawing/Drawing2;->drawingNumber:I

    .line 180
    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;)V
    .registers 5

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 150
    iput-object p3, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 151
    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 152
    iput-object p2, p0, Ljxl/biff/drawing/Drawing2;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 153
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 154
    sget-object p2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object p2, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 156
    iget-object p2, p0, Ljxl/biff/drawing/Drawing2;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object p3, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {p3}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 157
    iget-object p2, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    .line 159
    :cond_25
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 161
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 41
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

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .registers 2

    .line 530
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 532
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 535
    :cond_7
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private initialize()V
    .registers 2

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    return-void
.end method


# virtual methods
.method public final getBlipId()I
    .registers 2

    .line 300
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 302
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 305
    :cond_7
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->blipId:I

    return v0
.end method

.method public getColumn()D
    .registers 3

    .line 625
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing2;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .registers 2

    .line 353
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getHeight()D
    .registers 3

    .line 495
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 497
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 500
    :cond_7
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->height:D

    return-wide v0
.end method

.method public getImageBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 563
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 564
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v1, v2, :cond_42

    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_11

    goto :goto_42

    .line 569
    :cond_11
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 571
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->imageFile:Ljava/io/File;

    if-nez v1, :cond_2d

    .line 573
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->imageData:[B

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    :cond_27
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 574
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->imageData:[B

    return-object v0

    .line 577
    :cond_2d
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [B

    .line 578
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Ljxl/biff/drawing/Drawing2;->imageFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 579
    invoke-virtual {v3, v1, v0, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 580
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return-object v1

    .line 566
    :cond_42
    :goto_42
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing2;->getImageData()[B

    move-result-object v0

    return-object v0
.end method

.method public getImageData()[B
    .registers 4

    const/4 v0, 0x0

    .line 545
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 546
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v1, v2, :cond_10

    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 548
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_1b

    .line 550
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 553
    :cond_1b
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/Drawing2;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 684
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .registers 2

    .line 315
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .registers 2

    .line 270
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 272
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 275
    :cond_7
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .registers 2

    .line 363
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .registers 2

    .line 373
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->referenceCount:I

    return v0
.end method

.method public getRow()D
    .registers 3

    .line 635
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing2;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getShapeId()I
    .registers 2

    .line 285
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 287
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 290
    :cond_7
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .registers 3

    .line 325
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 327
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 330
    :cond_7
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 332
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljxl/biff/drawing/ShapeType;
    .registers 2

    .line 591
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->type:Ljxl/biff/drawing/ShapeType;

    return-object v0
.end method

.method public getWidth()D
    .registers 3

    .line 461
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 463
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 466
    :cond_7
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->width:D

    return-wide v0
.end method

.method public getX()D
    .registers 3

    .line 393
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 395
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 397
    :cond_7
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->x:D

    return-wide v0
.end method

.method public getY()D
    .registers 3

    .line 426
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 428
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 431
    :cond_7
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->y:D

    return-wide v0
.end method

.method public isFirst()Z
    .registers 2

    .line 647
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public removeRow(I)V
    .registers 6

    .line 669
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->y:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_a

    .line 671
    invoke-virtual {p0, v2, v3}, Ljxl/biff/drawing/Drawing2;->setY(D)V

    :cond_a
    return-void
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .registers 2

    .line 343
    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-void
.end method

.method public setHeight(D)V
    .registers 5

    .line 510
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_11

    .line 512
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_d

    .line 514
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 516
    :cond_d
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 519
    :cond_11
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->height:D

    return-void
.end method

.method public final setObjectId(III)V
    .registers 4

    .line 253
    iput p1, p0, Ljxl/biff/drawing/Drawing2;->objectId:I

    .line 254
    iput p2, p0, Ljxl/biff/drawing/Drawing2;->blipId:I

    .line 255
    iput p3, p0, Ljxl/biff/drawing/Drawing2;->shapeId:I

    .line 257
    iget-object p1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object p2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, p2, :cond_10

    .line 259
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    :cond_10
    return-void
.end method

.method public setReferenceCount(I)V
    .registers 2

    .line 383
    iput p1, p0, Ljxl/biff/drawing/Drawing2;->referenceCount:I

    return-void
.end method

.method public setWidth(D)V
    .registers 5

    .line 476
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_11

    .line 478
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_d

    .line 480
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 482
    :cond_d
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 485
    :cond_11
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->width:D

    return-void
.end method

.method public setX(D)V
    .registers 5

    .line 407
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_11

    .line 409
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_d

    .line 411
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 413
    :cond_d
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 416
    :cond_11
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->x:D

    return-void
.end method

.method public setY(D)V
    .registers 5

    .line 441
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_11

    .line 443
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_d

    .line 445
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 447
    :cond_d
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 450
    :cond_11
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->y:D

    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public writeTailRecords(Ljxl/write/biff/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
