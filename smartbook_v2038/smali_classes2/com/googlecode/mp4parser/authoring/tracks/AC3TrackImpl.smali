.class public Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AC3TrackImpl.java"


# static fields
.field static bitRateAndFrameSizeTable:[[[[I


# instance fields
.field private final dataSource:Lcom/googlecode/mp4parser/DataSource;

.field private duration:[J

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    const/4 v0, 0x4

    .line 273
    new-array v0, v0, [I

    const/4 v1, 0x3

    const/4 v2, 0x2

    aput v2, v0, v1

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v0, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[I

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    .line 277
    aget-object v4, v0, v3

    aget-object v5, v4, v3

    aget-object v6, v5, v3

    const/16 v7, 0x20

    aput v7, v6, v3

    .line 278
    aget-object v4, v4, v1

    aget-object v8, v4, v3

    aput v7, v8, v3

    const/16 v9, 0x40

    .line 279
    aput v9, v6, v1

    .line 280
    aput v9, v8, v1

    .line 281
    aget-object v6, v0, v1

    aget-object v8, v6, v3

    aget-object v10, v8, v3

    const/16 v11, 0x28

    aput v11, v10, v3

    .line 282
    aget-object v6, v6, v1

    aget-object v12, v6, v3

    aput v11, v12, v3

    const/16 v13, 0x50

    .line 283
    aput v13, v10, v1

    .line 284
    aput v13, v12, v1

    .line 285
    aget-object v10, v0, v2

    aget-object v12, v10, v3

    aget-object v14, v12, v3

    const/16 v15, 0x30

    aput v15, v14, v3

    .line 286
    aget-object v10, v10, v1

    aget-object v16, v10, v3

    aput v15, v16, v3

    const/16 v17, 0x60

    .line 287
    aput v17, v14, v1

    .line 288
    aput v17, v16, v1

    const/4 v14, 0x3

    .line 289
    aget-object v14, v0, v14

    aget-object v16, v14, v3

    aget-object v18, v16, v3

    const/16 v19, 0x38

    aput v19, v18, v3

    .line 290
    aget-object v14, v14, v1

    aget-object v20, v14, v3

    aput v19, v20, v3

    const/16 v21, 0x70

    .line 291
    aput v21, v18, v1

    .line 292
    aput v21, v20, v1

    const/16 v18, 0x4

    .line 293
    aget-object v18, v0, v18

    aget-object v20, v18, v3

    aget-object v22, v20, v3

    aput v9, v22, v3

    .line 294
    aget-object v18, v18, v1

    aget-object v23, v18, v3

    aput v9, v23, v3

    const/16 v24, 0x80

    .line 295
    aput v24, v22, v1

    .line 296
    aput v24, v23, v1

    const/16 v22, 0x5

    .line 297
    aget-object v22, v0, v22

    aget-object v23, v22, v3

    aget-object v25, v23, v3

    aput v13, v25, v3

    .line 298
    aget-object v22, v22, v1

    aget-object v26, v22, v3

    aput v13, v26, v3

    const/16 v27, 0xa0

    .line 299
    aput v27, v25, v1

    .line 300
    aput v27, v26, v1

    const/16 v25, 0x6

    .line 301
    aget-object v25, v0, v25

    aget-object v26, v25, v3

    aget-object v28, v26, v3

    aput v17, v28, v3

    .line 302
    aget-object v25, v25, v1

    aget-object v29, v25, v3

    aput v17, v29, v3

    const/16 v30, 0xc0

    .line 303
    aput v30, v28, v1

    .line 304
    aput v30, v29, v1

    const/16 v28, 0x7

    .line 305
    aget-object v28, v0, v28

    aget-object v29, v28, v3

    aget-object v31, v29, v3

    aput v21, v31, v3

    .line 306
    aget-object v28, v28, v1

    aget-object v32, v28, v3

    aput v21, v32, v3

    const/16 v33, 0xe0

    .line 307
    aput v33, v31, v1

    .line 308
    aput v33, v32, v1

    const/16 v31, 0x8

    .line 309
    aget-object v31, v0, v31

    aget-object v32, v31, v3

    aget-object v34, v32, v3

    aput v24, v34, v3

    .line 310
    aget-object v31, v31, v1

    aget-object v35, v31, v3

    aput v24, v35, v3

    const/16 v36, 0x100

    .line 311
    aput v36, v34, v1

    .line 312
    aput v36, v35, v1

    const/16 v34, 0x9

    .line 313
    aget-object v34, v0, v34

    aget-object v35, v34, v3

    aget-object v37, v35, v3

    aput v27, v37, v3

    .line 314
    aget-object v34, v34, v1

    aget-object v38, v34, v3

    aput v27, v38, v3

    const/16 v39, 0x140

    .line 315
    aput v39, v37, v1

    .line 316
    aput v39, v38, v1

    const/16 v37, 0xa

    .line 317
    aget-object v37, v0, v37

    aget-object v38, v37, v3

    aget-object v40, v38, v3

    aput v30, v40, v3

    .line 318
    aget-object v37, v37, v1

    aget-object v41, v37, v3

    aput v30, v41, v3

    const/16 v42, 0x180

    .line 319
    aput v42, v40, v1

    .line 320
    aput v42, v41, v1

    const/16 v40, 0xb

    .line 321
    aget-object v40, v0, v40

    aget-object v41, v40, v3

    aget-object v43, v41, v3

    aput v33, v43, v3

    .line 322
    aget-object v40, v40, v1

    aget-object v44, v40, v3

    aput v33, v44, v3

    const/16 v45, 0x1c0

    .line 323
    aput v45, v43, v1

    .line 324
    aput v45, v44, v1

    const/16 v43, 0xc

    .line 325
    aget-object v43, v0, v43

    aget-object v44, v43, v3

    aget-object v46, v44, v3

    aput v36, v46, v3

    .line 326
    aget-object v43, v43, v1

    aget-object v47, v43, v3

    aput v36, v47, v3

    const/16 v48, 0x200

    .line 327
    aput v48, v46, v1

    .line 328
    aput v48, v47, v1

    const/16 v46, 0xd

    .line 329
    aget-object v46, v0, v46

    aget-object v47, v46, v3

    aget-object v49, v47, v3

    aput v39, v49, v3

    .line 330
    aget-object v46, v46, v1

    aget-object v50, v46, v3

    aput v39, v50, v3

    const/16 v51, 0x280

    .line 331
    aput v51, v49, v1

    .line 332
    aput v51, v50, v1

    const/16 v49, 0xe

    .line 333
    aget-object v49, v0, v49

    aget-object v50, v49, v3

    aget-object v52, v50, v3

    aput v42, v52, v3

    .line 334
    aget-object v49, v49, v1

    aget-object v53, v49, v3

    aput v42, v53, v3

    const/16 v54, 0x300

    .line 335
    aput v54, v52, v1

    const/16 v52, 0x300

    .line 336
    aput v52, v53, v1

    const/16 v52, 0xf

    .line 337
    aget-object v52, v0, v52

    aget-object v53, v52, v3

    aget-object v54, v53, v3

    aput v45, v54, v3

    .line 338
    aget-object v52, v52, v1

    aget-object v55, v52, v3

    aput v45, v55, v3

    const/16 v56, 0x380

    .line 339
    aput v56, v54, v1

    const/16 v54, 0x380

    .line 340
    aput v54, v55, v1

    const/16 v54, 0x10

    .line 341
    aget-object v54, v0, v54

    aget-object v55, v54, v3

    aget-object v56, v55, v3

    aput v48, v56, v3

    .line 342
    aget-object v54, v54, v1

    aget-object v57, v54, v3

    aput v48, v57, v3

    const/16 v58, 0x400

    .line 343
    aput v58, v56, v1

    const/16 v56, 0x400

    .line 344
    aput v56, v57, v1

    const/16 v56, 0x11

    .line 345
    aget-object v56, v0, v56

    aget-object v57, v56, v3

    aget-object v58, v57, v3

    const/16 v59, 0x240

    aput v59, v58, v3

    .line 346
    aget-object v56, v56, v1

    aget-object v60, v56, v3

    aput v59, v60, v3

    const/16 v61, 0x480

    .line 347
    aput v61, v58, v1

    const/16 v58, 0x480

    .line 348
    aput v58, v60, v1

    const/16 v58, 0x12

    .line 349
    aget-object v0, v0, v58

    aget-object v58, v0, v3

    aget-object v60, v58, v3

    aput v51, v60, v3

    .line 350
    aget-object v0, v0, v1

    aget-object v61, v0, v3

    aput v51, v61, v3

    const/16 v62, 0x500

    .line 351
    aput v62, v60, v1

    const/16 v60, 0x500

    .line 352
    aput v60, v61, v1

    .line 355
    aget-object v60, v5, v1

    aput v7, v60, v3

    .line 356
    aget-object v61, v4, v1

    aput v7, v61, v3

    const/16 v62, 0x45

    .line 357
    aput v62, v60, v1

    const/16 v60, 0x46

    .line 358
    aput v60, v61, v1

    .line 359
    aget-object v60, v8, v1

    aput v11, v60, v3

    .line 360
    aget-object v61, v6, v1

    aput v11, v61, v3

    const/16 v62, 0x57

    .line 361
    aput v62, v60, v1

    const/16 v60, 0x58

    .line 362
    aput v60, v61, v1

    .line 363
    aget-object v60, v12, v1

    aput v15, v60, v3

    .line 364
    aget-object v61, v10, v1

    aput v15, v61, v3

    const/16 v62, 0x68

    .line 365
    aput v62, v60, v1

    const/16 v60, 0x69

    .line 366
    aput v60, v61, v1

    .line 367
    aget-object v60, v16, v1

    aput v19, v60, v3

    .line 368
    aget-object v61, v14, v1

    aput v19, v61, v3

    const/16 v62, 0x79

    .line 369
    aput v62, v60, v1

    const/16 v60, 0x7a

    .line 370
    aput v60, v61, v1

    .line 371
    aget-object v60, v20, v1

    aput v9, v60, v3

    .line 372
    aget-object v61, v18, v1

    aput v9, v61, v3

    const/16 v62, 0x8b

    .line 373
    aput v62, v60, v1

    const/16 v60, 0x8c

    .line 374
    aput v60, v61, v1

    .line 375
    aget-object v60, v23, v1

    aput v13, v60, v3

    .line 376
    aget-object v61, v22, v1

    aput v13, v61, v3

    const/16 v62, 0xae

    .line 377
    aput v62, v60, v1

    const/16 v60, 0xaf

    .line 378
    aput v60, v61, v1

    .line 379
    aget-object v60, v26, v1

    aput v17, v60, v3

    .line 380
    aget-object v61, v25, v1

    aput v17, v61, v3

    const/16 v62, 0xd0

    .line 381
    aput v62, v60, v1

    const/16 v60, 0xd1

    .line 382
    aput v60, v61, v1

    .line 383
    aget-object v60, v29, v1

    aput v21, v60, v3

    .line 384
    aget-object v61, v28, v1

    aput v21, v61, v3

    const/16 v62, 0xf3

    .line 385
    aput v62, v60, v1

    const/16 v60, 0xf4

    .line 386
    aput v60, v61, v1

    .line 387
    aget-object v60, v32, v1

    aput v24, v60, v3

    .line 388
    aget-object v61, v31, v1

    aput v24, v61, v3

    const/16 v62, 0x116

    .line 389
    aput v62, v60, v1

    const/16 v60, 0x117

    .line 390
    aput v60, v61, v1

    .line 391
    aget-object v60, v35, v1

    aput v27, v60, v3

    .line 392
    aget-object v61, v34, v1

    aput v27, v61, v3

    const/16 v62, 0x15c

    .line 393
    aput v62, v60, v1

    const/16 v60, 0x15d

    .line 394
    aput v60, v61, v1

    .line 395
    aget-object v60, v38, v1

    aput v30, v60, v3

    .line 396
    aget-object v61, v37, v1

    aput v30, v61, v3

    const/16 v62, 0x1a1

    .line 397
    aput v62, v60, v1

    const/16 v60, 0x1a2

    .line 398
    aput v60, v61, v1

    .line 399
    aget-object v60, v41, v1

    aput v33, v60, v3

    .line 400
    aget-object v61, v40, v1

    aput v33, v61, v3

    const/16 v62, 0x1e7

    .line 401
    aput v62, v60, v1

    const/16 v60, 0x1e8

    .line 402
    aput v60, v61, v1

    .line 403
    aget-object v60, v44, v1

    aput v36, v60, v3

    .line 404
    aget-object v61, v43, v1

    aput v36, v61, v3

    const/16 v62, 0x22d

    .line 405
    aput v62, v60, v1

    const/16 v60, 0x22e

    .line 406
    aput v60, v61, v1

    .line 407
    aget-object v60, v47, v1

    aput v39, v60, v3

    .line 408
    aget-object v61, v46, v1

    aput v39, v61, v3

    const/16 v62, 0x2b8

    .line 409
    aput v62, v60, v1

    const/16 v60, 0x2b9

    .line 410
    aput v60, v61, v1

    .line 411
    aget-object v60, v50, v1

    aput v42, v60, v3

    .line 412
    aget-object v61, v49, v1

    aput v42, v61, v3

    const/16 v62, 0x343

    .line 413
    aput v62, v60, v1

    const/16 v60, 0x344

    .line 414
    aput v60, v61, v1

    .line 415
    aget-object v60, v53, v1

    aput v45, v60, v3

    .line 416
    aget-object v61, v52, v1

    aput v45, v61, v3

    const/16 v62, 0x3cf

    .line 417
    aput v62, v60, v1

    const/16 v60, 0x3cf

    .line 418
    aput v60, v61, v1

    .line 419
    aget-object v60, v55, v1

    aput v48, v60, v3

    .line 420
    aget-object v61, v54, v1

    aput v48, v61, v3

    const/16 v62, 0x45a

    .line 421
    aput v62, v60, v1

    const/16 v60, 0x45b

    .line 422
    aput v60, v61, v1

    .line 423
    aget-object v60, v57, v1

    aput v59, v60, v3

    .line 424
    aget-object v61, v56, v1

    aput v59, v61, v3

    const/16 v62, 0x4e5

    .line 425
    aput v62, v60, v1

    const/16 v60, 0x4e6

    .line 426
    aput v60, v61, v1

    .line 427
    aget-object v60, v58, v1

    aput v51, v60, v3

    .line 428
    aget-object v61, v0, v1

    aput v51, v61, v3

    const/16 v62, 0x571

    .line 429
    aput v62, v60, v1

    const/16 v60, 0x572

    .line 430
    aput v60, v61, v1

    .line 433
    aget-object v5, v5, v2

    aput v7, v5, v3

    .line 434
    aget-object v4, v4, v2

    aput v7, v4, v3

    .line 435
    aput v17, v5, v1

    .line 436
    aput v17, v4, v1

    .line 437
    aget-object v4, v8, v2

    aput v11, v4, v3

    .line 438
    aget-object v5, v6, v2

    aput v11, v5, v3

    const/16 v6, 0x78

    .line 439
    aput v6, v4, v1

    const/16 v4, 0x78

    .line 440
    aput v4, v5, v1

    .line 441
    aget-object v4, v12, v2

    aput v15, v4, v3

    .line 442
    aget-object v5, v10, v2

    aput v15, v5, v3

    const/16 v6, 0x90

    .line 443
    aput v6, v4, v1

    const/16 v4, 0x90

    .line 444
    aput v4, v5, v1

    .line 445
    aget-object v4, v16, v2

    aput v19, v4, v3

    .line 446
    aget-object v5, v14, v2

    aput v19, v5, v3

    const/16 v6, 0xa8

    .line 447
    aput v6, v4, v1

    const/16 v4, 0xa8

    .line 448
    aput v4, v5, v1

    .line 449
    aget-object v4, v20, v2

    aput v9, v4, v3

    .line 450
    aget-object v5, v18, v2

    aput v9, v5, v3

    .line 451
    aput v30, v4, v1

    .line 452
    aput v30, v5, v1

    .line 453
    aget-object v4, v23, v2

    aput v13, v4, v3

    .line 454
    aget-object v5, v22, v2

    aput v13, v5, v3

    const/16 v6, 0xf0

    .line 455
    aput v6, v4, v1

    const/16 v4, 0xf0

    .line 456
    aput v4, v5, v1

    .line 457
    aget-object v4, v26, v2

    aput v17, v4, v3

    .line 458
    aget-object v5, v25, v2

    aput v17, v5, v3

    const/16 v6, 0x120

    .line 459
    aput v6, v4, v1

    const/16 v4, 0x120

    .line 460
    aput v4, v5, v1

    .line 461
    aget-object v4, v29, v2

    aput v21, v4, v3

    .line 462
    aget-object v5, v28, v2

    aput v21, v5, v3

    const/16 v6, 0x150

    .line 463
    aput v6, v4, v1

    const/16 v4, 0x150

    .line 464
    aput v4, v5, v1

    .line 465
    aget-object v4, v32, v2

    aput v24, v4, v3

    .line 466
    aget-object v5, v31, v2

    aput v24, v5, v3

    .line 467
    aput v42, v4, v1

    .line 468
    aput v42, v5, v1

    .line 469
    aget-object v4, v35, v2

    aput v27, v4, v3

    .line 470
    aget-object v5, v34, v2

    aput v27, v5, v3

    const/16 v6, 0x1e0

    .line 471
    aput v6, v4, v1

    const/16 v4, 0x1e0

    .line 472
    aput v4, v5, v1

    .line 473
    aget-object v4, v38, v2

    aput v30, v4, v3

    .line 474
    aget-object v5, v37, v2

    aput v30, v5, v3

    .line 475
    aput v59, v4, v1

    .line 476
    aput v59, v5, v1

    .line 477
    aget-object v4, v41, v2

    aput v33, v4, v3

    .line 478
    aget-object v5, v40, v2

    aput v33, v5, v3

    const/16 v6, 0x2a0

    .line 479
    aput v6, v4, v1

    const/16 v4, 0x2a0

    .line 480
    aput v4, v5, v1

    .line 481
    aget-object v4, v44, v2

    aput v36, v4, v3

    .line 482
    aget-object v5, v43, v2

    aput v36, v5, v3

    const/16 v6, 0x300

    .line 483
    aput v6, v4, v1

    const/16 v4, 0x300

    .line 484
    aput v4, v5, v1

    .line 485
    aget-object v4, v47, v2

    aput v39, v4, v3

    .line 486
    aget-object v5, v46, v2

    aput v39, v5, v3

    const/16 v6, 0x3c0

    .line 487
    aput v6, v4, v1

    const/16 v4, 0x3c0

    .line 488
    aput v4, v5, v1

    .line 489
    aget-object v4, v50, v2

    aput v42, v4, v3

    .line 490
    aget-object v5, v49, v2

    aput v42, v5, v3

    const/16 v6, 0x480

    .line 491
    aput v6, v4, v1

    const/16 v4, 0x480

    .line 492
    aput v4, v5, v1

    .line 493
    aget-object v4, v53, v2

    aput v45, v4, v3

    .line 494
    aget-object v5, v52, v2

    aput v45, v5, v3

    const/16 v6, 0x540

    .line 495
    aput v6, v4, v1

    const/16 v4, 0x540

    .line 496
    aput v4, v5, v1

    .line 497
    aget-object v4, v55, v2

    aput v48, v4, v3

    .line 498
    aget-object v5, v54, v2

    aput v48, v5, v3

    const/16 v6, 0x600

    .line 499
    aput v6, v4, v1

    const/16 v4, 0x600

    .line 500
    aput v4, v5, v1

    .line 501
    aget-object v4, v57, v2

    aput v59, v4, v3

    .line 502
    aget-object v5, v56, v2

    aput v59, v5, v3

    const/16 v6, 0x6c0

    .line 503
    aput v6, v4, v1

    const/16 v4, 0x6c0

    .line 504
    aput v4, v5, v1

    .line 505
    aget-object v4, v58, v2

    aput v51, v4, v3

    .line 506
    aget-object v0, v0, v2

    aput v51, v0, v3

    const/16 v2, 0x780

    .line 507
    aput v2, v4, v1

    .line 508
    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const-string v0, "eng"

    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 35
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    .line 36
    invoke-virtual {v0, p2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    .line 41
    new-instance p1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 42
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->createAudioSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 45
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 46
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 47
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v0, p2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 49
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setVolume(F)V

    return-void
.end method

.method private createAudioSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/Sample;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Sample;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x10

    .line 99
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    const/16 v4, 0xb77

    if-ne v3, v4, :cond_a

    .line 103
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x2

    .line 104
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    if-ne v4, v3, :cond_0

    const/16 v6, 0x7d00

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported Sample Rate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v6, 0xac44

    goto :goto_0

    :cond_2
    const v6, 0xbb80

    :goto_0
    const/4 v7, 0x6

    .line 124
    invoke-virtual {v2, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v8

    const/4 v9, 0x5

    .line 127
    invoke-virtual {v2, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v9

    const/4 v10, 0x3

    .line 128
    invoke-virtual {v2, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v11

    .line 129
    invoke-virtual {v2, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-eq v9, v0, :cond_9

    const/16 v12, 0x9

    if-ne v9, v12, :cond_3

    .line 136
    div-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_3
    const/16 v12, 0x8

    if-eq v9, v12, :cond_5

    if-ne v9, v7, :cond_4

    goto :goto_1

    .line 138
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported bsid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    if-eq v10, v5, :cond_6

    and-int/lit8 v7, v10, 0x1

    if-ne v7, v5, :cond_6

    .line 142
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :cond_6
    and-int/lit8 v7, v10, 0x4

    if-eqz v7, :cond_7

    .line 146
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :cond_7
    if-ne v10, v3, :cond_8

    .line 150
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :cond_8
    packed-switch v10, :pswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported acmod"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    .line 195
    new-instance v7, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v12, "ac-3"

    invoke-direct {v7, v12}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v7, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    int-to-long v12, v6

    .line 197
    invoke-virtual {v7, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 198
    invoke-virtual {v7, v5}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    .line 199
    invoke-virtual {v7, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 201
    new-instance v0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;-><init>()V

    .line 202
    invoke-virtual {v0, v10}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setAcmod(I)V

    shr-int/lit8 v3, v8, 0x1

    .line 203
    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBitRateCode(I)V

    .line 204
    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsid(I)V

    .line 205
    invoke-virtual {v0, v11}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsmod(I)V

    .line 206
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setFscod(I)V

    .line 207
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setLfeon(I)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setReserved(I)V

    .line 210
    invoke-virtual {v7, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v7

    .line 132
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You cannot read E-AC-3 track with AC3TrackImpl.class - user EC3TrackImpl.class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream doesn\'t seem to be AC3"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getFrameSize(II)I
    .locals 4

    ushr-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    and-int/2addr p1, v1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    if-gt p1, v1, :cond_0

    const/4 v2, 0x2

    if-gt p2, v2, :cond_0

    .line 220
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v3, v0

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    aget p1, p1, v1

    mul-int/lit8 p1, p1, 0x2

    return p1

    .line 218
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot determine framesize of current sample"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readSamples()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 255
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v2, v0}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    .line 267
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->duration:[J

    const-wide/16 v2, 0x600

    .line 268
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    return-object v1

    :cond_0
    const/4 v2, 0x4

    .line 259
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    .line 260
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    shr-int/lit8 v2, v2, 0x6

    .line 261
    invoke-direct {p0, v3, v2}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->getFrameSize(II)I

    move-result v2

    .line 262
    new-instance v10, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v3}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v3

    const-wide/16 v11, 0x5

    sub-long v5, v3, v11

    int-to-long v13, v2

    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    move-object v3, v10

    move-object v4, p0

    move-wide v7, v13

    invoke-direct/range {v3 .. v9}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;JJLcom/googlecode/mp4parser/DataSource;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v3

    sub-long/2addr v3, v11

    add-long/2addr v3, v13

    invoke-interface {v2, v3, v4}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    .line 264
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->close()V

    return-void
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "soun"

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public declared-synchronized getSampleDurations()[J
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->duration:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
