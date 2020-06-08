.class public Lcom/honeywell/aidc/Signature;
.super Ljava/lang/Object;
.source "Signature.java"


# static fields
.field public static final GUIDANCE_MOVE_DOWN:Ljava/lang/String; = "moveDown"

.field public static final GUIDANCE_MOVE_LEFT:Ljava/lang/String; = "moveLeft"

.field public static final GUIDANCE_MOVE_OUT:Ljava/lang/String; = "moveOut"

.field public static final GUIDANCE_MOVE_RIGHT:Ljava/lang/String; = "moveRight"

.field public static final GUIDANCE_MOVE_UP:Ljava/lang/String; = "moveUp"

.field public static final GUIDANCE_SUCCESS:Ljava/lang/String; = "success"

.field public static final GUIDANCE_UNSUPPORTED_SYMBOLOGY:Ljava/lang/String; = "unsupportedSymbology"


# instance fields
.field private mGuidance:Ljava/lang/String;

.field private mImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/honeywell/aidc/Signature;->mImage:Landroid/graphics/Bitmap;

    .line 64
    iput-object p1, p0, Lcom/honeywell/aidc/Signature;->mGuidance:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGuidance()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/honeywell/aidc/Signature;->mGuidance:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/honeywell/aidc/Signature;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method
