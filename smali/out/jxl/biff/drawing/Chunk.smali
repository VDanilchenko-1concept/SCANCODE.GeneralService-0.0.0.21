.class Ljxl/biff/drawing/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field private data:[B

.field private length:I

.field private pos:I

.field private type:Ljxl/biff/drawing/ChunkType;


# direct methods
.method public constructor <init>(IILjxl/biff/drawing/ChunkType;[B)V
    .registers 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Ljxl/biff/drawing/Chunk;->pos:I

    .line 32
    iput p2, p0, Ljxl/biff/drawing/Chunk;->length:I

    .line 33
    iput-object p3, p0, Ljxl/biff/drawing/Chunk;->type:Ljxl/biff/drawing/ChunkType;

    .line 34
    new-array p3, p2, [B

    iput-object p3, p0, Ljxl/biff/drawing/Chunk;->data:[B

    const/4 v0, 0x0

    .line 35
    invoke-static {p4, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 41
    iget-object v0, p0, Ljxl/biff/drawing/Chunk;->data:[B

    return-object v0
.end method
