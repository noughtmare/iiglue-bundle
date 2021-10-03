; ModuleID = 'src/microhttpd/response.c'
source_filename = "src/microhttpd/response.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MHD_Response = type { %struct.MHD_HTTP_Header*, i8*, i8*, i64 (i8*, i64, i8*, i64)*, void (i8*)*, void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)*, i8*, %union.pthread_mutex_t, i64, i64, i64, i64, i64, i32, i32, i32, i8, %struct.iovec*, i32 }
%struct.MHD_HTTP_Header = type { %struct.MHD_HTTP_Header*, i8*, i64, i8*, i64, i32 }
%struct.MHD_Connection = type { %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Daemon*, %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header*, %struct.MHD_Response*, %struct.MemoryPool*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, %struct.sockaddr*, %struct._MHD_thread_handle_ID_, i64, i64, i64, i64, i64, i64, i64, i64, %struct.MHD_iovec_track_, i32, i64, i32, i64, i64, i32, i8, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i64, i64, i64 (%struct.MHD_Connection*, i8*, i64)*, %struct.MHD_UpgradeResponseHandle*, i8, i32, i8 }
%struct.MHD_Daemon = type { i32 (i8*, %struct.MHD_Connection*, i8*, i8*, i8*, i8*, i64*, i8**)*, i8*, i32, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, i32, %struct.MHD_Connection*, %struct.MHD_Connection*, i32, i8, %struct.MHD_UpgradeResponseHandle*, %struct.MHD_UpgradeResponseHandle*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, i32 (i8*, %struct.sockaddr*, i32)*, i8*, void (i8*, %struct.MHD_Connection*, i8**, i32)*, i8*, void (i8*, %struct.MHD_Connection*, i8**, i32)*, i8*, i8* (i8*, i8*, %struct.MHD_Connection*)*, i8*, i64 (i8*, %struct.MHD_Connection*, i8*)*, i8*, i16, void (i8*, i8*, %struct.__va_list_tag*)*, i8*, %struct.MHD_Daemon*, i32, %struct.MHD_Daemon*, i8*, i32, i64, i64, i64, i32, %struct._MHD_thread_handle_ID_, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, i32, i32, %struct.MHD_itc_, i8, i8, i8, i8, i8, i8, i32, i64, i32, i32, i8, i8*, %struct.MHD_NonceNc*, %union.pthread_mutex_t, i64, i32, i32, i32, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.MHD_itc_ = type { i32 }
%struct.MHD_NonceNc = type { i64, i64, [129 x i8] }
%struct.MemoryPool = type opaque
%struct.sockaddr = type { i16, [14 x i8] }
%struct._MHD_thread_handle_ID_ = type { i64, i64 }
%struct.MHD_iovec_track_ = type { %struct.iovec*, i64, i64 }
%struct.MHD_UpgradeResponseHandle = type { %struct.MHD_Connection*, i8, i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.iovec = type { i8*, i64 }
%union.pthread_mutexattr_t = type { i32 }
%struct.MHD_IoVec = type { i8*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@mhd_panic = external local_unnamed_addr global void (i8*, i8*, i32, i8*)*, align 8
@mhd_panic_cls = external local_unnamed_addr global i8*, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"src/microhttpd/response.c\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to destroy mutex.\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Upgrade\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"Invalid response for upgrade: application failed to set the 'Upgrade' header!\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Failed to lock mutex.\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Failed to unlock mutex.\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define i32 @MHD_add_response_header(%struct.MHD_Response*, i8*, i8*) local_unnamed_addr #0 !dbg !167 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !499, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %1, metadata !500, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8* %2, metadata !501, metadata !DIExpression()), !dbg !504
  %4 = tail call i32 @MHD_str_equal_caseless_(i8* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #7, !dbg !505
  %5 = icmp eq i32 %4, 0, !dbg !505
  br i1 %5, label %12, label %6, !dbg !507

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @MHD_str_equal_caseless_(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !508
  %8 = icmp eq i32 %7, 0, !dbg !508
  br i1 %8, label %9, label %12, !dbg !509

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @MHD_str_equal_caseless_(i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !510
  %11 = icmp eq i32 %10, 0, !dbg !510
  br i1 %11, label %22, label %12, !dbg !511

; <label>:12:                                     ; preds = %9, %6, %3
  %13 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 15, !dbg !512
  %14 = load i32, i32* %13, align 8, !dbg !512, !tbaa !514
  %15 = and i32 %14, 4, !dbg !522
  %16 = icmp eq i32 %15, 0, !dbg !523
  br i1 %16, label %17, label %20, !dbg !524

; <label>:17:                                     ; preds = %12
  %18 = tail call i32 @MHD_str_equal_caseless_(i8* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !525
  %19 = icmp eq i32 %18, 0, !dbg !525
  br i1 %19, label %20, label %22, !dbg !526

; <label>:20:                                     ; preds = %17, %12
  %21 = tail call fastcc i32 @add_response_entry(%struct.MHD_Response* nonnull %0, i32 1, i8* %1, i8* %2), !dbg !527
  br label %22, !dbg !528

; <label>:22:                                     ; preds = %17, %9, %20
  %23 = phi i32 [ %21, %20 ], [ 0, %9 ], [ 0, %17 ], !dbg !529
  ret i32 %23, !dbg !531
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @MHD_str_equal_caseless_(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_response_entry(%struct.MHD_Response*, i32, i8* readonly, i8* readonly) unnamed_addr #0 !dbg !532 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %1, metadata !537, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %2, metadata !538, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i8* %3, metadata !539, metadata !DIExpression()), !dbg !544
  %5 = icmp eq %struct.MHD_Response* %0, null, !dbg !545
  %6 = icmp eq i8* %2, null, !dbg !547
  %7 = or i1 %5, %6, !dbg !548
  %8 = icmp eq i8* %3, null, !dbg !549
  %9 = or i1 %7, %8, !dbg !548
  br i1 %9, label %62, label %10, !dbg !548

; <label>:10:                                     ; preds = %4
  %11 = load i8, i8* %2, align 1, !dbg !550, !tbaa !551
  %12 = icmp eq i8 %11, 0, !dbg !552
  br i1 %12, label %62, label %13, !dbg !553

; <label>:13:                                     ; preds = %10
  %14 = load i8, i8* %3, align 1, !dbg !554, !tbaa !551
  %15 = icmp eq i8 %14, 0, !dbg !555
  br i1 %15, label %62, label %16, !dbg !556

; <label>:16:                                     ; preds = %13
  %17 = tail call i8* @strchr(i8* nonnull %2, i32 9) #8, !dbg !557
  %18 = icmp eq i8* %17, null, !dbg !558
  br i1 %18, label %19, label %62, !dbg !559

; <label>:19:                                     ; preds = %16
  %20 = tail call i8* @strchr(i8* nonnull %2, i32 13) #8, !dbg !560
  %21 = icmp eq i8* %20, null, !dbg !561
  br i1 %21, label %22, label %62, !dbg !562

; <label>:22:                                     ; preds = %19
  %23 = tail call i8* @strchr(i8* nonnull %2, i32 10) #8, !dbg !563
  %24 = icmp eq i8* %23, null, !dbg !564
  br i1 %24, label %25, label %62, !dbg !565

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @strchr(i8* nonnull %3, i32 9) #8, !dbg !566
  %27 = icmp eq i8* %26, null, !dbg !567
  br i1 %27, label %28, label %62, !dbg !568

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @strchr(i8* nonnull %3, i32 13) #8, !dbg !569
  %30 = icmp eq i8* %29, null, !dbg !570
  br i1 %30, label %31, label %62, !dbg !571

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @strchr(i8* nonnull %3, i32 10) #8, !dbg !572
  %33 = icmp eq i8* %32, null, !dbg !573
  br i1 %33, label %34, label %62, !dbg !574

; <label>:34:                                     ; preds = %31
  %35 = tail call noalias i8* @malloc(i64 48) #7, !dbg !575
  call void @llvm.dbg.value(metadata i8* %35, metadata !540, metadata !DIExpression()), !dbg !577
  %36 = icmp eq i8* %35, null, !dbg !578
  br i1 %36, label %62, label %37, !dbg !579

; <label>:37:                                     ; preds = %34
  %38 = tail call noalias i8* @strdup(i8* nonnull %2) #7, !dbg !580
  %39 = getelementptr inbounds i8, i8* %35, i64 8, !dbg !582
  %40 = bitcast i8* %39 to i8**, !dbg !582
  store i8* %38, i8** %40, align 8, !dbg !583, !tbaa !584
  %41 = icmp eq i8* %38, null, !dbg !586
  br i1 %41, label %42, label %43, !dbg !587

; <label>:42:                                     ; preds = %37
  tail call void @free(i8* nonnull %35) #7, !dbg !588
  br label %62, !dbg !590

; <label>:43:                                     ; preds = %37
  %44 = tail call i64 @strlen(i8* nonnull %2) #8, !dbg !591
  %45 = getelementptr inbounds i8, i8* %35, i64 16, !dbg !592
  %46 = bitcast i8* %45 to i64*, !dbg !592
  store i64 %44, i64* %46, align 8, !dbg !593, !tbaa !594
  %47 = tail call noalias i8* @strdup(i8* nonnull %3) #7, !dbg !595
  %48 = getelementptr inbounds i8, i8* %35, i64 24, !dbg !597
  %49 = bitcast i8* %48 to i8**, !dbg !597
  store i8* %47, i8** %49, align 8, !dbg !598, !tbaa !599
  %50 = icmp eq i8* %47, null, !dbg !600
  br i1 %50, label %51, label %52, !dbg !601

; <label>:51:                                     ; preds = %43
  tail call void @free(i8* nonnull %38) #7, !dbg !602
  tail call void @free(i8* nonnull %35) #7, !dbg !604
  br label %62, !dbg !605

; <label>:52:                                     ; preds = %43
  %53 = tail call i64 @strlen(i8* nonnull %3) #8, !dbg !606
  %54 = getelementptr inbounds i8, i8* %35, i64 32, !dbg !607
  %55 = bitcast i8* %54 to i64*, !dbg !607
  store i64 %53, i64* %55, align 8, !dbg !608, !tbaa !609
  %56 = getelementptr inbounds i8, i8* %35, i64 40, !dbg !610
  %57 = bitcast i8* %56 to i32*, !dbg !610
  store i32 %1, i32* %57, align 8, !dbg !611, !tbaa !612
  %58 = bitcast %struct.MHD_Response* %0 to i64*, !dbg !613
  %59 = load i64, i64* %58, align 8, !dbg !613, !tbaa !614
  %60 = bitcast i8* %35 to i64*, !dbg !615
  store i64 %59, i64* %60, align 8, !dbg !615, !tbaa !616
  %61 = bitcast %struct.MHD_Response* %0 to i8**, !dbg !617
  store i8* %35, i8** %61, align 8, !dbg !617, !tbaa !614
  br label %62, !dbg !618

; <label>:62:                                     ; preds = %34, %4, %10, %13, %16, %19, %22, %25, %28, %31, %52, %51, %42
  %63 = phi i32 [ 0, %42 ], [ 0, %51 ], [ 1, %52 ], [ 0, %31 ], [ 0, %28 ], [ 0, %25 ], [ 0, %22 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %10 ], [ 0, %4 ], [ 0, %34 ], !dbg !619
  ret i32 %63, !dbg !620
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @MHD_add_response_footer(%struct.MHD_Response*, i8* readonly, i8* readonly) local_unnamed_addr #0 !dbg !621 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !623, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i8* %1, metadata !624, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i8* %2, metadata !625, metadata !DIExpression()), !dbg !628
  %4 = tail call fastcc i32 @add_response_entry(%struct.MHD_Response* %0, i32 16, i8* %1, i8* %2), !dbg !629
  ret i32 %4, !dbg !630
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @MHD_del_response_header(%struct.MHD_Response* nocapture, i8* readonly, i8* readonly) local_unnamed_addr #0 !dbg !631 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !633, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i8* %1, metadata !634, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8* %2, metadata !635, metadata !DIExpression()), !dbg !642
  %4 = icmp eq i8* %1, null, !dbg !643
  %5 = icmp eq i8* %2, null, !dbg !645
  %6 = or i1 %4, %5, !dbg !646
  br i1 %6, label %47, label %7, !dbg !646

; <label>:7:                                      ; preds = %3
  %8 = tail call i64 @strlen(i8* nonnull %1) #8, !dbg !647
  call void @llvm.dbg.value(metadata i64 %8, metadata !638, metadata !DIExpression()), !dbg !648
  %9 = tail call i64 @strlen(i8* nonnull %2) #8, !dbg !649
  call void @llvm.dbg.value(metadata i64 %9, metadata !639, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* null, metadata !637, metadata !DIExpression()), !dbg !651
  %10 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 0, !dbg !652
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %10, metadata !636, metadata !DIExpression(DW_OP_deref)), !dbg !653
  %11 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %10, align 8, !dbg !654, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %11, metadata !636, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* null, metadata !637, metadata !DIExpression()), !dbg !651
  %12 = icmp eq %struct.MHD_HTTP_Header* %11, null, !dbg !657
  br i1 %12, label %47, label %13, !dbg !658

; <label>:13:                                     ; preds = %7, %43
  %14 = phi %struct.MHD_HTTP_Header* [ %45, %43 ], [ %11, %7 ]
  %15 = phi %struct.MHD_HTTP_Header* [ %14, %43 ], [ null, %7 ]
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %15, metadata !637, metadata !DIExpression()), !dbg !651
  %16 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 2, !dbg !659
  %17 = load i64, i64* %16, align 8, !dbg !659, !tbaa !594
  %18 = icmp eq i64 %8, %17, !dbg !661
  br i1 %18, label %19, label %43, !dbg !662

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 4, !dbg !663
  %21 = load i64, i64* %20, align 8, !dbg !663, !tbaa !609
  %22 = icmp eq i64 %9, %21, !dbg !664
  br i1 %22, label %23, label %43, !dbg !665

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 1, !dbg !666
  %25 = load i8*, i8** %24, align 8, !dbg !666, !tbaa !584
  %26 = tail call i32 @memcmp(i8* %1, i8* %25, i64 %8) #8, !dbg !667
  %27 = icmp eq i32 %26, 0, !dbg !668
  br i1 %27, label %28, label %43, !dbg !669

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 3, !dbg !670
  %30 = load i8*, i8** %29, align 8, !dbg !670, !tbaa !599
  %31 = tail call i32 @memcmp(i8* %2, i8* %30, i64 %9) #8, !dbg !671
  %32 = icmp eq i32 %31, 0, !dbg !672
  br i1 %32, label %33, label %43, !dbg !673

; <label>:33:                                     ; preds = %28
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %15, metadata !637, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %15, metadata !637, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %15, metadata !637, metadata !DIExpression()), !dbg !651
  %34 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 3, !dbg !670
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %15, metadata !637, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %15, metadata !637, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %15, metadata !637, metadata !DIExpression()), !dbg !651
  tail call void @free(i8* %25) #7, !dbg !674
  %35 = load i8*, i8** %34, align 8, !dbg !676, !tbaa !599
  tail call void @free(i8* %35) #7, !dbg !677
  %36 = icmp eq %struct.MHD_HTTP_Header* %15, null, !dbg !678
  %37 = bitcast %struct.MHD_HTTP_Header* %14 to i64*, !dbg !680
  %38 = load i64, i64* %37, align 8, !dbg !680, !tbaa !616
  %39 = bitcast %struct.MHD_HTTP_Header* %15 to i64*, !dbg !681
  %40 = bitcast %struct.MHD_Response* %0 to i64*, !dbg !682
  %41 = select i1 %36, i64* %40, i64* %39, !dbg !683
  store i64 %38, i64* %41, align 8, !dbg !680, !tbaa !656
  %42 = bitcast %struct.MHD_HTTP_Header* %14 to i8*, !dbg !684
  tail call void @free(i8* %42) #7, !dbg !685
  br label %47, !dbg !686

; <label>:43:                                     ; preds = %28, %23, %19, %13
  %44 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 0, !dbg !687
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %44, metadata !636, metadata !DIExpression(DW_OP_deref)), !dbg !653
  %45 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %44, align 8, !dbg !654, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %45, metadata !636, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %14, metadata !637, metadata !DIExpression()), !dbg !651
  %46 = icmp eq %struct.MHD_HTTP_Header* %45, null, !dbg !657
  br i1 %46, label %47, label %13, !dbg !658, !llvm.loop !688

; <label>:47:                                     ; preds = %43, %7, %3, %33
  %48 = phi i32 [ 1, %33 ], [ 0, %3 ], [ 0, %7 ], [ 0, %43 ], !dbg !690
  ret i32 %48, !dbg !691
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @free(i8* nocapture) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @MHD_get_response_headers(%struct.MHD_Response* nocapture readonly, i32 (i8*, i32, i8*, i8*)*, i8*) local_unnamed_addr #0 !dbg !692 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !700, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*, i8*)* %1, metadata !701, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i8* %2, metadata !702, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 0, metadata !703, metadata !DIExpression()), !dbg !708
  %4 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 0, !dbg !709
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %4, metadata !704, metadata !DIExpression(DW_OP_deref)), !dbg !711
  %5 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %4, align 8, !dbg !712, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %5, metadata !704, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i32 0, metadata !703, metadata !DIExpression()), !dbg !708
  %6 = icmp eq %struct.MHD_HTTP_Header* %5, null, !dbg !714
  br i1 %6, label %26, label %7, !dbg !715

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i32 (i8*, i32, i8*, i8*)* %1, null
  br label %9, !dbg !715

; <label>:9:                                      ; preds = %7, %22
  %10 = phi %struct.MHD_HTTP_Header* [ %5, %7 ], [ %24, %22 ]
  %11 = phi i32 [ 0, %7 ], [ %12, %22 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !703, metadata !DIExpression()), !dbg !708
  %12 = add i32 %11, 1, !dbg !716
  br i1 %8, label %22, label %13, !dbg !718

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %10, i64 0, i32 5, !dbg !720
  %15 = load i32, i32* %14, align 8, !dbg !720, !tbaa !612
  %16 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %10, i64 0, i32 1, !dbg !721
  %17 = load i8*, i8** %16, align 8, !dbg !721, !tbaa !584
  %18 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %10, i64 0, i32 3, !dbg !722
  %19 = load i8*, i8** %18, align 8, !dbg !722, !tbaa !599
  %20 = tail call i32 %1(i8* %2, i32 %15, i8* %17, i8* %19) #7, !dbg !723
  %21 = icmp eq i32 %20, 0, !dbg !724
  br i1 %21, label %26, label %22, !dbg !725

; <label>:22:                                     ; preds = %9, %13
  %23 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %10, i64 0, i32 0, !dbg !726
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %23, metadata !704, metadata !DIExpression(DW_OP_deref)), !dbg !711
  %24 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %23, align 8, !dbg !712, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %24, metadata !704, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i32 %12, metadata !703, metadata !DIExpression()), !dbg !708
  %25 = icmp eq %struct.MHD_HTTP_Header* %24, null, !dbg !714
  br i1 %25, label %26, label %9, !dbg !715, !llvm.loop !727

; <label>:26:                                     ; preds = %13, %22, %3
  %27 = phi i32 [ 0, %3 ], [ %12, %22 ], [ %12, %13 ], !dbg !729
  call void @llvm.dbg.value(metadata i32 %27, metadata !703, metadata !DIExpression()), !dbg !708
  ret i32 %27, !dbg !730
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @MHD_get_response_header(%struct.MHD_Response* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !731 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !735, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* %1, metadata !736, metadata !DIExpression()), !dbg !740
  %3 = icmp eq i8* %1, null, !dbg !741
  br i1 %3, label %25, label %4, !dbg !743

; <label>:4:                                      ; preds = %2
  %5 = tail call i64 @strlen(i8* nonnull %1) #8, !dbg !744
  call void @llvm.dbg.value(metadata i64 %5, metadata !738, metadata !DIExpression()), !dbg !745
  %6 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 0, !dbg !746
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %6, metadata !737, metadata !DIExpression(DW_OP_deref)), !dbg !748
  %7 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %6, align 8, !dbg !749, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %7, metadata !737, metadata !DIExpression()), !dbg !748
  %8 = icmp eq %struct.MHD_HTTP_Header* %7, null, !dbg !751
  br i1 %8, label %25, label %9, !dbg !752

; <label>:9:                                      ; preds = %4, %21
  %10 = phi %struct.MHD_HTTP_Header* [ %23, %21 ], [ %7, %4 ]
  %11 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %10, i64 0, i32 2, !dbg !753
  %12 = load i64, i64* %11, align 8, !dbg !753, !tbaa !594
  %13 = icmp eq i64 %12, %5, !dbg !756
  br i1 %13, label %14, label %21, !dbg !757

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %10, i64 0, i32 1, !dbg !758
  %16 = load i8*, i8** %15, align 8, !dbg !758, !tbaa !584
  %17 = tail call zeroext i1 @MHD_str_equal_caseless_bin_n_(i8* %16, i8* nonnull %1, i64 %5) #7, !dbg !759
  br i1 %17, label %18, label %21, !dbg !760

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %10, i64 0, i32 3, !dbg !761
  %20 = load i8*, i8** %19, align 8, !dbg !761, !tbaa !599
  br label %25, !dbg !762

; <label>:21:                                     ; preds = %9, %14
  %22 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %10, i64 0, i32 0, !dbg !763
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %22, metadata !737, metadata !DIExpression(DW_OP_deref)), !dbg !748
  %23 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %22, align 8, !dbg !749, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %23, metadata !737, metadata !DIExpression()), !dbg !748
  %24 = icmp eq %struct.MHD_HTTP_Header* %23, null, !dbg !751
  br i1 %24, label %25, label %9, !dbg !752, !llvm.loop !764

; <label>:25:                                     ; preds = %21, %4, %2, %18
  %26 = phi i8* [ %20, %18 ], [ null, %2 ], [ null, %4 ], [ null, %21 ], !dbg !766
  ret i8* %26, !dbg !767
}

declare zeroext i1 @MHD_str_equal_caseless_bin_n_(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @MHD_check_response_header_token_ci(%struct.MHD_Response* nocapture readonly, i8*, i64, i8*, i64) local_unnamed_addr #0 !dbg !768 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !774, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i8* %1, metadata !775, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 %2, metadata !776, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i8* %3, metadata !777, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i64 %4, metadata !778, metadata !DIExpression()), !dbg !784
  %6 = icmp eq i8* %1, null, !dbg !785
  br i1 %6, label %40, label %7, !dbg !787

; <label>:7:                                      ; preds = %5
  %8 = load i8, i8* %1, align 1, !dbg !788, !tbaa !551
  %9 = icmp eq i8 %8, 0, !dbg !789
  %10 = icmp eq i8* %3, null, !dbg !790
  %11 = or i1 %10, %9, !dbg !791
  br i1 %11, label %40, label %12, !dbg !791

; <label>:12:                                     ; preds = %7
  %13 = load i8, i8* %3, align 1, !dbg !792, !tbaa !551
  %14 = icmp eq i8 %13, 0, !dbg !793
  br i1 %14, label %40, label %15, !dbg !794

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 0, !dbg !795
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %16, metadata !779, metadata !DIExpression(DW_OP_deref)), !dbg !797
  %17 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %16, align 8, !dbg !798, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %17, metadata !779, metadata !DIExpression()), !dbg !797
  %18 = icmp eq %struct.MHD_HTTP_Header* %17, null, !dbg !800
  br i1 %18, label %40, label %19, !dbg !801

; <label>:19:                                     ; preds = %15, %36
  %20 = phi %struct.MHD_HTTP_Header* [ %38, %36 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %20, i64 0, i32 5, !dbg !802
  %22 = load i32, i32* %21, align 8, !dbg !802, !tbaa !612
  %23 = icmp eq i32 %22, 1, !dbg !805
  br i1 %23, label %24, label %36, !dbg !806

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %20, i64 0, i32 2, !dbg !807
  %26 = load i64, i64* %25, align 8, !dbg !807, !tbaa !594
  %27 = icmp eq i64 %26, %2, !dbg !808
  br i1 %27, label %28, label %36, !dbg !809

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %20, i64 0, i32 1, !dbg !810
  %30 = load i8*, i8** %29, align 8, !dbg !810, !tbaa !584
  %31 = tail call zeroext i1 @MHD_str_equal_caseless_bin_n_(i8* %30, i8* nonnull %1, i64 %2) #7, !dbg !811
  br i1 %31, label %32, label %36, !dbg !812

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %20, i64 0, i32 3, !dbg !813
  %34 = load i8*, i8** %33, align 8, !dbg !813, !tbaa !599
  %35 = tail call zeroext i1 @MHD_str_has_token_caseless_(i8* %34, i8* %3, i64 %4) #7, !dbg !814
  br i1 %35, label %40, label %36, !dbg !815

; <label>:36:                                     ; preds = %19, %24, %28, %32
  %37 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %20, i64 0, i32 0, !dbg !816
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %37, metadata !779, metadata !DIExpression(DW_OP_deref)), !dbg !797
  %38 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %37, align 8, !dbg !798, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %38, metadata !779, metadata !DIExpression()), !dbg !797
  %39 = icmp eq %struct.MHD_HTTP_Header* %38, null, !dbg !800
  br i1 %39, label %40, label %19, !dbg !801, !llvm.loop !817

; <label>:40:                                     ; preds = %32, %36, %15, %5, %7, %12
  %41 = phi i1 [ false, %12 ], [ false, %7 ], [ false, %5 ], [ false, %15 ], [ true, %32 ], [ false, %36 ], !dbg !819
  ret i1 %41, !dbg !820
}

declare zeroext i1 @MHD_str_has_token_caseless_(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_callback(i64, i64, i64 (i8*, i64, i8*, i64)*, i8*, void (i8*)*) local_unnamed_addr #0 !dbg !821 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !825, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i64 %1, metadata !826, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*, i64)* %2, metadata !827, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i8* %3, metadata !828, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !829, metadata !DIExpression()), !dbg !835
  %6 = icmp eq i64 (i8*, i64, i8*, i64)* %2, null, !dbg !836
  %7 = icmp eq i64 %1, 0, !dbg !838
  %8 = or i1 %7, %6, !dbg !839
  br i1 %8, label %38, label %9, !dbg !839

; <label>:9:                                      ; preds = %5
  %10 = add i64 %1, 168, !dbg !840
  %11 = tail call noalias i8* @calloc(i64 1, i64 %10) #7, !dbg !840
  %12 = bitcast i8* %11 to %struct.MHD_Response*, !dbg !840
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %12, metadata !830, metadata !DIExpression()), !dbg !842
  %13 = icmp eq i8* %11, null, !dbg !843
  br i1 %13, label %38, label %14, !dbg !844

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %11, i64 140, !dbg !845
  %16 = bitcast i8* %15 to i32*, !dbg !845
  store i32 -1, i32* %16, align 4, !dbg !846, !tbaa !847
  %17 = getelementptr i8, i8* %11, i64 168, !dbg !848
  %18 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !849
  %19 = bitcast i8* %18 to i8**, !dbg !849
  store i8* %17, i8** %19, align 8, !dbg !850, !tbaa !851
  %20 = getelementptr inbounds i8, i8* %11, i64 128, !dbg !852
  %21 = bitcast i8* %20 to i64*, !dbg !852
  store i64 %1, i64* %21, align 8, !dbg !853, !tbaa !854
  %22 = getelementptr inbounds i8, i8* %11, i64 56, !dbg !855
  %23 = bitcast i8* %22 to %union.pthread_mutex_t*, !dbg !855
  %24 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %23, %union.pthread_mutexattr_t* null) #7, !dbg !855
  %25 = icmp eq i32 %24, 0, !dbg !855
  br i1 %25, label %27, label %26, !dbg !857

; <label>:26:                                     ; preds = %14
  tail call void @free(i8* nonnull %11) #7, !dbg !858
  br label %38, !dbg !860

; <label>:27:                                     ; preds = %14
  %28 = getelementptr inbounds i8, i8* %11, i64 24, !dbg !861
  %29 = bitcast i8* %28 to i64 (i8*, i64, i8*, i64)**, !dbg !861
  store i64 (i8*, i64, i8*, i64)* %2, i64 (i8*, i64, i8*, i64)** %29, align 8, !dbg !862, !tbaa !863
  %30 = getelementptr inbounds i8, i8* %11, i64 32, !dbg !864
  %31 = bitcast i8* %30 to void (i8*)**, !dbg !864
  store void (i8*)* %4, void (i8*)** %31, align 8, !dbg !865, !tbaa !866
  %32 = getelementptr inbounds i8, i8* %11, i64 16, !dbg !867
  %33 = bitcast i8* %32 to i8**, !dbg !867
  store i8* %3, i8** %33, align 8, !dbg !868, !tbaa !869
  %34 = getelementptr inbounds i8, i8* %11, i64 136, !dbg !870
  %35 = bitcast i8* %34 to i32*, !dbg !870
  store i32 1, i32* %35, align 8, !dbg !871, !tbaa !872
  %36 = getelementptr inbounds i8, i8* %11, i64 96, !dbg !873
  %37 = bitcast i8* %36 to i64*, !dbg !873
  store i64 %0, i64* %37, align 8, !dbg !874, !tbaa !875
  br label %38, !dbg !876

; <label>:38:                                     ; preds = %9, %5, %27, %26
  %39 = phi %struct.MHD_Response* [ null, %26 ], [ %12, %27 ], [ null, %5 ], [ null, %9 ], !dbg !877
  ret %struct.MHD_Response* %39, !dbg !878
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define i32 @MHD_set_response_options(%struct.MHD_Response* nocapture, i32, ...) local_unnamed_addr #0 !dbg !879 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !883, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %1, metadata !884, metadata !DIExpression()), !dbg !896
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !897
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !897
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !885, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 1, metadata !893, metadata !DIExpression()), !dbg !899
  %5 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 15, !dbg !900
  store i32 %1, i32* %5, align 8, !dbg !901, !tbaa !514
  call void @llvm.va_start(i8* nonnull %4), !dbg !902
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %9 = load i32, i32* %6, align 16, !dbg !903
  call void @llvm.dbg.value(metadata i32 1, metadata !893, metadata !DIExpression()), !dbg !899
  %10 = icmp ult i32 %9, 41, !dbg !903
  br i1 %10, label %14, label %11, !dbg !903

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %8, align 8, !dbg !903
  %13 = getelementptr i8, i8* %12, i64 8, !dbg !903
  store i8* %13, i8** %8, align 8, !dbg !903
  br label %19, !dbg !903

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %7, align 16, !dbg !903
  %16 = sext i32 %9 to i64, !dbg !903
  %17 = getelementptr i8, i8* %15, i64 %16, !dbg !903
  %18 = add i32 %9, 8, !dbg !903
  store i32 %18, i32* %6, align 16, !dbg !903
  br label %19, !dbg !903

; <label>:19:                                     ; preds = %14, %11
  %20 = phi i32 [ %18, %14 ], [ %9, %11 ]
  %21 = phi i8* [ %17, %14 ], [ %12, %11 ]
  %22 = bitcast i8* %21 to i32*, !dbg !903
  %23 = load i32, i32* %22, align 4, !dbg !903
  call void @llvm.dbg.value(metadata i32 %23, metadata !894, metadata !DIExpression()), !dbg !904
  %24 = icmp eq i32 %23, 0, !dbg !905
  br i1 %24, label %42, label %25, !dbg !906, !llvm.loop !907

; <label>:25:                                     ; preds = %19, %36
  %26 = phi i32 [ %37, %36 ], [ %20, %19 ], !dbg !903
  call void @llvm.dbg.value(metadata i32 0, metadata !893, metadata !DIExpression()), !dbg !899
  %27 = icmp ult i32 %26, 41, !dbg !903
  br i1 %27, label %28, label %33, !dbg !903

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %7, align 16, !dbg !903
  %30 = sext i32 %26 to i64, !dbg !903
  %31 = getelementptr i8, i8* %29, i64 %30, !dbg !903
  %32 = add i32 %26, 8, !dbg !903
  store i32 %32, i32* %6, align 16, !dbg !903
  br label %36, !dbg !903

; <label>:33:                                     ; preds = %25
  %34 = load i8*, i8** %8, align 8, !dbg !903
  %35 = getelementptr i8, i8* %34, i64 8, !dbg !903
  store i8* %35, i8** %8, align 8, !dbg !903
  br label %36, !dbg !903

; <label>:36:                                     ; preds = %33, %28
  %37 = phi i32 [ %32, %28 ], [ %26, %33 ]
  %38 = phi i8* [ %31, %28 ], [ %34, %33 ]
  %39 = bitcast i8* %38 to i32*, !dbg !903
  %40 = load i32, i32* %39, align 4, !dbg !903
  call void @llvm.dbg.value(metadata i32 %40, metadata !894, metadata !DIExpression()), !dbg !904
  %41 = icmp eq i32 %40, 0, !dbg !905
  br i1 %41, label %42, label %25, !dbg !906, !llvm.loop !909

; <label>:42:                                     ; preds = %36, %19
  %43 = phi i32 [ 1, %19 ], [ 0, %36 ], !dbg !911
  call void @llvm.dbg.value(metadata i32 %43, metadata !893, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i32 %43, metadata !893, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i32 %43, metadata !893, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i32 %43, metadata !893, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i32 %43, metadata !893, metadata !DIExpression()), !dbg !899
  call void @llvm.va_end(i8* nonnull %4), !dbg !914
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !915
  ret i32 %43, !dbg !916
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_fd_at_offset(i64, i32, i64) local_unnamed_addr #0 !dbg !917 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !923, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i32 %1, metadata !924, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i64 %2, metadata !925, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 %0, metadata !929, metadata !DIExpression()) #7, !dbg !937
  call void @llvm.dbg.value(metadata i32 %1, metadata !934, metadata !DIExpression()) #7, !dbg !939
  call void @llvm.dbg.value(metadata i64 %2, metadata !935, metadata !DIExpression()) #7, !dbg !940
  %4 = or i64 %2, %0, !dbg !941
  %5 = add i64 %2, %0, !dbg !943
  %6 = or i64 %4, %5, !dbg !941
  %7 = icmp slt i64 %6, 0, !dbg !941
  br i1 %7, label %39, label %8, !dbg !941

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i64 %0, metadata !825, metadata !DIExpression()) #7, !dbg !944
  call void @llvm.dbg.value(metadata i64 4096, metadata !826, metadata !DIExpression()) #7, !dbg !946
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*, i64)* @file_reader, metadata !827, metadata !DIExpression()) #7, !dbg !947
  call void @llvm.dbg.value(metadata i8* null, metadata !828, metadata !DIExpression()) #7, !dbg !948
  call void @llvm.dbg.value(metadata void (i8*)* @free_callback, metadata !829, metadata !DIExpression()) #7, !dbg !949
  %9 = tail call noalias i8* @calloc(i64 1, i64 4264) #7, !dbg !950
  %10 = bitcast i8* %9 to %struct.MHD_Response*, !dbg !950
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %10, metadata !830, metadata !DIExpression()) #7, !dbg !951
  %11 = icmp eq i8* %9, null, !dbg !952
  br i1 %11, label %39, label %12, !dbg !953

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds i8, i8* %9, i64 140, !dbg !954
  %14 = bitcast i8* %13 to i32*, !dbg !954
  store i32 -1, i32* %14, align 4, !dbg !955, !tbaa !847
  %15 = getelementptr i8, i8* %9, i64 168, !dbg !956
  %16 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !957
  %17 = bitcast i8* %16 to i8**, !dbg !957
  store i8* %15, i8** %17, align 8, !dbg !958, !tbaa !851
  %18 = getelementptr inbounds i8, i8* %9, i64 128, !dbg !959
  %19 = bitcast i8* %18 to i64*, !dbg !959
  store i64 4096, i64* %19, align 8, !dbg !960, !tbaa !854
  %20 = getelementptr inbounds i8, i8* %9, i64 56, !dbg !961
  %21 = bitcast i8* %20 to %union.pthread_mutex_t*, !dbg !961
  %22 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %21, %union.pthread_mutexattr_t* null) #7, !dbg !961
  %23 = icmp eq i32 %22, 0, !dbg !961
  br i1 %23, label %25, label %24, !dbg !962

; <label>:24:                                     ; preds = %12
  tail call void @free(i8* nonnull %9) #7, !dbg !963
  br label %39, !dbg !964

; <label>:25:                                     ; preds = %12
  %26 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !965
  %27 = bitcast i8* %26 to i64 (i8*, i64, i8*, i64)**, !dbg !965
  store i64 (i8*, i64, i8*, i64)* @file_reader, i64 (i8*, i64, i8*, i64)** %27, align 8, !dbg !966, !tbaa !863
  %28 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !967
  %29 = bitcast i8* %28 to void (i8*)**, !dbg !967
  store void (i8*)* @free_callback, void (i8*)** %29, align 8, !dbg !968, !tbaa !866
  %30 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !969
  %31 = bitcast i8* %30 to i8**, !dbg !969
  %32 = getelementptr inbounds i8, i8* %9, i64 136, !dbg !970
  %33 = bitcast i8* %32 to i32*, !dbg !970
  store i32 1, i32* %33, align 8, !dbg !971, !tbaa !872
  %34 = getelementptr inbounds i8, i8* %9, i64 96, !dbg !972
  %35 = bitcast i8* %34 to i64*, !dbg !972
  store i64 %0, i64* %35, align 8, !dbg !973, !tbaa !875
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %10, metadata !936, metadata !DIExpression()) #7, !dbg !974
  store i32 %1, i32* %14, align 4, !dbg !975, !tbaa !847
  %36 = getelementptr inbounds i8, i8* %9, i64 148, !dbg !976
  store i8 0, i8* %36, align 4, !dbg !977, !tbaa !978
  %37 = getelementptr inbounds i8, i8* %9, i64 112, !dbg !979
  %38 = bitcast i8* %37 to i64*, !dbg !979
  store i64 %2, i64* %38, align 8, !dbg !980, !tbaa !981
  store i8* %9, i8** %31, align 8, !dbg !982, !tbaa !869
  br label %39, !dbg !983

; <label>:39:                                     ; preds = %3, %8, %24, %25
  %40 = phi %struct.MHD_Response* [ %10, %25 ], [ null, %3 ], [ null, %24 ], [ null, %8 ], !dbg !984
  ret %struct.MHD_Response* %40, !dbg !985
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_fd_at_offset64(i64, i32, i64) local_unnamed_addr #0 !dbg !930 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !929, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i32 %1, metadata !934, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i64 %2, metadata !935, metadata !DIExpression()), !dbg !988
  %4 = or i64 %2, %0, !dbg !989
  %5 = add i64 %2, %0, !dbg !990
  %6 = or i64 %4, %5, !dbg !989
  %7 = icmp slt i64 %6, 0, !dbg !989
  br i1 %7, label %39, label %8, !dbg !989

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i64 %0, metadata !825, metadata !DIExpression()) #7, !dbg !991
  call void @llvm.dbg.value(metadata i64 4096, metadata !826, metadata !DIExpression()) #7, !dbg !993
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*, i64)* @file_reader, metadata !827, metadata !DIExpression()) #7, !dbg !994
  call void @llvm.dbg.value(metadata i8* null, metadata !828, metadata !DIExpression()) #7, !dbg !995
  call void @llvm.dbg.value(metadata void (i8*)* @free_callback, metadata !829, metadata !DIExpression()) #7, !dbg !996
  %9 = tail call noalias i8* @calloc(i64 1, i64 4264) #7, !dbg !997
  %10 = bitcast i8* %9 to %struct.MHD_Response*, !dbg !997
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %10, metadata !830, metadata !DIExpression()) #7, !dbg !998
  %11 = icmp eq i8* %9, null, !dbg !999
  br i1 %11, label %39, label %12, !dbg !1000

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds i8, i8* %9, i64 140, !dbg !1001
  %14 = bitcast i8* %13 to i32*, !dbg !1001
  store i32 -1, i32* %14, align 4, !dbg !1002, !tbaa !847
  %15 = getelementptr i8, i8* %9, i64 168, !dbg !1003
  %16 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1004
  %17 = bitcast i8* %16 to i8**, !dbg !1004
  store i8* %15, i8** %17, align 8, !dbg !1005, !tbaa !851
  %18 = getelementptr inbounds i8, i8* %9, i64 128, !dbg !1006
  %19 = bitcast i8* %18 to i64*, !dbg !1006
  store i64 4096, i64* %19, align 8, !dbg !1007, !tbaa !854
  %20 = getelementptr inbounds i8, i8* %9, i64 56, !dbg !1008
  %21 = bitcast i8* %20 to %union.pthread_mutex_t*, !dbg !1008
  %22 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %21, %union.pthread_mutexattr_t* null) #7, !dbg !1008
  %23 = icmp eq i32 %22, 0, !dbg !1008
  br i1 %23, label %25, label %24, !dbg !1009

; <label>:24:                                     ; preds = %12
  tail call void @free(i8* nonnull %9) #7, !dbg !1010
  br label %39, !dbg !1011

; <label>:25:                                     ; preds = %12
  %26 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !1012
  %27 = bitcast i8* %26 to i64 (i8*, i64, i8*, i64)**, !dbg !1012
  store i64 (i8*, i64, i8*, i64)* @file_reader, i64 (i8*, i64, i8*, i64)** %27, align 8, !dbg !1013, !tbaa !863
  %28 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !1014
  %29 = bitcast i8* %28 to void (i8*)**, !dbg !1014
  store void (i8*)* @free_callback, void (i8*)** %29, align 8, !dbg !1015, !tbaa !866
  %30 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !1016
  %31 = bitcast i8* %30 to i8**, !dbg !1016
  %32 = getelementptr inbounds i8, i8* %9, i64 136, !dbg !1017
  %33 = bitcast i8* %32 to i32*, !dbg !1017
  store i32 1, i32* %33, align 8, !dbg !1018, !tbaa !872
  %34 = getelementptr inbounds i8, i8* %9, i64 96, !dbg !1019
  %35 = bitcast i8* %34 to i64*, !dbg !1019
  store i64 %0, i64* %35, align 8, !dbg !1020, !tbaa !875
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %10, metadata !936, metadata !DIExpression()), !dbg !1021
  store i32 %1, i32* %14, align 4, !dbg !1022, !tbaa !847
  %36 = getelementptr inbounds i8, i8* %9, i64 148, !dbg !1023
  store i8 0, i8* %36, align 4, !dbg !1024, !tbaa !978
  %37 = getelementptr inbounds i8, i8* %9, i64 112, !dbg !1025
  %38 = bitcast i8* %37 to i64*, !dbg !1025
  store i64 %2, i64* %38, align 8, !dbg !1026, !tbaa !981
  store i8* %9, i8** %31, align 8, !dbg !1027, !tbaa !869
  br label %39, !dbg !1028

; <label>:39:                                     ; preds = %8, %24, %3, %25
  %40 = phi %struct.MHD_Response* [ %10, %25 ], [ null, %3 ], [ null, %24 ], [ null, %8 ], !dbg !1029
  ret %struct.MHD_Response* %40, !dbg !1030
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @file_reader(i8* nocapture readonly, i64, i8*, i64) #0 !dbg !1031 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1033, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %1, metadata !1034, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i8* %2, metadata !1035, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %3, metadata !1036, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8* %0, metadata !1037, metadata !DIExpression()), !dbg !1045
  %5 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !1046
  %6 = bitcast i8* %5 to i64*, !dbg !1046
  %7 = load i64, i64* %6, align 8, !dbg !1046, !tbaa !981
  %8 = add i64 %7, %1, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %8, metadata !1039, metadata !DIExpression()), !dbg !1048
  %9 = icmp slt i64 %8, 0, !dbg !1049
  br i1 %9, label %21, label %10, !dbg !1051

; <label>:10:                                     ; preds = %4
  %11 = icmp ult i64 %3, 9223372036854775807, !dbg !1052
  %12 = select i1 %11, i64 %3, i64 9223372036854775807, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %12, metadata !1036, metadata !DIExpression()), !dbg !1044
  %13 = getelementptr inbounds i8, i8* %0, i64 140, !dbg !1053
  %14 = bitcast i8* %13 to i32*, !dbg !1053
  %15 = load i32, i32* %14, align 4, !dbg !1053, !tbaa !847
  %16 = tail call i64 @pread64(i32 %15, i8* %2, i64 %12, i64 %8) #7, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %16, metadata !1038, metadata !DIExpression()), !dbg !1055
  %17 = icmp eq i64 %16, 0, !dbg !1056
  br i1 %17, label %21, label %18, !dbg !1058

; <label>:18:                                     ; preds = %10
  %19 = icmp slt i64 %16, 0, !dbg !1059
  %20 = select i1 %19, i64 -2, i64 %16, !dbg !1061
  br label %21, !dbg !1061

; <label>:21:                                     ; preds = %18, %10, %4
  %22 = phi i64 [ -2, %4 ], [ -1, %10 ], [ %20, %18 ], !dbg !1062
  ret i64 %22, !dbg !1063
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @free_callback(i8* nocapture) #0 !dbg !1064 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1066, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i8* %0, metadata !1067, metadata !DIExpression()), !dbg !1069
  %2 = getelementptr inbounds i8, i8* %0, i64 140, !dbg !1070
  %3 = bitcast i8* %2 to i32*, !dbg !1070
  %4 = load i32, i32* %3, align 4, !dbg !1070, !tbaa !847
  %5 = tail call i32 @close(i32 %4) #7, !dbg !1071
  store i32 -1, i32* %3, align 4, !dbg !1072, !tbaa !847
  ret void, !dbg !1073
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_pipe(i32) local_unnamed_addr #0 !dbg !1074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1078, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 -1, metadata !825, metadata !DIExpression()) #7, !dbg !1081
  call void @llvm.dbg.value(metadata i64 4096, metadata !826, metadata !DIExpression()) #7, !dbg !1083
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*, i64)* @pipe_reader, metadata !827, metadata !DIExpression()) #7, !dbg !1084
  call void @llvm.dbg.value(metadata i8* null, metadata !828, metadata !DIExpression()) #7, !dbg !1085
  call void @llvm.dbg.value(metadata void (i8*)* @free_callback, metadata !829, metadata !DIExpression()) #7, !dbg !1086
  %2 = tail call noalias i8* @calloc(i64 1, i64 4264) #7, !dbg !1087
  %3 = bitcast i8* %2 to %struct.MHD_Response*, !dbg !1087
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %3, metadata !830, metadata !DIExpression()) #7, !dbg !1088
  %4 = icmp eq i8* %2, null, !dbg !1089
  br i1 %4, label %30, label %5, !dbg !1090

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds i8, i8* %2, i64 140, !dbg !1091
  %7 = bitcast i8* %6 to i32*, !dbg !1091
  store i32 -1, i32* %7, align 4, !dbg !1092, !tbaa !847
  %8 = getelementptr i8, i8* %2, i64 168, !dbg !1093
  %9 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1094
  %10 = bitcast i8* %9 to i8**, !dbg !1094
  store i8* %8, i8** %10, align 8, !dbg !1095, !tbaa !851
  %11 = getelementptr inbounds i8, i8* %2, i64 128, !dbg !1096
  %12 = bitcast i8* %11 to i64*, !dbg !1096
  store i64 4096, i64* %12, align 8, !dbg !1097, !tbaa !854
  %13 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !1098
  %14 = bitcast i8* %13 to %union.pthread_mutex_t*, !dbg !1098
  %15 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %14, %union.pthread_mutexattr_t* null) #7, !dbg !1098
  %16 = icmp eq i32 %15, 0, !dbg !1098
  br i1 %16, label %18, label %17, !dbg !1099

; <label>:17:                                     ; preds = %5
  tail call void @free(i8* nonnull %2) #7, !dbg !1100
  br label %30, !dbg !1101

; <label>:18:                                     ; preds = %5
  %19 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1102
  %20 = bitcast i8* %19 to i64 (i8*, i64, i8*, i64)**, !dbg !1102
  store i64 (i8*, i64, i8*, i64)* @pipe_reader, i64 (i8*, i64, i8*, i64)** %20, align 8, !dbg !1103, !tbaa !863
  %21 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1104
  %22 = bitcast i8* %21 to void (i8*)**, !dbg !1104
  store void (i8*)* @free_callback, void (i8*)** %22, align 8, !dbg !1105, !tbaa !866
  %23 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1106
  %24 = bitcast i8* %23 to i8**, !dbg !1106
  %25 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1107
  %26 = bitcast i8* %25 to i32*, !dbg !1107
  store i32 1, i32* %26, align 8, !dbg !1108, !tbaa !872
  %27 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !1109
  %28 = bitcast i8* %27 to i64*, !dbg !1109
  store i64 -1, i64* %28, align 8, !dbg !1110, !tbaa !875
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %3, metadata !1079, metadata !DIExpression()), !dbg !1111
  store i32 %0, i32* %7, align 4, !dbg !1112, !tbaa !847
  %29 = getelementptr inbounds i8, i8* %2, i64 148, !dbg !1113
  store i8 1, i8* %29, align 4, !dbg !1114, !tbaa !978
  store i8* %2, i8** %24, align 8, !dbg !1115, !tbaa !869
  br label %30, !dbg !1116

; <label>:30:                                     ; preds = %1, %17, %18
  %31 = phi %struct.MHD_Response* [ %3, %18 ], [ null, %17 ], [ null, %1 ], !dbg !1117
  ret %struct.MHD_Response* %31, !dbg !1118
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pipe_reader(i8* nocapture readonly, i64, i8* nocapture, i64) #0 !dbg !1119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1121, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %1, metadata !1122, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %2, metadata !1123, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i64 %3, metadata !1124, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i8* %0, metadata !1125, metadata !DIExpression()), !dbg !1131
  %5 = icmp ult i64 %3, 9223372036854775807, !dbg !1132
  %6 = select i1 %5, i64 %3, i64 9223372036854775807, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %6, metadata !1124, metadata !DIExpression()), !dbg !1130
  %7 = getelementptr inbounds i8, i8* %0, i64 140, !dbg !1133
  %8 = bitcast i8* %7 to i32*, !dbg !1133
  %9 = load i32, i32* %8, align 4, !dbg !1133, !tbaa !847
  %10 = tail call i64 @read(i32 %9, i8* %2, i64 %6) #7, !dbg !1134
  call void @llvm.dbg.value(metadata i64 %10, metadata !1126, metadata !DIExpression()), !dbg !1135
  %11 = icmp eq i64 %10, 0, !dbg !1136
  %12 = icmp slt i64 %10, 0, !dbg !1138
  %13 = select i1 %12, i64 -2, i64 %10, !dbg !1140
  %14 = select i1 %11, i64 -1, i64 %13, !dbg !1141
  ret i64 %14, !dbg !1142
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_fd(i64, i32) local_unnamed_addr #0 !dbg !1143 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1147, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 %1, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %0, metadata !929, metadata !DIExpression()) #7, !dbg !1151
  call void @llvm.dbg.value(metadata i32 %1, metadata !934, metadata !DIExpression()) #7, !dbg !1153
  call void @llvm.dbg.value(metadata i64 0, metadata !935, metadata !DIExpression()) #7, !dbg !1154
  %3 = icmp slt i64 %0, 0, !dbg !1155
  br i1 %3, label %35, label %4, !dbg !1155

; <label>:4:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i64 %0, metadata !825, metadata !DIExpression()) #7, !dbg !1156
  call void @llvm.dbg.value(metadata i64 4096, metadata !826, metadata !DIExpression()) #7, !dbg !1158
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*, i64)* @file_reader, metadata !827, metadata !DIExpression()) #7, !dbg !1159
  call void @llvm.dbg.value(metadata i8* null, metadata !828, metadata !DIExpression()) #7, !dbg !1160
  call void @llvm.dbg.value(metadata void (i8*)* @free_callback, metadata !829, metadata !DIExpression()) #7, !dbg !1161
  %5 = tail call noalias i8* @calloc(i64 1, i64 4264) #7, !dbg !1162
  %6 = bitcast i8* %5 to %struct.MHD_Response*, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %6, metadata !830, metadata !DIExpression()) #7, !dbg !1163
  %7 = icmp eq i8* %5, null, !dbg !1164
  br i1 %7, label %35, label %8, !dbg !1165

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %5, i64 140, !dbg !1166
  %10 = bitcast i8* %9 to i32*, !dbg !1166
  store i32 -1, i32* %10, align 4, !dbg !1167, !tbaa !847
  %11 = getelementptr i8, i8* %5, i64 168, !dbg !1168
  %12 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !1169
  %13 = bitcast i8* %12 to i8**, !dbg !1169
  store i8* %11, i8** %13, align 8, !dbg !1170, !tbaa !851
  %14 = getelementptr inbounds i8, i8* %5, i64 128, !dbg !1171
  %15 = bitcast i8* %14 to i64*, !dbg !1171
  store i64 4096, i64* %15, align 8, !dbg !1172, !tbaa !854
  %16 = getelementptr inbounds i8, i8* %5, i64 56, !dbg !1173
  %17 = bitcast i8* %16 to %union.pthread_mutex_t*, !dbg !1173
  %18 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %17, %union.pthread_mutexattr_t* null) #7, !dbg !1173
  %19 = icmp eq i32 %18, 0, !dbg !1173
  br i1 %19, label %21, label %20, !dbg !1174

; <label>:20:                                     ; preds = %8
  tail call void @free(i8* nonnull %5) #7, !dbg !1175
  br label %35, !dbg !1176

; <label>:21:                                     ; preds = %8
  %22 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !1177
  %23 = bitcast i8* %22 to i64 (i8*, i64, i8*, i64)**, !dbg !1177
  store i64 (i8*, i64, i8*, i64)* @file_reader, i64 (i8*, i64, i8*, i64)** %23, align 8, !dbg !1178, !tbaa !863
  %24 = getelementptr inbounds i8, i8* %5, i64 32, !dbg !1179
  %25 = bitcast i8* %24 to void (i8*)**, !dbg !1179
  store void (i8*)* @free_callback, void (i8*)** %25, align 8, !dbg !1180, !tbaa !866
  %26 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !1181
  %27 = bitcast i8* %26 to i8**, !dbg !1181
  %28 = getelementptr inbounds i8, i8* %5, i64 136, !dbg !1182
  %29 = bitcast i8* %28 to i32*, !dbg !1182
  store i32 1, i32* %29, align 8, !dbg !1183, !tbaa !872
  %30 = getelementptr inbounds i8, i8* %5, i64 96, !dbg !1184
  %31 = bitcast i8* %30 to i64*, !dbg !1184
  store i64 %0, i64* %31, align 8, !dbg !1185, !tbaa !875
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %6, metadata !936, metadata !DIExpression()) #7, !dbg !1186
  store i32 %1, i32* %10, align 4, !dbg !1187, !tbaa !847
  %32 = getelementptr inbounds i8, i8* %5, i64 148, !dbg !1188
  store i8 0, i8* %32, align 4, !dbg !1189, !tbaa !978
  %33 = getelementptr inbounds i8, i8* %5, i64 112, !dbg !1190
  %34 = bitcast i8* %33 to i64*, !dbg !1190
  store i64 0, i64* %34, align 8, !dbg !1191, !tbaa !981
  store i8* %5, i8** %27, align 8, !dbg !1192, !tbaa !869
  br label %35, !dbg !1193

; <label>:35:                                     ; preds = %2, %4, %20, %21
  %36 = phi %struct.MHD_Response* [ %6, %21 ], [ null, %2 ], [ null, %20 ], [ null, %4 ], !dbg !1194
  ret %struct.MHD_Response* %36, !dbg !1195
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_fd64(i64, i32) local_unnamed_addr #0 !dbg !1196 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1200, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %1, metadata !1201, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i64 %0, metadata !929, metadata !DIExpression()) #7, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %1, metadata !934, metadata !DIExpression()) #7, !dbg !1206
  call void @llvm.dbg.value(metadata i64 0, metadata !935, metadata !DIExpression()) #7, !dbg !1207
  %3 = icmp slt i64 %0, 0, !dbg !1208
  br i1 %3, label %35, label %4, !dbg !1208

; <label>:4:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i64 %0, metadata !825, metadata !DIExpression()) #7, !dbg !1209
  call void @llvm.dbg.value(metadata i64 4096, metadata !826, metadata !DIExpression()) #7, !dbg !1211
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*, i64)* @file_reader, metadata !827, metadata !DIExpression()) #7, !dbg !1212
  call void @llvm.dbg.value(metadata i8* null, metadata !828, metadata !DIExpression()) #7, !dbg !1213
  call void @llvm.dbg.value(metadata void (i8*)* @free_callback, metadata !829, metadata !DIExpression()) #7, !dbg !1214
  %5 = tail call noalias i8* @calloc(i64 1, i64 4264) #7, !dbg !1215
  %6 = bitcast i8* %5 to %struct.MHD_Response*, !dbg !1215
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %6, metadata !830, metadata !DIExpression()) #7, !dbg !1216
  %7 = icmp eq i8* %5, null, !dbg !1217
  br i1 %7, label %35, label %8, !dbg !1218

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %5, i64 140, !dbg !1219
  %10 = bitcast i8* %9 to i32*, !dbg !1219
  store i32 -1, i32* %10, align 4, !dbg !1220, !tbaa !847
  %11 = getelementptr i8, i8* %5, i64 168, !dbg !1221
  %12 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !1222
  %13 = bitcast i8* %12 to i8**, !dbg !1222
  store i8* %11, i8** %13, align 8, !dbg !1223, !tbaa !851
  %14 = getelementptr inbounds i8, i8* %5, i64 128, !dbg !1224
  %15 = bitcast i8* %14 to i64*, !dbg !1224
  store i64 4096, i64* %15, align 8, !dbg !1225, !tbaa !854
  %16 = getelementptr inbounds i8, i8* %5, i64 56, !dbg !1226
  %17 = bitcast i8* %16 to %union.pthread_mutex_t*, !dbg !1226
  %18 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %17, %union.pthread_mutexattr_t* null) #7, !dbg !1226
  %19 = icmp eq i32 %18, 0, !dbg !1226
  br i1 %19, label %21, label %20, !dbg !1227

; <label>:20:                                     ; preds = %8
  tail call void @free(i8* nonnull %5) #7, !dbg !1228
  br label %35, !dbg !1229

; <label>:21:                                     ; preds = %8
  %22 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !1230
  %23 = bitcast i8* %22 to i64 (i8*, i64, i8*, i64)**, !dbg !1230
  store i64 (i8*, i64, i8*, i64)* @file_reader, i64 (i8*, i64, i8*, i64)** %23, align 8, !dbg !1231, !tbaa !863
  %24 = getelementptr inbounds i8, i8* %5, i64 32, !dbg !1232
  %25 = bitcast i8* %24 to void (i8*)**, !dbg !1232
  store void (i8*)* @free_callback, void (i8*)** %25, align 8, !dbg !1233, !tbaa !866
  %26 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !1234
  %27 = bitcast i8* %26 to i8**, !dbg !1234
  %28 = getelementptr inbounds i8, i8* %5, i64 136, !dbg !1235
  %29 = bitcast i8* %28 to i32*, !dbg !1235
  store i32 1, i32* %29, align 8, !dbg !1236, !tbaa !872
  %30 = getelementptr inbounds i8, i8* %5, i64 96, !dbg !1237
  %31 = bitcast i8* %30 to i64*, !dbg !1237
  store i64 %0, i64* %31, align 8, !dbg !1238, !tbaa !875
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %6, metadata !936, metadata !DIExpression()) #7, !dbg !1239
  store i32 %1, i32* %10, align 4, !dbg !1240, !tbaa !847
  %32 = getelementptr inbounds i8, i8* %5, i64 148, !dbg !1241
  store i8 0, i8* %32, align 4, !dbg !1242, !tbaa !978
  %33 = getelementptr inbounds i8, i8* %5, i64 112, !dbg !1243
  %34 = bitcast i8* %33 to i64*, !dbg !1243
  store i64 0, i64* %34, align 8, !dbg !1244, !tbaa !981
  store i8* %5, i8** %27, align 8, !dbg !1245, !tbaa !869
  br label %35, !dbg !1246

; <label>:35:                                     ; preds = %2, %4, %20, %21
  %36 = phi %struct.MHD_Response* [ %6, %21 ], [ null, %2 ], [ null, %20 ], [ null, %4 ], !dbg !1247
  ret %struct.MHD_Response* %36, !dbg !1248
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_data(i64, i8*, i32, i32) local_unnamed_addr #0 !dbg !1249 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1253, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8* %1, metadata !1254, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i32 %2, metadata !1255, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %3, metadata !1256, metadata !DIExpression()), !dbg !1262
  %5 = icmp eq i8* %1, null, !dbg !1263
  %6 = icmp ne i64 %0, 0, !dbg !1265
  %7 = and i1 %6, %5, !dbg !1266
  br i1 %7, label %55, label %8, !dbg !1266

; <label>:8:                                      ; preds = %4
  %9 = tail call noalias i8* @calloc(i64 1, i64 168) #7, !dbg !1267
  %10 = bitcast i8* %9 to %struct.MHD_Response*, !dbg !1267
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %10, metadata !1257, metadata !DIExpression()), !dbg !1269
  %11 = icmp eq i8* %9, null, !dbg !1270
  br i1 %11, label %55, label %12, !dbg !1271

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds i8, i8* %9, i64 140, !dbg !1272
  %14 = bitcast i8* %13 to i32*, !dbg !1272
  store i32 -1, i32* %14, align 4, !dbg !1273, !tbaa !847
  %15 = getelementptr inbounds i8, i8* %9, i64 56, !dbg !1274
  %16 = bitcast i8* %15 to %union.pthread_mutex_t*, !dbg !1274
  %17 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %16, %union.pthread_mutexattr_t* null) #7, !dbg !1274
  %18 = icmp eq i32 %17, 0, !dbg !1274
  br i1 %18, label %20, label %19, !dbg !1276

; <label>:19:                                     ; preds = %12
  tail call void @free(i8* nonnull %9) #7, !dbg !1277
  br label %55, !dbg !1279

; <label>:20:                                     ; preds = %12
  %21 = icmp ne i32 %3, 0, !dbg !1280
  %22 = and i1 %6, %21, !dbg !1282
  br i1 %22, label %23, label %34, !dbg !1282

; <label>:23:                                     ; preds = %20
  %24 = tail call noalias i8* @malloc(i64 %0) #7, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %24, metadata !1258, metadata !DIExpression()), !dbg !1286
  %25 = icmp eq i8* %24, null, !dbg !1287
  br i1 %25, label %26, label %33, !dbg !1288

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* nonnull %16) #7, !dbg !1289
  %28 = icmp eq i32 %27, 0, !dbg !1289
  br i1 %28, label %32, label %29, !dbg !1293

; <label>:29:                                     ; preds = %26
  %30 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8, !dbg !1294, !tbaa !656
  %31 = load i8*, i8** @mhd_panic_cls, align 8, !dbg !1294, !tbaa !656
  tail call void %30(i8* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 775, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1294
  unreachable, !dbg !1294

; <label>:32:                                     ; preds = %26
  tail call void @free(i8* nonnull %9) #7, !dbg !1296
  br label %55, !dbg !1297

; <label>:33:                                     ; preds = %23
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %24, i8* align 1 %1, i64 %0, i1 false), !dbg !1298
  call void @llvm.dbg.value(metadata i32 1, metadata !1255, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8* %24, metadata !1254, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8* %1, metadata !1254, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i32 %2, metadata !1255, metadata !DIExpression()), !dbg !1261
  br label %36, !dbg !1299

; <label>:34:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i8* %1, metadata !1254, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i32 %2, metadata !1255, metadata !DIExpression()), !dbg !1261
  %35 = icmp eq i32 %2, 0, !dbg !1300
  br i1 %35, label %42, label %36, !dbg !1299

; <label>:36:                                     ; preds = %33, %34
  %37 = phi i8* [ %24, %33 ], [ %1, %34 ]
  %38 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !1302
  %39 = bitcast i8* %38 to void (i8*)**, !dbg !1302
  store void (i8*)* @free, void (i8*)** %39, align 8, !dbg !1304, !tbaa !866
  %40 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !1305
  %41 = bitcast i8* %40 to i8**, !dbg !1305
  store i8* %37, i8** %41, align 8, !dbg !1306, !tbaa !869
  br label %42, !dbg !1307

; <label>:42:                                     ; preds = %34, %36
  %43 = phi i8* [ %1, %34 ], [ %37, %36 ]
  %44 = getelementptr inbounds i8, i8* %9, i64 136, !dbg !1308
  %45 = bitcast i8* %44 to i32*, !dbg !1308
  store i32 1, i32* %45, align 8, !dbg !1309, !tbaa !872
  %46 = getelementptr inbounds i8, i8* %9, i64 96, !dbg !1310
  %47 = bitcast i8* %46 to i64*, !dbg !1310
  store i64 %0, i64* %47, align 8, !dbg !1311, !tbaa !875
  %48 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1312
  %49 = bitcast i8* %48 to i8**, !dbg !1312
  store i8* %43, i8** %49, align 8, !dbg !1313, !tbaa !851
  %50 = getelementptr inbounds i8, i8* %9, i64 120, !dbg !1314
  %51 = bitcast i8* %50 to i64*, !dbg !1314
  store i64 %0, i64* %51, align 8, !dbg !1315, !tbaa !1316
  br i1 %21, label %52, label %55, !dbg !1317

; <label>:52:                                     ; preds = %42
  %53 = getelementptr inbounds i8, i8* %9, i64 128, !dbg !1318
  %54 = bitcast i8* %53 to i64*, !dbg !1318
  store i64 %0, i64* %54, align 8, !dbg !1320, !tbaa !854
  br label %55, !dbg !1321

; <label>:55:                                     ; preds = %42, %52, %8, %4, %32, %19
  %56 = phi %struct.MHD_Response* [ null, %19 ], [ null, %32 ], [ null, %4 ], [ null, %8 ], [ %10, %52 ], [ %10, %42 ], !dbg !1322
  ret %struct.MHD_Response* %56, !dbg !1323
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_buffer(i64, i8*, i32) local_unnamed_addr #0 !dbg !1324 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1328, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i8* %1, metadata !1329, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i32 %2, metadata !1330, metadata !DIExpression()), !dbg !1333
  %4 = icmp eq i32 %2, 1, !dbg !1334
  %5 = zext i1 %4 to i32, !dbg !1334
  %6 = icmp eq i32 %2, 2, !dbg !1335
  %7 = zext i1 %6 to i32, !dbg !1335
  %8 = tail call %struct.MHD_Response* @MHD_create_response_from_data(i64 %0, i8* %1, i32 %5, i32 %7), !dbg !1336
  ret %struct.MHD_Response* %8, !dbg !1337
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_buffer_with_free_callback(i64, i8*, void (i8*)*) local_unnamed_addr #0 !dbg !1338 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1342, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i8* %1, metadata !1343, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata void (i8*)* %2, metadata !1344, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %0, metadata !1253, metadata !DIExpression()) #7, !dbg !1349
  call void @llvm.dbg.value(metadata i8* %1, metadata !1254, metadata !DIExpression()) #7, !dbg !1351
  call void @llvm.dbg.value(metadata i32 1, metadata !1255, metadata !DIExpression()) #7, !dbg !1352
  call void @llvm.dbg.value(metadata i32 0, metadata !1256, metadata !DIExpression()) #7, !dbg !1353
  %4 = icmp eq i8* %1, null, !dbg !1354
  %5 = icmp ne i64 %0, 0, !dbg !1355
  %6 = and i1 %5, %4, !dbg !1356
  br i1 %6, label %32, label %7, !dbg !1356

; <label>:7:                                      ; preds = %3
  %8 = tail call noalias i8* @calloc(i64 1, i64 168) #7, !dbg !1357
  %9 = bitcast i8* %8 to %struct.MHD_Response*, !dbg !1357
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %9, metadata !1257, metadata !DIExpression()) #7, !dbg !1358
  %10 = icmp eq i8* %8, null, !dbg !1359
  br i1 %10, label %32, label %11, !dbg !1360

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds i8, i8* %8, i64 140, !dbg !1361
  %13 = bitcast i8* %12 to i32*, !dbg !1361
  store i32 -1, i32* %13, align 4, !dbg !1362, !tbaa !847
  %14 = getelementptr inbounds i8, i8* %8, i64 56, !dbg !1363
  %15 = bitcast i8* %14 to %union.pthread_mutex_t*, !dbg !1363
  %16 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %15, %union.pthread_mutexattr_t* null) #7, !dbg !1363
  %17 = icmp eq i32 %16, 0, !dbg !1363
  br i1 %17, label %19, label %18, !dbg !1364

; <label>:18:                                     ; preds = %11
  tail call void @free(i8* nonnull %8) #7, !dbg !1365
  br label %32, !dbg !1366

; <label>:19:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i8* %1, metadata !1254, metadata !DIExpression()) #7, !dbg !1351
  call void @llvm.dbg.value(metadata i32 1, metadata !1255, metadata !DIExpression()) #7, !dbg !1352
  %20 = getelementptr inbounds i8, i8* %8, i64 32, !dbg !1367
  %21 = bitcast i8* %20 to void (i8*)**, !dbg !1367
  %22 = getelementptr inbounds i8, i8* %8, i64 16, !dbg !1368
  %23 = bitcast i8* %22 to i8**, !dbg !1368
  store i8* %1, i8** %23, align 8, !dbg !1369, !tbaa !869
  %24 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !1370
  %25 = bitcast i8* %24 to i32*, !dbg !1370
  store i32 1, i32* %25, align 8, !dbg !1371, !tbaa !872
  %26 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !1372
  %27 = bitcast i8* %26 to i64*, !dbg !1372
  store i64 %0, i64* %27, align 8, !dbg !1373, !tbaa !875
  %28 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !1374
  %29 = bitcast i8* %28 to i8**, !dbg !1374
  store i8* %1, i8** %29, align 8, !dbg !1375, !tbaa !851
  %30 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !1376
  %31 = bitcast i8* %30 to i64*, !dbg !1376
  store i64 %0, i64* %31, align 8, !dbg !1377, !tbaa !1316
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %9, metadata !1345, metadata !DIExpression()), !dbg !1378
  store void (i8*)* %2, void (i8*)** %21, align 8, !dbg !1379, !tbaa !866
  br label %32, !dbg !1380

; <label>:32:                                     ; preds = %7, %3, %18, %19
  %33 = phi %struct.MHD_Response* [ %9, %19 ], [ null, %18 ], [ null, %3 ], [ null, %7 ]
  ret %struct.MHD_Response* %33, !dbg !1381
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_from_iovec(%struct.MHD_IoVec* readonly, i32, void (i8*)*, i8*) local_unnamed_addr #0 !dbg !1382 {
  call void @llvm.dbg.value(metadata %struct.MHD_IoVec* %0, metadata !1394, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32 %1, metadata !1395, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata void (i8*)* %2, metadata !1396, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8* %3, metadata !1397, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 0, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 0, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* null, metadata !1402, metadata !DIExpression()), !dbg !1417
  %5 = icmp eq %struct.MHD_IoVec* %0, null, !dbg !1418
  %6 = icmp ne i32 %1, 0, !dbg !1420
  %7 = and i1 %5, %6, !dbg !1421
  br i1 %7, label %125, label %8, !dbg !1421

; <label>:8:                                      ; preds = %4
  %9 = tail call noalias i8* @calloc(i64 1, i64 168) #7, !dbg !1422
  %10 = bitcast i8* %9 to %struct.MHD_Response*, !dbg !1422
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %10, metadata !1398, metadata !DIExpression()), !dbg !1423
  %11 = icmp eq i8* %9, null, !dbg !1424
  br i1 %11, label %125, label %12, !dbg !1426

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds i8, i8* %9, i64 56, !dbg !1427
  %14 = bitcast i8* %13 to %union.pthread_mutex_t*, !dbg !1427
  %15 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %14, %union.pthread_mutexattr_t* null) #7, !dbg !1427
  %16 = icmp eq i32 %15, 0, !dbg !1427
  br i1 %16, label %17, label %32, !dbg !1429

; <label>:17:                                     ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 0, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 0, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* null, metadata !1402, metadata !DIExpression()), !dbg !1417
  %18 = icmp eq i32 %1, 0, !dbg !1431
  br i1 %18, label %19, label %30, !dbg !1434

; <label>:19:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i8* %55, metadata !1402, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %56, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %57, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %57, metadata !1400, metadata !DIExpression()), !dbg !1415
  %20 = getelementptr inbounds i8, i8* %9, i64 140, !dbg !1435
  %21 = bitcast i8* %20 to i32*, !dbg !1435
  store i32 -1, i32* %21, align 4, !dbg !1436, !tbaa !847
  %22 = getelementptr inbounds i8, i8* %9, i64 136, !dbg !1437
  %23 = bitcast i8* %22 to i32*, !dbg !1437
  store i32 1, i32* %23, align 8, !dbg !1438, !tbaa !872
  %24 = getelementptr inbounds i8, i8* %9, i64 96, !dbg !1439
  %25 = bitcast i8* %24 to i64*, !dbg !1439
  store i64 0, i64* %25, align 8, !dbg !1440, !tbaa !875
  %26 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !1441
  %27 = bitcast i8* %26 to i8**, !dbg !1441
  store i8* %3, i8** %27, align 8, !dbg !1442, !tbaa !869
  %28 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !1443
  %29 = bitcast i8* %28 to void (i8*)**, !dbg !1443
  store void (i8*)* %2, void (i8*)** %29, align 8, !dbg !1444, !tbaa !866
  br label %125, !dbg !1445

; <label>:30:                                     ; preds = %17
  %31 = zext i32 %1 to i64, !dbg !1446
  br label %33, !dbg !1446

; <label>:32:                                     ; preds = %12
  tail call void @free(i8* nonnull %9) #7, !dbg !1449
  br label %125, !dbg !1451

; <label>:33:                                     ; preds = %30, %54
  %34 = phi i64 [ 0, %30 ], [ %58, %54 ]
  %35 = phi i32 [ 0, %30 ], [ %57, %54 ]
  %36 = phi i64 [ 0, %30 ], [ %56, %54 ]
  %37 = phi i8* [ null, %30 ], [ %55, %54 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !1399, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %35, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %36, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %37, metadata !1402, metadata !DIExpression()), !dbg !1417
  %38 = getelementptr inbounds %struct.MHD_IoVec, %struct.MHD_IoVec* %0, i64 %34, i32 1, !dbg !1452
  %39 = load i64, i64* %38, align 8, !dbg !1452, !tbaa !1453
  %40 = icmp eq i64 %39, 0, !dbg !1455
  br i1 %40, label %54, label %41, !dbg !1456

; <label>:41:                                     ; preds = %33
  %42 = getelementptr inbounds %struct.MHD_IoVec, %struct.MHD_IoVec* %0, i64 %34, i32 0, !dbg !1457
  %43 = load i8*, i8** %42, align 8, !dbg !1457, !tbaa !1459
  %44 = icmp eq i8* %43, null, !dbg !1460
  br i1 %44, label %62, label %45, !dbg !1461

; <label>:45:                                     ; preds = %41
  %46 = add i64 %39, %36, !dbg !1462
  %47 = icmp ugt i64 %36, %46, !dbg !1464
  %48 = icmp eq i32 %35, 2147483647, !dbg !1465
  %49 = or i1 %48, %47, !dbg !1466
  %50 = icmp slt i64 %46, 0, !dbg !1467
  %51 = or i1 %50, %49, !dbg !1466
  br i1 %51, label %62, label %52, !dbg !1466

; <label>:52:                                     ; preds = %45
  call void @llvm.dbg.value(metadata i8* %43, metadata !1402, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %46, metadata !1401, metadata !DIExpression()), !dbg !1416
  %53 = add i32 %35, 1, !dbg !1468
  call void @llvm.dbg.value(metadata i32 %53, metadata !1400, metadata !DIExpression()), !dbg !1415
  br label %54, !dbg !1469

; <label>:54:                                     ; preds = %33, %52
  %55 = phi i8* [ %37, %33 ], [ %43, %52 ], !dbg !1470
  %56 = phi i64 [ %36, %33 ], [ %46, %52 ], !dbg !1470
  %57 = phi i32 [ %35, %33 ], [ %53, %52 ], !dbg !1470
  %58 = add nuw nsw i64 %34, 1, !dbg !1471
  call void @llvm.dbg.value(metadata i32 undef, metadata !1399, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %57, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %56, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %55, metadata !1402, metadata !DIExpression()), !dbg !1417
  %59 = icmp ult i64 %58, %31, !dbg !1431
  br i1 %59, label %33, label %60, !dbg !1434, !llvm.loop !1472

; <label>:60:                                     ; preds = %54
  call void @llvm.dbg.value(metadata i8* %55, metadata !1402, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %56, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %57, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %55, metadata !1402, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %56, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %57, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %55, metadata !1402, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %56, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %57, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %55, metadata !1402, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %56, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %57, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %55, metadata !1402, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %56, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %57, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %57, metadata !1400, metadata !DIExpression()), !dbg !1415
  %61 = icmp eq i32 %57, -1, !dbg !1474
  br i1 %61, label %62, label %69, !dbg !1476

; <label>:62:                                     ; preds = %45, %41, %60
  %63 = tail call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* nonnull %14) #7, !dbg !1477
  %64 = icmp eq i32 %63, 0, !dbg !1477
  br i1 %64, label %68, label %65, !dbg !1481

; <label>:65:                                     ; preds = %62
  %66 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8, !dbg !1482, !tbaa !656
  %67 = load i8*, i8** @mhd_panic_cls, align 8, !dbg !1482, !tbaa !656
  tail call void %66(i8* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 926, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1482
  unreachable, !dbg !1482

; <label>:68:                                     ; preds = %62
  tail call void @free(i8* %9) #7, !dbg !1484
  br label %125, !dbg !1485

; <label>:69:                                     ; preds = %60
  %70 = getelementptr inbounds i8, i8* %9, i64 140, !dbg !1435
  %71 = bitcast i8* %70 to i32*, !dbg !1435
  store i32 -1, i32* %71, align 4, !dbg !1436, !tbaa !847
  %72 = getelementptr inbounds i8, i8* %9, i64 136, !dbg !1437
  %73 = bitcast i8* %72 to i32*, !dbg !1437
  store i32 1, i32* %73, align 8, !dbg !1438, !tbaa !872
  %74 = getelementptr inbounds i8, i8* %9, i64 96, !dbg !1439
  %75 = bitcast i8* %74 to i64*, !dbg !1439
  store i64 %56, i64* %75, align 8, !dbg !1440, !tbaa !875
  %76 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !1441
  %77 = bitcast i8* %76 to i8**, !dbg !1441
  store i8* %3, i8** %77, align 8, !dbg !1442, !tbaa !869
  %78 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !1443
  %79 = bitcast i8* %78 to void (i8*)**, !dbg !1443
  store void (i8*)* %2, void (i8*)** %79, align 8, !dbg !1444, !tbaa !866
  switch i32 %57, label %85 [
    i32 0, label %125
    i32 1, label %80
  ], !dbg !1445

; <label>:80:                                     ; preds = %69
  %81 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1486
  %82 = bitcast i8* %81 to i8**, !dbg !1486
  store i8* %55, i8** %82, align 8, !dbg !1489, !tbaa !851
  %83 = getelementptr inbounds i8, i8* %9, i64 120, !dbg !1490
  %84 = bitcast i8* %83 to i64*, !dbg !1490
  store i64 %56, i64* %84, align 8, !dbg !1491, !tbaa !1316
  br label %125, !dbg !1492

; <label>:85:                                     ; preds = %69
  call void @llvm.dbg.value(metadata i32 %57, metadata !1405, metadata !DIExpression()), !dbg !1493
  %86 = sext i32 %57 to i64, !dbg !1494
  %87 = tail call noalias i8* @calloc(i64 %86, i64 16) #7, !dbg !1494
  %88 = bitcast i8* %87 to %struct.iovec*, !dbg !1494
  call void @llvm.dbg.value(metadata %struct.iovec* %88, metadata !1403, metadata !DIExpression()), !dbg !1495
  %89 = icmp eq i8* %87, null, !dbg !1496
  br i1 %89, label %93, label %90, !dbg !1498

; <label>:90:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 0, metadata !1400, metadata !DIExpression()), !dbg !1415
  br i1 %18, label %119, label %91, !dbg !1499

; <label>:91:                                     ; preds = %90
  %92 = zext i32 %1 to i64
  br label %100, !dbg !1500

; <label>:93:                                     ; preds = %85
  %94 = tail call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* nonnull %14) #7, !dbg !1501
  %95 = icmp eq i32 %94, 0, !dbg !1501
  br i1 %95, label %99, label %96, !dbg !1505

; <label>:96:                                     ; preds = %93
  %97 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8, !dbg !1506, !tbaa !656
  %98 = load i8*, i8** @mhd_panic_cls, align 8, !dbg !1506, !tbaa !656
  tail call void %97(i8* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 956, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1506
  unreachable, !dbg !1506

; <label>:99:                                     ; preds = %93
  tail call void @free(i8* nonnull %9) #7, !dbg !1508
  br label %125, !dbg !1509

; <label>:100:                                    ; preds = %115, %91
  %101 = phi i64 [ 0, %91 ], [ %117, %115 ]
  %102 = phi i32 [ 0, %91 ], [ %116, %115 ]
  call void @llvm.dbg.value(metadata i64 %101, metadata !1399, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %102, metadata !1400, metadata !DIExpression()), !dbg !1415
  %103 = getelementptr inbounds %struct.MHD_IoVec, %struct.MHD_IoVec* %0, i64 %101, i32 1, !dbg !1510
  %104 = load i64, i64* %103, align 8, !dbg !1510, !tbaa !1453
  call void @llvm.dbg.value(metadata i64 %104, metadata !1406, metadata !DIExpression()), !dbg !1511
  %105 = icmp eq i64 %104, 0, !dbg !1512
  br i1 %105, label %115, label %106, !dbg !1514

; <label>:106:                                    ; preds = %100
  %107 = getelementptr inbounds %struct.MHD_IoVec, %struct.MHD_IoVec* %0, i64 %101, i32 0, !dbg !1515
  %108 = bitcast i8** %107 to i64*, !dbg !1515
  %109 = load i64, i64* %108, align 8, !dbg !1515, !tbaa !1459
  call void @llvm.dbg.value(metadata i8** %107, metadata !1410, metadata !DIExpression(DW_OP_deref)), !dbg !1516
  %110 = sext i32 %102 to i64, !dbg !1517
  %111 = getelementptr %struct.iovec, %struct.iovec* %88, i64 %110, !dbg !1517
  %112 = bitcast %struct.iovec* %111 to i64*, !dbg !1518
  store i64 %109, i64* %112, align 8, !dbg !1518, !tbaa !1519
  %113 = getelementptr inbounds %struct.iovec, %struct.iovec* %88, i64 %110, i32 1, !dbg !1521
  store i64 %104, i64* %113, align 8, !dbg !1522, !tbaa !1523
  %114 = add i32 %102, 1, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %114, metadata !1400, metadata !DIExpression()), !dbg !1415
  br label %115, !dbg !1525

; <label>:115:                                    ; preds = %100, %106
  %116 = phi i32 [ %114, %106 ], [ %102, %100 ], !dbg !1526
  %117 = add nuw nsw i64 %101, 1, !dbg !1527
  call void @llvm.dbg.value(metadata i32 undef, metadata !1399, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %116, metadata !1400, metadata !DIExpression()), !dbg !1415
  %118 = icmp eq i64 %117, %92, !dbg !1528
  br i1 %118, label %119, label %100, !dbg !1499, !llvm.loop !1529

; <label>:119:                                    ; preds = %115, %90
  %120 = phi i32 [ 0, %90 ], [ %116, %115 ], !dbg !1531
  call void @llvm.dbg.value(metadata i32 %120, metadata !1400, metadata !DIExpression()), !dbg !1415
  %121 = getelementptr inbounds i8, i8* %9, i64 152, !dbg !1532
  %122 = bitcast i8* %121 to i8**, !dbg !1533
  store i8* %87, i8** %122, align 8, !dbg !1533, !tbaa !1534
  %123 = getelementptr inbounds i8, i8* %9, i64 160, !dbg !1535
  %124 = bitcast i8* %123 to i32*, !dbg !1535
  store i32 %120, i32* %124, align 8, !dbg !1536, !tbaa !1537
  br label %125, !dbg !1538

; <label>:125:                                    ; preds = %19, %99, %119, %69, %8, %4, %80, %68, %32
  %126 = phi %struct.MHD_Response* [ null, %32 ], [ null, %68 ], [ %10, %80 ], [ null, %4 ], [ null, %8 ], [ %10, %69 ], [ null, %99 ], [ %10, %119 ], [ %10, %19 ], !dbg !1539
  ret %struct.MHD_Response* %126, !dbg !1540
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @MHD_upgrade_action(%struct.MHD_UpgradeResponseHandle*, i32, ...) local_unnamed_addr #0 !dbg !1541 {
  call void @llvm.dbg.value(metadata %struct.MHD_UpgradeResponseHandle* %0, metadata !1545, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %1, metadata !1546, metadata !DIExpression()), !dbg !1550
  %3 = icmp eq %struct.MHD_UpgradeResponseHandle* %0, null, !dbg !1551
  br i1 %3, label %22, label %4, !dbg !1553

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.MHD_UpgradeResponseHandle, %struct.MHD_UpgradeResponseHandle* %0, i64 0, i32 0, !dbg !1554
  %6 = load %struct.MHD_Connection*, %struct.MHD_Connection** %5, align 8, !dbg !1554, !tbaa !1555
  call void @llvm.dbg.value(metadata %struct.MHD_Connection* %6, metadata !1547, metadata !DIExpression()), !dbg !1557
  %7 = icmp eq %struct.MHD_Connection* %6, null, !dbg !1558
  br i1 %7, label %22, label %8, !dbg !1560

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %6, i64 0, i32 6, !dbg !1561
  %10 = load %struct.MHD_Daemon*, %struct.MHD_Daemon** %9, align 8, !dbg !1561, !tbaa !1562
  call void @llvm.dbg.value(metadata %struct.MHD_Daemon* %10, metadata !1548, metadata !DIExpression()), !dbg !1566
  %11 = icmp eq %struct.MHD_Daemon* %10, null, !dbg !1567
  br i1 %11, label %22, label %12, !dbg !1569

; <label>:12:                                     ; preds = %8
  switch i32 %1, label %22 [
    i32 0, label %13
    i32 1, label %18
    i32 2, label %20
  ], !dbg !1570

; <label>:13:                                     ; preds = %12
  %14 = getelementptr inbounds %struct.MHD_UpgradeResponseHandle, %struct.MHD_UpgradeResponseHandle* %0, i64 0, i32 1, !dbg !1571
  %15 = load volatile i8, i8* %14, align 8, !dbg !1571, !tbaa !1574, !range !1575
  %16 = icmp eq i8 %15, 0, !dbg !1571
  br i1 %16, label %17, label %22, !dbg !1576

; <label>:17:                                     ; preds = %13
  store volatile i8 1, i8* %14, align 8, !dbg !1577, !tbaa !1574
  tail call void @MHD_resume_connection(%struct.MHD_Connection* nonnull %6) #7, !dbg !1578
  br label %22, !dbg !1579

; <label>:18:                                     ; preds = %12
  %19 = tail call zeroext i1 @MHD_connection_set_cork_state_(%struct.MHD_Connection* nonnull %6, i1 zeroext true) #7, !dbg !1580
  br label %22, !dbg !1581

; <label>:20:                                     ; preds = %12
  %21 = tail call zeroext i1 @MHD_connection_set_cork_state_(%struct.MHD_Connection* nonnull %6, i1 zeroext false) #7, !dbg !1582
  br label %22, !dbg !1583

; <label>:22:                                     ; preds = %12, %13, %8, %4, %2, %20, %18, %17
  %23 = phi i1 [ %21, %20 ], [ %19, %18 ], [ true, %17 ], [ false, %2 ], [ false, %4 ], [ false, %8 ], [ false, %13 ], [ false, %12 ]
  %24 = zext i1 %23 to i32, !dbg !1584
  ret i32 %24, !dbg !1585
}

declare void @MHD_resume_connection(%struct.MHD_Connection*) local_unnamed_addr #2

declare zeroext i1 @MHD_connection_set_cork_state_(%struct.MHD_Connection*, i1 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @MHD_response_execute_upgrade_(%struct.MHD_Response* nocapture readonly, %struct.MHD_Connection*) local_unnamed_addr #0 !dbg !1586 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !1590, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.MHD_Connection* %1, metadata !1591, metadata !DIExpression()), !dbg !1596
  %3 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %1, i64 0, i32 6, !dbg !1597
  %4 = load %struct.MHD_Daemon*, %struct.MHD_Daemon** %3, align 8, !dbg !1597, !tbaa !1562
  call void @llvm.dbg.value(metadata %struct.MHD_Daemon* %4, metadata !1592, metadata !DIExpression()), !dbg !1598
  %5 = getelementptr inbounds %struct.MHD_Daemon, %struct.MHD_Daemon* %4, i64 0, i32 2, !dbg !1599
  %6 = load i32, i32* %5, align 8, !dbg !1599, !tbaa !1601
  %7 = trunc i32 %6 to i16, !dbg !1605
  %8 = icmp sgt i16 %7, -1, !dbg !1605
  br i1 %8, label %54, label %9, !dbg !1606

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !735, metadata !DIExpression()) #7, !dbg !1607
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), metadata !736, metadata !DIExpression()) #7, !dbg !1610
  call void @llvm.dbg.value(metadata i64 7, metadata !738, metadata !DIExpression()) #7, !dbg !1611
  %10 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 0, !dbg !1612
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %10, metadata !737, metadata !DIExpression(DW_OP_deref)) #7, !dbg !1613
  %11 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %10, align 8, !dbg !1614, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %11, metadata !737, metadata !DIExpression()) #7, !dbg !1613
  %12 = icmp eq %struct.MHD_HTTP_Header* %11, null, !dbg !1615
  br i1 %12, label %30, label %13, !dbg !1616

; <label>:13:                                     ; preds = %9, %22
  %14 = phi %struct.MHD_HTTP_Header* [ %24, %22 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 2, !dbg !1617
  %16 = load i64, i64* %15, align 8, !dbg !1617, !tbaa !594
  %17 = icmp eq i64 %16, 7, !dbg !1618
  br i1 %17, label %18, label %22, !dbg !1619

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 1, !dbg !1620
  %20 = load i8*, i8** %19, align 8, !dbg !1620, !tbaa !584
  %21 = tail call zeroext i1 @MHD_str_equal_caseless_bin_n_(i8* %20, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 7) #7, !dbg !1621
  br i1 %21, label %26, label %22, !dbg !1622

; <label>:22:                                     ; preds = %18, %13
  %23 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 0, !dbg !1623
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header** %23, metadata !737, metadata !DIExpression(DW_OP_deref)) #7, !dbg !1613
  %24 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %23, align 8, !dbg !1614, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %24, metadata !737, metadata !DIExpression()) #7, !dbg !1613
  %25 = icmp eq %struct.MHD_HTTP_Header* %24, null, !dbg !1615
  br i1 %25, label %30, label %13, !dbg !1616, !llvm.loop !764

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %14, i64 0, i32 3, !dbg !1624
  %28 = load i8*, i8** %27, align 8, !dbg !1624, !tbaa !599
  %29 = icmp eq i8* %28, null, !dbg !1625
  br i1 %29, label %30, label %31, !dbg !1626

; <label>:30:                                     ; preds = %22, %9, %26
  tail call void (%struct.MHD_Daemon*, i8*, ...) @MHD_DLOG(%struct.MHD_Daemon* %4, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1627
  br label %54, !dbg !1629

; <label>:31:                                     ; preds = %26
  %32 = tail call noalias i8* @calloc(i64 1, i64 16) #7, !dbg !1630
  %33 = icmp eq i8* %32, null, !dbg !1631
  br i1 %33, label %54, label %34, !dbg !1633

; <label>:34:                                     ; preds = %31
  %35 = bitcast i8* %32 to %struct.MHD_UpgradeResponseHandle*, !dbg !1630
  call void @llvm.dbg.value(metadata %struct.MHD_UpgradeResponseHandle* %35, metadata !1593, metadata !DIExpression()), !dbg !1634
  %36 = bitcast i8* %32 to %struct.MHD_Connection**, !dbg !1635
  store %struct.MHD_Connection* %1, %struct.MHD_Connection** %36, align 8, !dbg !1636, !tbaa !1555
  %37 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %1, i64 0, i32 24, !dbg !1637
  %38 = load i64, i64* %37, align 8, !dbg !1637, !tbaa !1638
  call void @llvm.dbg.value(metadata i64 %38, metadata !1594, metadata !DIExpression()), !dbg !1639
  store i64 0, i64* %37, align 8, !dbg !1640, !tbaa !1638
  %39 = tail call zeroext i1 @MHD_connection_set_nodelay_state_(%struct.MHD_Connection* %1, i1 zeroext false) #7, !dbg !1641
  %40 = tail call zeroext i1 @MHD_connection_set_cork_state_(%struct.MHD_Connection* %1, i1 zeroext false) #7, !dbg !1642
  %41 = getelementptr inbounds i8, i8* %32, i64 9, !dbg !1643
  store volatile i8 1, i8* %41, align 1, !dbg !1644, !tbaa !1645
  %42 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %1, i64 0, i32 57, !dbg !1646
  %43 = bitcast %struct.MHD_UpgradeResponseHandle** %42 to i8**, !dbg !1647
  store i8* %32, i8** %43, align 8, !dbg !1647, !tbaa !1648
  tail call void @internal_suspend_connection_(%struct.MHD_Connection* %1) #7, !dbg !1649
  %44 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 5, !dbg !1650
  %45 = load void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)*, void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)** %44, align 8, !dbg !1650, !tbaa !1651
  %46 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 6, !dbg !1652
  %47 = load i8*, i8** %46, align 8, !dbg !1652, !tbaa !1653
  %48 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %1, i64 0, i32 11, !dbg !1654
  %49 = load i8*, i8** %48, align 8, !dbg !1654, !tbaa !1655
  %50 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %1, i64 0, i32 17, !dbg !1656
  %51 = load i8*, i8** %50, align 8, !dbg !1656, !tbaa !1657
  %52 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %1, i64 0, i32 39, !dbg !1658
  %53 = load i32, i32* %52, align 8, !dbg !1658, !tbaa !1659
  tail call void %45(i8* %47, %struct.MHD_Connection* %1, i8* %49, i8* %51, i64 %38, i32 %53, %struct.MHD_UpgradeResponseHandle* %35) #7, !dbg !1660
  br label %54, !dbg !1661

; <label>:54:                                     ; preds = %31, %2, %34, %30
  %55 = phi i32 [ 0, %30 ], [ 1, %34 ], [ 0, %2 ], [ 0, %31 ], !dbg !1662
  ret i32 %55, !dbg !1663
}

declare void @MHD_DLOG(%struct.MHD_Daemon*, i8*, ...) local_unnamed_addr #2

declare zeroext i1 @MHD_connection_set_nodelay_state_(%struct.MHD_Connection*, i1 zeroext) local_unnamed_addr #2

declare void @internal_suspend_connection_(%struct.MHD_Connection*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct.MHD_Response* @MHD_create_response_for_upgrade(void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)*, i8*) local_unnamed_addr #0 !dbg !1664 {
  call void @llvm.dbg.value(metadata void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)* %0, metadata !1668, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8* %1, metadata !1669, metadata !DIExpression()), !dbg !1672
  %3 = icmp eq void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)* %0, null, !dbg !1673
  br i1 %3, label %26, label %4, !dbg !1675

; <label>:4:                                      ; preds = %2
  %5 = tail call noalias i8* @calloc(i64 1, i64 168) #7, !dbg !1676
  %6 = bitcast i8* %5 to %struct.MHD_Response*, !dbg !1676
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %6, metadata !1670, metadata !DIExpression()), !dbg !1677
  %7 = icmp eq i8* %5, null, !dbg !1678
  br i1 %7, label %26, label %8, !dbg !1680

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %5, i64 56, !dbg !1681
  %10 = bitcast i8* %9 to %union.pthread_mutex_t*, !dbg !1681
  %11 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %10, %union.pthread_mutexattr_t* null) #7, !dbg !1681
  %12 = icmp eq i32 %11, 0, !dbg !1681
  br i1 %12, label %14, label %13, !dbg !1683

; <label>:13:                                     ; preds = %8
  tail call void @free(i8* nonnull %5) #7, !dbg !1684
  br label %26, !dbg !1686

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds i8, i8* %5, i64 40, !dbg !1687
  %16 = bitcast i8* %15 to void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)**, !dbg !1687
  store void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)* %0, void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)** %16, align 8, !dbg !1688, !tbaa !1651
  %17 = getelementptr inbounds i8, i8* %5, i64 48, !dbg !1689
  %18 = bitcast i8* %17 to i8**, !dbg !1689
  store i8* %1, i8** %18, align 8, !dbg !1690, !tbaa !1653
  %19 = getelementptr inbounds i8, i8* %5, i64 96, !dbg !1691
  %20 = bitcast i8* %19 to i64*, !dbg !1691
  store i64 -1, i64* %20, align 8, !dbg !1692, !tbaa !875
  %21 = getelementptr inbounds i8, i8* %5, i64 136, !dbg !1693
  %22 = bitcast i8* %21 to i32*, !dbg !1693
  store i32 1, i32* %22, align 8, !dbg !1694, !tbaa !872
  %23 = tail call i32 @MHD_add_response_header(%struct.MHD_Response* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !1695
  %24 = icmp eq i32 %23, 0, !dbg !1697
  br i1 %24, label %25, label %26, !dbg !1698

; <label>:25:                                     ; preds = %14
  tail call void @MHD_destroy_response(%struct.MHD_Response* nonnull %6), !dbg !1699
  br label %26, !dbg !1701

; <label>:26:                                     ; preds = %14, %4, %2, %25, %13
  %27 = phi %struct.MHD_Response* [ null, %13 ], [ null, %25 ], [ null, %2 ], [ null, %4 ], [ %6, %14 ], !dbg !1702
  ret %struct.MHD_Response* %27, !dbg !1703
}

; Function Attrs: nounwind sspstrong uwtable
define void @MHD_destroy_response(%struct.MHD_Response*) local_unnamed_addr #0 !dbg !1704 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !1708, metadata !DIExpression()), !dbg !1710
  %2 = icmp eq %struct.MHD_Response* %0, null, !dbg !1711
  br i1 %2, label %63, label %3, !dbg !1713

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 7, !dbg !1714
  %5 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %4) #7, !dbg !1714
  %6 = icmp eq i32 %5, 0, !dbg !1714
  br i1 %6, label %10, label %7, !dbg !1717

; <label>:7:                                      ; preds = %3
  %8 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8, !dbg !1718, !tbaa !656
  %9 = load i8*, i8** @mhd_panic_cls, align 8, !dbg !1718, !tbaa !656
  tail call void %8(i8* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 1404, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1718
  unreachable, !dbg !1718

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 13, !dbg !1720
  %12 = load i32, i32* %11, align 8, !dbg !1722, !tbaa !872
  %13 = add i32 %12, -1, !dbg !1722
  store i32 %13, i32* %11, align 8, !dbg !1722, !tbaa !872
  %14 = icmp eq i32 %13, 0, !dbg !1723
  %15 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %4) #7, !dbg !1724
  %16 = icmp ne i32 %15, 0, !dbg !1724
  br i1 %14, label %21, label %17, !dbg !1727

; <label>:17:                                     ; preds = %10
  br i1 %16, label %18, label %63, !dbg !1728

; <label>:18:                                     ; preds = %17
  %19 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8, !dbg !1731, !tbaa !656
  %20 = load i8*, i8** @mhd_panic_cls, align 8, !dbg !1731, !tbaa !656
  tail call void %19(i8* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 1409, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1731
  unreachable, !dbg !1731

; <label>:21:                                     ; preds = %10
  br i1 %16, label %22, label %25, !dbg !1734

; <label>:22:                                     ; preds = %21
  %23 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8, !dbg !1735, !tbaa !656
  %24 = load i8*, i8** @mhd_panic_cls, align 8, !dbg !1735, !tbaa !656
  tail call void %23(i8* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 1414, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1735
  unreachable, !dbg !1735

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* nonnull %4) #7, !dbg !1737
  %27 = icmp eq i32 %26, 0, !dbg !1737
  br i1 %27, label %31, label %28, !dbg !1740

; <label>:28:                                     ; preds = %25
  %29 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8, !dbg !1741, !tbaa !656
  %30 = load i8*, i8** @mhd_panic_cls, align 8, !dbg !1741, !tbaa !656
  tail call void %29(i8* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 1415, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1741
  unreachable, !dbg !1741

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 4, !dbg !1743
  %33 = load void (i8*)*, void (i8*)** %32, align 8, !dbg !1743, !tbaa !866
  %34 = icmp eq void (i8*)* %33, null, !dbg !1745
  br i1 %34, label %38, label %35, !dbg !1746

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 2, !dbg !1747
  %37 = load i8*, i8** %36, align 8, !dbg !1747, !tbaa !869
  tail call void %33(i8* %37) #7, !dbg !1748
  br label %38, !dbg !1748

; <label>:38:                                     ; preds = %31, %35
  %39 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 17, !dbg !1749
  %40 = load %struct.iovec*, %struct.iovec** %39, align 8, !dbg !1749, !tbaa !1534
  %41 = icmp eq %struct.iovec* %40, null, !dbg !1751
  br i1 %41, label %44, label %42, !dbg !1752

; <label>:42:                                     ; preds = %38
  %43 = bitcast %struct.iovec* %40 to i8*, !dbg !1753
  tail call void @free(i8* %43) #7, !dbg !1755
  br label %44, !dbg !1756

; <label>:44:                                     ; preds = %38, %42
  %45 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 0, !dbg !1757
  %46 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %45, align 8, !dbg !1757, !tbaa !614
  %47 = icmp eq %struct.MHD_HTTP_Header* %46, null, !dbg !1758
  br i1 %47, label %61, label %48, !dbg !1759

; <label>:48:                                     ; preds = %44
  %49 = bitcast %struct.MHD_Response* %0 to i64*
  br label %50, !dbg !1759

; <label>:50:                                     ; preds = %48, %50
  %51 = phi %struct.MHD_HTTP_Header* [ %46, %48 ], [ %59, %50 ]
  call void @llvm.dbg.value(metadata %struct.MHD_HTTP_Header* %51, metadata !1709, metadata !DIExpression()), !dbg !1760
  %52 = bitcast %struct.MHD_HTTP_Header* %51 to i64*, !dbg !1761
  %53 = load i64, i64* %52, align 8, !dbg !1761, !tbaa !616
  store i64 %53, i64* %49, align 8, !dbg !1763, !tbaa !614
  %54 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %51, i64 0, i32 1, !dbg !1764
  %55 = load i8*, i8** %54, align 8, !dbg !1764, !tbaa !584
  tail call void @free(i8* %55) #7, !dbg !1765
  %56 = getelementptr inbounds %struct.MHD_HTTP_Header, %struct.MHD_HTTP_Header* %51, i64 0, i32 3, !dbg !1766
  %57 = load i8*, i8** %56, align 8, !dbg !1766, !tbaa !599
  tail call void @free(i8* %57) #7, !dbg !1767
  %58 = bitcast %struct.MHD_HTTP_Header* %51 to i8*, !dbg !1768
  tail call void @free(i8* %58) #7, !dbg !1769
  %59 = load %struct.MHD_HTTP_Header*, %struct.MHD_HTTP_Header** %45, align 8, !dbg !1757, !tbaa !614
  %60 = icmp eq %struct.MHD_HTTP_Header* %59, null, !dbg !1758
  br i1 %60, label %61, label %50, !dbg !1759, !llvm.loop !1770

; <label>:61:                                     ; preds = %50, %44
  %62 = bitcast %struct.MHD_Response* %0 to i8*, !dbg !1772
  tail call void @free(i8* %62) #7, !dbg !1773
  br label %63, !dbg !1774

; <label>:63:                                     ; preds = %17, %1, %61
  ret void, !dbg !1774
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define void @MHD_increment_response_rc(%struct.MHD_Response*) local_unnamed_addr #0 !dbg !1775 {
  call void @llvm.dbg.value(metadata %struct.MHD_Response* %0, metadata !1777, metadata !DIExpression()), !dbg !1778
  %2 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 7, !dbg !1779
  %3 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %2) #7, !dbg !1779
  %4 = icmp eq i32 %3, 0, !dbg !1779
  br i1 %4, label %8, label %5, !dbg !1782

; <label>:5:                                      ; preds = %1
  %6 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8, !dbg !1783, !tbaa !656
  %7 = load i8*, i8** @mhd_panic_cls, align 8, !dbg !1783, !tbaa !656
  tail call void %6(i8* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1783
  unreachable, !dbg !1783

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.MHD_Response, %struct.MHD_Response* %0, i64 0, i32 13, !dbg !1785
  %10 = load i32, i32* %9, align 8, !dbg !1786, !tbaa !872
  %11 = add i32 %10, 1, !dbg !1786
  store i32 %11, i32* %9, align 8, !dbg !1786, !tbaa !872
  %12 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %2) #7, !dbg !1787
  %13 = icmp eq i32 %12, 0, !dbg !1787
  br i1 %13, label %17, label %14, !dbg !1790

; <label>:14:                                     ; preds = %8
  %15 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8, !dbg !1791, !tbaa !656
  %16 = load i8*, i8** @mhd_panic_cls, align 8, !dbg !1791, !tbaa !656
  tail call void %15(i8* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 1450, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1791
  unreachable, !dbg !1791

; <label>:17:                                     ; preds = %8
  ret void, !dbg !1793
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #6

declare i64 @pread64(i32, i8*, i64, i64) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #2

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.1.0 (tags/RELEASE_710/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !143)
!1 = !DIFile(filename: "src/microhttpd/response.c", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!2 = !{!3, !9, !17, !53, !62, !70, !74, !77, !82, !86, !95, !118, !124, !130, !133, !138}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_Result", file: !4, line: 138, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "src/include/microhttpd.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MHD_NO", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MHD_YES", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_ValueKind", file: !4, line: 1799, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "MHD_RESPONSE_HEADER_KIND", value: 0, isUnsigned: true)
!12 = !DIEnumerator(name: "MHD_HEADER_KIND", value: 1, isUnsigned: true)
!13 = !DIEnumerator(name: "MHD_COOKIE_KIND", value: 2, isUnsigned: true)
!14 = !DIEnumerator(name: "MHD_POSTDATA_KIND", value: 4, isUnsigned: true)
!15 = !DIEnumerator(name: "MHD_GET_ARGUMENT_KIND", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "MHD_FOOTER_KIND", value: 16, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_FLAG", file: !4, line: 1049, baseType: !5, size: 32, elements: !18)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!19 = !DIEnumerator(name: "MHD_NO_FLAG", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "MHD_USE_ERROR_LOG", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "MHD_USE_DEBUG", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "MHD_USE_TLS", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "MHD_USE_SSL", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "MHD_USE_THREAD_PER_CONNECTION", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "MHD_USE_INTERNAL_POLLING_THREAD", value: 8, isUnsigned: true)
!26 = !DIEnumerator(name: "MHD_USE_SELECT_INTERNALLY", value: 8, isUnsigned: true)
!27 = !DIEnumerator(name: "MHD_USE_IPv6", value: 16, isUnsigned: true)
!28 = !DIEnumerator(name: "MHD_USE_PEDANTIC_CHECKS", value: 32, isUnsigned: true)
!29 = !DIEnumerator(name: "MHD_USE_POLL", value: 64, isUnsigned: true)
!30 = !DIEnumerator(name: "MHD_USE_POLL_INTERNAL_THREAD", value: 72, isUnsigned: true)
!31 = !DIEnumerator(name: "MHD_USE_POLL_INTERNALLY", value: 72, isUnsigned: true)
!32 = !DIEnumerator(name: "MHD_USE_SUPPRESS_DATE_NO_CLOCK", value: 128, isUnsigned: true)
!33 = !DIEnumerator(name: "MHD_SUPPRESS_DATE_NO_CLOCK", value: 128, isUnsigned: true)
!34 = !DIEnumerator(name: "MHD_USE_NO_LISTEN_SOCKET", value: 256, isUnsigned: true)
!35 = !DIEnumerator(name: "MHD_USE_EPOLL", value: 512, isUnsigned: true)
!36 = !DIEnumerator(name: "MHD_USE_EPOLL_LINUX_ONLY", value: 512, isUnsigned: true)
!37 = !DIEnumerator(name: "MHD_USE_EPOLL_INTERNAL_THREAD", value: 520, isUnsigned: true)
!38 = !DIEnumerator(name: "MHD_USE_EPOLL_INTERNALLY", value: 520, isUnsigned: true)
!39 = !DIEnumerator(name: "MHD_USE_EPOLL_INTERNALLY_LINUX_ONLY", value: 520, isUnsigned: true)
!40 = !DIEnumerator(name: "MHD_USE_ITC", value: 1024, isUnsigned: true)
!41 = !DIEnumerator(name: "MHD_USE_PIPE_FOR_SHUTDOWN", value: 1024, isUnsigned: true)
!42 = !DIEnumerator(name: "MHD_USE_DUAL_STACK", value: 2064, isUnsigned: true)
!43 = !DIEnumerator(name: "MHD_USE_TURBO", value: 4096, isUnsigned: true)
!44 = !DIEnumerator(name: "MHD_USE_EPOLL_TURBO", value: 4096, isUnsigned: true)
!45 = !DIEnumerator(name: "MHD_ALLOW_SUSPEND_RESUME", value: 9216, isUnsigned: true)
!46 = !DIEnumerator(name: "MHD_USE_SUSPEND_RESUME", value: 9216, isUnsigned: true)
!47 = !DIEnumerator(name: "MHD_USE_TCP_FASTOPEN", value: 16384, isUnsigned: true)
!48 = !DIEnumerator(name: "MHD_ALLOW_UPGRADE", value: 32768, isUnsigned: true)
!49 = !DIEnumerator(name: "MHD_USE_AUTO", value: 65536, isUnsigned: true)
!50 = !DIEnumerator(name: "MHD_USE_AUTO_INTERNAL_THREAD", value: 65544, isUnsigned: true)
!51 = !DIEnumerator(name: "MHD_USE_POST_HANDSHAKE_AUTH_SUPPORT", value: 131072, isUnsigned: true)
!52 = !DIEnumerator(name: "MHD_USE_INSECURE_TLS_EARLY_DATA", value: 262144, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_tristate", file: !54, line: 173, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "src/microhttpd/internal.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !{!57, !58, !59, !60, !61}
!57 = !DIEnumerator(name: "_MHD_UNKNOWN", value: -1)
!58 = !DIEnumerator(name: "_MHD_OFF", value: 0)
!59 = !DIEnumerator(name: "_MHD_NO", value: 0)
!60 = !DIEnumerator(name: "_MHD_ON", value: 1)
!61 = !DIEnumerator(name: "_MHD_YES", value: 1)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_RequestTerminationCode", file: !4, line: 1850, baseType: !5, size: 32, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DIEnumerator(name: "MHD_REQUEST_TERMINATED_COMPLETED_OK", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "MHD_REQUEST_TERMINATED_WITH_ERROR", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "MHD_REQUEST_TERMINATED_TIMEOUT_REACHED", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "MHD_REQUEST_TERMINATED_DAEMON_SHUTDOWN", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "MHD_REQUEST_TERMINATED_READ_ERROR", value: 4, isUnsigned: true)
!69 = !DIEnumerator(name: "MHD_REQUEST_TERMINATED_CLIENT_ABORT", value: 5, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_ConnectionNotificationCode", file: !4, line: 1908, baseType: !5, size: 32, elements: !71)
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "MHD_CONNECTION_NOTIFY_STARTED", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "MHD_CONNECTION_NOTIFY_CLOSED", value: 1, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_DisableSanityCheck", file: !4, line: 1758, baseType: !5, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIEnumerator(name: "MHD_DSC_SANE", value: 0, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_ConnKeepAlive", file: !54, line: 717, baseType: !55, size: 32, elements: !78)
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "MHD_CONN_MUST_CLOSE", value: -1)
!80 = !DIEnumerator(name: "MHD_CONN_KEEPALIVE_UNKOWN", value: 0)
!81 = !DIEnumerator(name: "MHD_CONN_USE_KEEPALIVE", value: 1)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_resp_sender_", file: !54, line: 952, baseType: !5, size: 32, elements: !83)
!83 = !{!84, !85}
!84 = !DIEnumerator(name: "MHD_resp_sender_std", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "MHD_resp_sender_sendfile", value: 1, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_EpollState", file: !54, line: 186, baseType: !5, size: 32, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94}
!88 = !DIEnumerator(name: "MHD_EPOLL_STATE_UNREADY", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "MHD_EPOLL_STATE_READ_READY", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "MHD_EPOLL_STATE_WRITE_READY", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "MHD_EPOLL_STATE_IN_EREADY_EDLL", value: 4, isUnsigned: true)
!92 = !DIEnumerator(name: "MHD_EPOLL_STATE_IN_EPOLL_SET", value: 8, isUnsigned: true)
!93 = !DIEnumerator(name: "MHD_EPOLL_STATE_SUSPENDED", value: 16, isUnsigned: true)
!94 = !DIEnumerator(name: "MHD_EPOLL_STATE_ERROR", value: 128, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_CONNECTION_STATE", file: !54, line: 537, baseType: !5, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!97 = !DIEnumerator(name: "MHD_CONNECTION_INIT", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "MHD_CONNECTION_URL_RECEIVED", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "MHD_CONNECTION_HEADER_PART_RECEIVED", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "MHD_CONNECTION_HEADERS_RECEIVED", value: 3, isUnsigned: true)
!101 = !DIEnumerator(name: "MHD_CONNECTION_HEADERS_PROCESSED", value: 4, isUnsigned: true)
!102 = !DIEnumerator(name: "MHD_CONNECTION_CONTINUE_SENDING", value: 5, isUnsigned: true)
!103 = !DIEnumerator(name: "MHD_CONNECTION_CONTINUE_SENT", value: 6, isUnsigned: true)
!104 = !DIEnumerator(name: "MHD_CONNECTION_BODY_RECEIVED", value: 7, isUnsigned: true)
!105 = !DIEnumerator(name: "MHD_CONNECTION_FOOTER_PART_RECEIVED", value: 8, isUnsigned: true)
!106 = !DIEnumerator(name: "MHD_CONNECTION_FOOTERS_RECEIVED", value: 9, isUnsigned: true)
!107 = !DIEnumerator(name: "MHD_CONNECTION_HEADERS_SENDING", value: 10, isUnsigned: true)
!108 = !DIEnumerator(name: "MHD_CONNECTION_HEADERS_SENT", value: 11, isUnsigned: true)
!109 = !DIEnumerator(name: "MHD_CONNECTION_NORMAL_BODY_READY", value: 12, isUnsigned: true)
!110 = !DIEnumerator(name: "MHD_CONNECTION_NORMAL_BODY_UNREADY", value: 13, isUnsigned: true)
!111 = !DIEnumerator(name: "MHD_CONNECTION_CHUNKED_BODY_READY", value: 14, isUnsigned: true)
!112 = !DIEnumerator(name: "MHD_CONNECTION_CHUNKED_BODY_UNREADY", value: 15, isUnsigned: true)
!113 = !DIEnumerator(name: "MHD_CONNECTION_BODY_SENT", value: 16, isUnsigned: true)
!114 = !DIEnumerator(name: "MHD_CONNECTION_FOOTERS_SENDING", value: 17, isUnsigned: true)
!115 = !DIEnumerator(name: "MHD_CONNECTION_FOOTERS_SENT", value: 18, isUnsigned: true)
!116 = !DIEnumerator(name: "MHD_CONNECTION_CLOSED", value: 19, isUnsigned: true)
!117 = !DIEnumerator(name: "MHD_CONNECTION_UPGRADE", value: 20, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_ConnectionEventLoopInfo", file: !54, line: 232, baseType: !5, size: 32, elements: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DIEnumerator(name: "MHD_EVENT_LOOP_INFO_READ", value: 0, isUnsigned: true)
!121 = !DIEnumerator(name: "MHD_EVENT_LOOP_INFO_WRITE", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "MHD_EVENT_LOOP_INFO_BLOCK", value: 2, isUnsigned: true)
!123 = !DIEnumerator(name: "MHD_EVENT_LOOP_INFO_CLEANUP", value: 3, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_ResponseFlags", file: !4, line: 3023, baseType: !5, size: 32, elements: !125)
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "MHD_RF_NONE", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MHD_RF_HTTP_VERSION_1_0_ONLY", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "MHD_RF_HTTP_VERSION_1_0_RESPONSE", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "MHD_RF_INSANITY_HEADER_CONTENT_LENGTH", value: 4, isUnsigned: true)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_ResponseOptions", file: !4, line: 3061, baseType: !5, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIEnumerator(name: "MHD_RO_END", value: 0, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_ResponseMemoryMode", file: !4, line: 3135, baseType: !5, size: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "MHD_RESPMEM_PERSISTENT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "MHD_RESPMEM_MUST_FREE", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "MHD_RESPMEM_MUST_COPY", value: 2, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_UpgradeAction", file: !4, line: 3332, baseType: !5, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "MHD_UPGRADE_ACTION_CLOSE", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "MHD_UPGRADE_ACTION_CORK_ON", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "MHD_UPGRADE_ACTION_CORK_OFF", value: 2, isUnsigned: true)
!143 = !{!144, !145, !150, !153, !159, !160}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !146, line: 27, baseType: !147)
!146 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/stdint-intn.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !148, line: 44, baseType: !149)
!148 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/types.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!149 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 62, baseType: !152)
!151 = !DIFile(filename: "/nix/store/9kpya70w4q7js35f34c572f1yyq0c2bh-clang-wrapper-7.1.0/resource-root/include/stddef.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!152 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !156, line: 24, baseType: !157)
!156 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/stdint-uintn.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !148, line: 38, baseType: !158)
!158 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_iov_size_", file: !54, line: 368, baseType: !150)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_SCKT_SEND_SIZE_", file: !161, line: 296, baseType: !150)
!161 = !DIFile(filename: "src/microhttpd/mhd_sockets.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!162 = !{i32 2, !"Dwarf Version", i32 4}
!163 = !{i32 2, !"Debug Info Version", i32 3}
!164 = !{i32 1, !"wchar_size", i32 4}
!165 = !{i32 7, !"PIC Level", i32 2}
!166 = !{!"clang version 7.1.0 (tags/RELEASE_710/final)"}
!167 = distinct !DISubprogram(name: "MHD_add_response_header", scope: !1, file: !1, line: 134, type: !168, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !498)
!168 = !DISubroutineType(types: !169)
!169 = !{!3, !170, !225, !225}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_Response", file: !54, line: 406, size: 1344, elements: !172)
!172 = !{!173, !185, !186, !187, !197, !202, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "first_header", scope: !171, file: !54, line: 414, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_HTTP_Header", file: !54, line: 313, size: 384, elements: !176)
!176 = !{!177, !178, !181, !182, !183, !184}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !54, line: 318, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !175, file: !54, line: 323, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !175, file: !54, line: 328, baseType: !150, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !175, file: !54, line: 333, baseType: !179, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !175, file: !54, line: 338, baseType: !150, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !175, file: !54, line: 344, baseType: !9, size: 32, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !171, file: !54, line: 420, baseType: !179, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "crc_cls", scope: !171, file: !54, line: 426, baseType: !144, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !171, file: !54, line: 432, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_ContentReaderCallback", file: !4, line: 2376, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !144, !195, !179, !150}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 77, baseType: !194)
!193 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/stdio.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !148, line: 194, baseType: !149)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !156, line: 27, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !148, line: 45, baseType: !152)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "crfc", scope: !171, file: !54, line: 438, baseType: !198, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_ContentReaderFreeCallback", file: !4, line: 2392, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !144}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade_handler", scope: !171, file: !54, line: 446, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_UpgradeHandler", file: !4, line: 3429, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !144, !207, !144, !225, !150, !322, !246}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_Connection", file: !54, line: 739, size: 3392, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !412, !413, !414, !415, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !481, !482, !483, !484}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "nextE", scope: !208, file: !54, line: 746, baseType: !207, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prevE", scope: !208, file: !54, line: 751, baseType: !207, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !54, line: 757, baseType: !207, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !208, file: !54, line: 762, baseType: !207, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nextX", scope: !208, file: !54, line: 771, baseType: !207, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prevX", scope: !208, file: !54, line: 776, baseType: !207, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "daemon", scope: !208, file: !54, line: 781, baseType: !217, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_Daemon", file: !54, line: 1392, size: 4928, elements: !219)
!219 = !{!220, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !245, !253, !254, !255, !256, !257, !258, !279, !280, !285, !286, !291, !292, !297, !298, !303, !304, !307, !319, !320, !321, !323, !324, !325, !326, !327, !328, !329, !330, !341, !372, !373, !374, !375, !376, !381, !382, !383, !384, !385, !386, !387, !388, !392, !393, !394, !395, !396, !406, !407, !408, !409, !410, !411}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "default_handler", scope: !218, file: !54, line: 1398, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_AccessHandlerCallback", file: !4, line: 2227, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!3, !144, !207, !225, !225, !225, !225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "default_handler_cls", scope: !218, file: !54, line: 1403, baseType: !144, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !218, file: !54, line: 1411, baseType: !17, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "new_connections_head", scope: !218, file: !54, line: 1416, baseType: !207, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "new_connections_tail", scope: !218, file: !54, line: 1421, baseType: !207, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "connections_head", scope: !218, file: !54, line: 1426, baseType: !207, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "connections_tail", scope: !218, file: !54, line: 1431, baseType: !207, size: 64, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_connections_head", scope: !218, file: !54, line: 1436, baseType: !207, size: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_connections_tail", scope: !218, file: !54, line: 1441, baseType: !207, size: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_head", scope: !218, file: !54, line: 1446, baseType: !207, size: 64, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_tail", scope: !218, file: !54, line: 1451, baseType: !207, size: 64, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "listen_is_unix", scope: !218, file: !54, line: 1456, baseType: !53, size: 32, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "eready_head", scope: !218, file: !54, line: 1462, baseType: !207, size: 64, offset: 768)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "eready_tail", scope: !218, file: !54, line: 1467, baseType: !207, size: 64, offset: 832)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !218, file: !54, line: 1475, baseType: !55, size: 32, offset: 896)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "listen_socket_in_epoll", scope: !218, file: !54, line: 1481, baseType: !244, size: 8, offset: 928)
!244 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "eready_urh_head", scope: !218, file: !54, line: 1501, baseType: !246, size: 64, offset: 960)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_UpgradeResponseHandle", file: !54, line: 1217, size: 128, elements: !248)
!248 = !{!249, !250, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !247, file: !54, line: 1224, baseType: !207, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "was_closed", scope: !247, file: !54, line: 1329, baseType: !251, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !244)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "clean_ready", scope: !247, file: !54, line: 1352, baseType: !251, size: 8, offset: 72)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "eready_urh_tail", scope: !218, file: !54, line: 1506, baseType: !246, size: 64, offset: 1024)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "normal_timeout_head", scope: !218, file: !54, line: 1524, baseType: !207, size: 64, offset: 1088)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "normal_timeout_tail", scope: !218, file: !54, line: 1531, baseType: !207, size: 64, offset: 1152)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "manual_timeout_head", scope: !218, file: !54, line: 1539, baseType: !207, size: 64, offset: 1216)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "manual_timeout_tail", scope: !218, file: !54, line: 1546, baseType: !207, size: 64, offset: 1280)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "apc", scope: !218, file: !54, line: 1552, baseType: !259, size: 64, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_AcceptPolicyCallback", file: !4, line: 2182, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!3, !144, !263, !276}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !266, line: 178, size: 128, elements: !267)
!266 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/socket.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!267 = !{!268, !272}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !265, file: !266, line: 180, baseType: !269, size: 16)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !270, line: 28, baseType: !271)
!270 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/sockaddr.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!271 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !265, file: !266, line: 181, baseType: !273, size: 112, offset: 16)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 112, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 14)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !277, line: 274, baseType: !278)
!277 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/unistd.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !148, line: 210, baseType: !5)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "apc_cls", scope: !218, file: !54, line: 1557, baseType: !144, size: 64, offset: 1408)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "notify_completed", scope: !218, file: !54, line: 1563, baseType: !281, size: 64, offset: 1472)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_RequestCompletedCallback", file: !4, line: 2250, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !144, !207, !228, !62}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "notify_completed_cls", scope: !218, file: !54, line: 1568, baseType: !144, size: 64, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "notify_connection", scope: !218, file: !54, line: 1574, baseType: !287, size: 64, offset: 1600)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_NotifyConnectionCallback", file: !4, line: 2276, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !144, !207, !228, !70}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "notify_connection_cls", scope: !218, file: !54, line: 1579, baseType: !144, size: 64, offset: 1664)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uri_log_callback", scope: !218, file: !54, line: 1588, baseType: !293, size: 64, offset: 1728)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogCallback", file: !54, line: 1366, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!144, !144, !225, !207}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "uri_log_callback_cls", scope: !218, file: !54, line: 1593, baseType: !144, size: 64, offset: 1792)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "unescape_callback", scope: !218, file: !54, line: 1598, baseType: !299, size: 64, offset: 1856)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnescapeCallback", file: !54, line: 1380, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!150, !144, !207, !179}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "unescape_callback_cls", scope: !218, file: !54, line: 1603, baseType: !144, size: 64, offset: 1920)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !218, file: !54, line: 1611, baseType: !305, size: 16, offset: 1984)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !156, line: 25, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !148, line: 40, baseType: !271)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "custom_error_log", scope: !218, file: !54, line: 1618, baseType: !308, size: 64, offset: 2048)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_LogCallback", file: !4, line: 1349, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !144, !225, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !314)
!314 = !{!315, !316, !317, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !313, file: !1, baseType: !5, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !313, file: !1, baseType: !5, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !313, file: !1, baseType: !144, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !313, file: !1, baseType: !144, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "custom_error_log_cls", scope: !218, file: !54, line: 1623, baseType: !144, size: 64, offset: 2112)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !218, file: !54, line: 1629, baseType: !217, size: 64, offset: 2176)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "listen_fd", scope: !218, file: !54, line: 1637, baseType: !322, size: 32, offset: 2240)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_socket", file: !4, line: 193, baseType: !55)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "worker_pool", scope: !218, file: !54, line: 1643, baseType: !217, size: 64, offset: 2304)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "per_ip_connection_count", scope: !218, file: !54, line: 1649, baseType: !144, size: 64, offset: 2368)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !218, file: !54, line: 1657, baseType: !5, size: 32, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !218, file: !54, line: 1662, baseType: !150, size: 64, offset: 2496)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pool_increment", scope: !218, file: !54, line: 1667, baseType: !150, size: 64, offset: 2560)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "thread_stack_size", scope: !218, file: !54, line: 1673, baseType: !150, size: 64, offset: 2624)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "worker_pool_size", scope: !218, file: !54, line: 1678, baseType: !5, size: 32, offset: 2688)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !218, file: !54, line: 1683, baseType: !331, size: 128, offset: 2752)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_thread_handle_ID_", file: !332, line: 127, baseType: !333)
!332 = !DIFile(filename: "src/microhttpd/mhd_threads.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MHD_thread_handle_ID_", file: !332, line: 122, size: 128, elements: !334)
!334 = !{!335, !339}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !333, file: !332, line: 124, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_thread_handle_", file: !332, line: 84, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !338, line: 27, baseType: !152)
!338 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/pthreadtypes.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ID", scope: !333, file: !332, line: 125, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_thread_ID_", file: !332, line: 98, baseType: !337)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "per_ip_connection_mutex", scope: !218, file: !54, line: 1688, baseType: !342, size: 320, offset: 2880)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_mutex_", file: !343, line: 70, baseType: !344)
!343 = !DIFile(filename: "src/microhttpd/mhd_locks.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !338, line: 72, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !338, line: 67, size: 320, elements: !346)
!346 = !{!347, !367, !371}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !345, file: !338, line: 69, baseType: !348, size: 320)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !349, line: 22, size: 320, elements: !350)
!349 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/struct_mutex.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!350 = !{!351, !352, !353, !354, !355, !356, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !348, file: !349, line: 24, baseType: !55, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !348, file: !349, line: 25, baseType: !5, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !348, file: !349, line: 26, baseType: !55, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !348, file: !349, line: 28, baseType: !5, size: 32, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !348, file: !349, line: 32, baseType: !55, size: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !348, file: !349, line: 34, baseType: !357, size: 16, offset: 160)
!357 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !348, file: !349, line: 35, baseType: !357, size: 16, offset: 176)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !348, file: !349, line: 36, baseType: !360, size: 128, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !361, line: 53, baseType: !362)
!361 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/thread-shared-types.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !361, line: 49, size: 128, elements: !363)
!363 = !{!364, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !362, file: !361, line: 51, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !362, file: !361, line: 52, baseType: !365, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !345, file: !338, line: 70, baseType: !368, size: 320)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 320, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 40)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !345, file: !338, line: 71, baseType: !149, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_connection_mutex", scope: !218, file: !54, line: 1694, baseType: !342, size: 320, offset: 3200)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "new_connections_mutex", scope: !218, file: !54, line: 1699, baseType: !342, size: 320, offset: 3520)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "insanity_level", scope: !218, file: !54, line: 1706, baseType: !74, size: 32, offset: 3840)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "listening_address_reuse", scope: !218, file: !54, line: 1717, baseType: !55, size: 32, offset: 3872)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "itc", scope: !218, file: !54, line: 1724, baseType: !377, size: 32, offset: 3904)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_itc_", file: !378, line: 45, size: 32, elements: !379)
!378 = !DIFile(filename: "src/microhttpd/mhd_itc_types.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !377, file: !378, line: 47, baseType: !55, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !218, file: !54, line: 1729, baseType: !251, size: 8, offset: 3936)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "was_quiesced", scope: !218, file: !54, line: 1736, baseType: !251, size: 8, offset: 3944)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "at_limit", scope: !218, file: !54, line: 1745, baseType: !244, size: 8, offset: 3952)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "resuming", scope: !218, file: !54, line: 1750, baseType: !251, size: 8, offset: 3960)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "have_new", scope: !218, file: !54, line: 1756, baseType: !251, size: 8, offset: 3968)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "data_already_pending", scope: !218, file: !54, line: 1767, baseType: !244, size: 8, offset: 3976)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "connection_limit", scope: !218, file: !54, line: 1772, baseType: !5, size: 32, offset: 4000)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "connection_timeout", scope: !218, file: !54, line: 1778, baseType: !389, size: 64, offset: 4032)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !390, line: 7, baseType: !391)
!390 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/types/time_t.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !148, line: 160, baseType: !149)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "per_ip_connection_limit", scope: !218, file: !54, line: 1784, baseType: !5, size: 32, offset: 4096)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "strict_for_client", scope: !218, file: !54, line: 1789, baseType: !55, size: 32, offset: 4128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sigpipe_blocked", scope: !218, file: !54, line: 1794, baseType: !244, size: 8, offset: 4160)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "digest_auth_random", scope: !218, file: !54, line: 1907, baseType: !225, size: 64, offset: 4224)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nnc", scope: !218, file: !54, line: 1912, baseType: !397, size: 64, offset: 4288)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_NonceNc", file: !54, line: 275, size: 1216, elements: !399)
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !398, file: !54, line: 282, baseType: !195, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nmask", scope: !398, file: !54, line: 288, baseType: !195, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !398, file: !54, line: 293, baseType: !403, size: 1032, offset: 128)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1032, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 129)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nnc_lock", scope: !218, file: !54, line: 1918, baseType: !342, size: 320, offset: 4352)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "digest_auth_rand_size", scope: !218, file: !54, line: 1924, baseType: !150, size: 64, offset: 4672)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_nc_size", scope: !218, file: !54, line: 1929, baseType: !5, size: 32, offset: 4736)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen_queue_size", scope: !218, file: !54, line: 1937, baseType: !5, size: 32, offset: 4768)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "listen_backlog_size", scope: !218, file: !54, line: 1943, baseType: !5, size: 32, offset: 4800)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "num_opts", scope: !218, file: !54, line: 1952, baseType: !150, size: 64, offset: 4864)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "headers_received", scope: !208, file: !54, line: 786, baseType: !174, size: 64, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "headers_received_tail", scope: !208, file: !54, line: 791, baseType: !174, size: 64, offset: 512)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !208, file: !54, line: 796, baseType: !170, size: 64, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !208, file: !54, line: 806, baseType: !416, size: 64, offset: 640)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "MemoryPool", file: !54, line: 806, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "client_context", scope: !208, file: !54, line: 814, baseType: !144, size: 64, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "socket_context", scope: !208, file: !54, line: 823, baseType: !144, size: 64, offset: 768)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !208, file: !54, line: 828, baseType: !179, size: 64, offset: 832)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !208, file: !54, line: 834, baseType: !225, size: 64, offset: 896)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !208, file: !54, line: 840, baseType: !179, size: 64, offset: 960)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !208, file: !54, line: 847, baseType: !77, size: 32, offset: 1024)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "read_buffer", scope: !208, file: !54, line: 854, baseType: !179, size: 64, offset: 1088)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "write_buffer", scope: !208, file: !54, line: 860, baseType: !179, size: 64, offset: 1152)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !208, file: !54, line: 868, baseType: !179, size: 64, offset: 1216)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "colon", scope: !208, file: !54, line: 877, baseType: !179, size: 64, offset: 1280)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !208, file: !54, line: 883, baseType: !429, size: 64, offset: 1344)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !208, file: !54, line: 890, baseType: !331, size: 128, offset: 1408)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "read_buffer_size", scope: !208, file: !54, line: 899, baseType: !150, size: 64, offset: 1536)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "read_buffer_offset", scope: !208, file: !54, line: 905, baseType: !150, size: 64, offset: 1600)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "write_buffer_size", scope: !208, file: !54, line: 910, baseType: !150, size: 64, offset: 1664)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "write_buffer_send_offset", scope: !208, file: !54, line: 915, baseType: !150, size: 64, offset: 1728)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "write_buffer_append_offset", scope: !208, file: !54, line: 921, baseType: !150, size: 64, offset: 1792)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !208, file: !54, line: 927, baseType: !150, size: 64, offset: 1856)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_upload_size", scope: !208, file: !54, line: 933, baseType: !195, size: 64, offset: 1920)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "response_write_position", scope: !208, file: !54, line: 940, baseType: !195, size: 64, offset: 1984)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "resp_iov", scope: !208, file: !54, line: 948, baseType: !440, size: 192, offset: 2048)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_iovec_track_", file: !54, line: 380, size: 192, elements: !441)
!441 = !{!442, !450, !451}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !440, file: !54, line: 387, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_iovec_", file: !54, line: 366, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !446, line: 26, size: 128, elements: !447)
!446 = !DIFile(filename: "/nix/store/q141hd8jl7in5223jmf7kmx9h517km4p-glibc-2.32-54-dev/include/bits/types/struct_iovec.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !445, file: !446, line: 28, baseType: !144, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !445, file: !446, line: 29, baseType: !150, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !440, file: !54, line: 393, baseType: !150, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !440, file: !54, line: 400, baseType: !150, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "resp_sender", scope: !208, file: !54, line: 956, baseType: !82, size: 32, offset: 2240)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "continue_message_write_offset", scope: !208, file: !54, line: 963, baseType: !150, size: 64, offset: 2304)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "addr_len", scope: !208, file: !54, line: 968, baseType: !276, size: 32, offset: 2368)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "last_activity", scope: !208, file: !54, line: 974, baseType: !389, size: 64, offset: 2432)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "connection_timeout", scope: !208, file: !54, line: 980, baseType: !389, size: 64, offset: 2496)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "connection_timeout_dummy", scope: !208, file: !54, line: 985, baseType: !5, size: 32, offset: 2560)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "client_aware", scope: !208, file: !54, line: 992, baseType: !244, size: 8, offset: 2592)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "socket_fd", scope: !208, file: !54, line: 999, baseType: !322, size: 32, offset: 2624)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "is_nonip", scope: !208, file: !54, line: 1005, baseType: !53, size: 32, offset: 2656)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sk_nonblck", scope: !208, file: !54, line: 1010, baseType: !244, size: 8, offset: 2688)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sk_spipe_suppress", scope: !208, file: !54, line: 1015, baseType: !244, size: 8, offset: 2696)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sk_corked", scope: !208, file: !54, line: 1020, baseType: !53, size: 32, offset: 2720)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sk_nodelay", scope: !208, file: !54, line: 1025, baseType: !53, size: 32, offset: 2752)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "read_closed", scope: !208, file: !54, line: 1033, baseType: !244, size: 8, offset: 2784)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_joined", scope: !208, file: !54, line: 1039, baseType: !244, size: 8, offset: 2792)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "in_idle", scope: !208, file: !54, line: 1046, baseType: !244, size: 8, offset: 2800)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "in_cleanup", scope: !208, file: !54, line: 1052, baseType: !244, size: 8, offset: 2808)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_state", scope: !208, file: !54, line: 1058, baseType: !86, size: 32, offset: 2816)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !208, file: !54, line: 1064, baseType: !95, size: 32, offset: 2848)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "event_loop_info", scope: !208, file: !54, line: 1069, baseType: !118, size: 32, offset: 2880)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "responseCode", scope: !208, file: !54, line: 1075, baseType: !5, size: 32, offset: 2912)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "have_chunked_upload", scope: !208, file: !54, line: 1084, baseType: !244, size: 8, offset: 2944)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "current_chunk_size", scope: !208, file: !54, line: 1092, baseType: !195, size: 64, offset: 3008)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "current_chunk_offset", scope: !208, file: !54, line: 1098, baseType: !195, size: 64, offset: 3072)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "recv_cls", scope: !208, file: !54, line: 1103, baseType: !477, size: 64, offset: 3136)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReceiveCallback", file: !54, line: 695, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!192, !207, !144, !150}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "urh", scope: !208, file: !54, line: 1112, baseType: !246, size: 64, offset: 3200)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !208, file: !54, line: 1147, baseType: !244, size: 8, offset: 3264)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_dummy", scope: !208, file: !54, line: 1152, baseType: !55, size: 32, offset: 3296)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "resuming", scope: !208, file: !54, line: 1157, baseType: !251, size: 8, offset: 3328)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade_handler_cls", scope: !171, file: !54, line: 451, baseType: !144, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !171, file: !54, line: 459, baseType: !342, size: 320, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !171, file: !54, line: 465, baseType: !195, size: 64, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "data_start", scope: !171, file: !54, line: 471, baseType: !195, size: 64, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fd_off", scope: !171, file: !54, line: 476, baseType: !195, size: 64, offset: 896)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !171, file: !54, line: 482, baseType: !150, size: 64, offset: 960)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data_buffer_size", scope: !171, file: !54, line: 487, baseType: !150, size: 64, offset: 1024)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !171, file: !54, line: 493, baseType: !5, size: 32, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !171, file: !54, line: 498, baseType: !55, size: 32, offset: 1120)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !54, line: 503, baseType: !124, size: 32, offset: 1152)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "is_pipe", scope: !171, file: !54, line: 508, baseType: !244, size: 8, offset: 1184)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "data_iov", scope: !171, file: !54, line: 513, baseType: !443, size: 64, offset: 1216)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "data_iovcnt", scope: !171, file: !54, line: 518, baseType: !5, size: 32, offset: 1280)
!498 = !{!499, !500, !501}
!499 = !DILocalVariable(name: "response", arg: 1, scope: !167, file: !1, line: 134, type: !170)
!500 = !DILocalVariable(name: "header", arg: 2, scope: !167, file: !1, line: 135, type: !225)
!501 = !DILocalVariable(name: "content", arg: 3, scope: !167, file: !1, line: 136, type: !225)
!502 = !DILocation(line: 134, column: 47, scope: !167)
!503 = !DILocation(line: 135, column: 38, scope: !167)
!504 = !DILocation(line: 136, column: 38, scope: !167)
!505 = !DILocation(line: 138, column: 9, scope: !506)
!506 = distinct !DILexicalBlock(scope: !167, file: !1, line: 138, column: 8)
!507 = !DILocation(line: 139, column: 70, scope: !506)
!508 = !DILocation(line: 140, column: 11, scope: !506)
!509 = !DILocation(line: 141, column: 49, scope: !506)
!510 = !DILocation(line: 142, column: 11, scope: !506)
!511 = !DILocation(line: 138, column: 8, scope: !167)
!512 = !DILocation(line: 152, column: 27, scope: !513)
!513 = distinct !DILexicalBlock(scope: !167, file: !1, line: 151, column: 8)
!514 = !{!515, !517, i64 144}
!515 = !{!"MHD_Response", !516, i64 0, !516, i64 8, !516, i64 16, !516, i64 24, !516, i64 32, !516, i64 40, !516, i64 48, !517, i64 56, !519, i64 96, !519, i64 104, !519, i64 112, !519, i64 120, !519, i64 128, !520, i64 136, !520, i64 140, !517, i64 144, !521, i64 148, !516, i64 152, !520, i64 160}
!516 = !{!"any pointer", !517, i64 0}
!517 = !{!"omnipotent char", !518, i64 0}
!518 = !{!"Simple C/C++ TBAA"}
!519 = !{!"long", !517, i64 0}
!520 = !{!"int", !517, i64 0}
!521 = !{!"_Bool", !517, i64 0}
!522 = !DILocation(line: 152, column: 15, scope: !513)
!523 = !DILocation(line: 151, column: 11, scope: !513)
!524 = !DILocation(line: 152, column: 35, scope: !513)
!525 = !DILocation(line: 153, column: 9, scope: !513)
!526 = !DILocation(line: 151, column: 8, scope: !167)
!527 = !DILocation(line: 161, column: 10, scope: !167)
!528 = !DILocation(line: 161, column: 3, scope: !167)
!529 = !DILocation(line: 0, scope: !530)
!530 = distinct !DILexicalBlock(scope: !506, file: !1, line: 144, column: 3)
!531 = !DILocation(line: 165, column: 1, scope: !167)
!532 = distinct !DISubprogram(name: "add_response_entry", scope: !1, file: !1, line: 83, type: !533, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !535)
!533 = !DISubroutineType(types: !534)
!534 = !{!3, !170, !9, !225, !225}
!535 = !{!536, !537, !538, !539, !540}
!536 = !DILocalVariable(name: "response", arg: 1, scope: !532, file: !1, line: 83, type: !170)
!537 = !DILocalVariable(name: "kind", arg: 2, scope: !532, file: !1, line: 84, type: !9)
!538 = !DILocalVariable(name: "header", arg: 3, scope: !532, file: !1, line: 85, type: !225)
!539 = !DILocalVariable(name: "content", arg: 4, scope: !532, file: !1, line: 86, type: !225)
!540 = !DILocalVariable(name: "hdr", scope: !532, file: !1, line: 88, type: !174)
!541 = !DILocation(line: 83, column: 42, scope: !532)
!542 = !DILocation(line: 84, column: 40, scope: !532)
!543 = !DILocation(line: 85, column: 33, scope: !532)
!544 = !DILocation(line: 86, column: 33, scope: !532)
!545 = !DILocation(line: 90, column: 14, scope: !546)
!546 = distinct !DILexicalBlock(scope: !532, file: !1, line: 90, column: 8)
!547 = !DILocation(line: 91, column: 14, scope: !546)
!548 = !DILocation(line: 90, column: 27, scope: !546)
!549 = !DILocation(line: 92, column: 14, scope: !546)
!550 = !DILocation(line: 93, column: 14, scope: !546)
!551 = !{!517, !517, i64 0}
!552 = !DILocation(line: 93, column: 11, scope: !546)
!553 = !DILocation(line: 93, column: 25, scope: !546)
!554 = !DILocation(line: 94, column: 14, scope: !546)
!555 = !DILocation(line: 94, column: 11, scope: !546)
!556 = !DILocation(line: 94, column: 26, scope: !546)
!557 = !DILocation(line: 95, column: 17, scope: !546)
!558 = !DILocation(line: 95, column: 14, scope: !546)
!559 = !DILocation(line: 95, column: 40, scope: !546)
!560 = !DILocation(line: 96, column: 17, scope: !546)
!561 = !DILocation(line: 96, column: 14, scope: !546)
!562 = !DILocation(line: 96, column: 40, scope: !546)
!563 = !DILocation(line: 97, column: 17, scope: !546)
!564 = !DILocation(line: 97, column: 14, scope: !546)
!565 = !DILocation(line: 97, column: 40, scope: !546)
!566 = !DILocation(line: 98, column: 17, scope: !546)
!567 = !DILocation(line: 98, column: 14, scope: !546)
!568 = !DILocation(line: 98, column: 41, scope: !546)
!569 = !DILocation(line: 99, column: 17, scope: !546)
!570 = !DILocation(line: 99, column: 14, scope: !546)
!571 = !DILocation(line: 99, column: 41, scope: !546)
!572 = !DILocation(line: 100, column: 17, scope: !546)
!573 = !DILocation(line: 100, column: 14, scope: !546)
!574 = !DILocation(line: 90, column: 8, scope: !532)
!575 = !DILocation(line: 102, column: 22, scope: !576)
!576 = distinct !DILexicalBlock(scope: !532, file: !1, line: 102, column: 7)
!577 = !DILocation(line: 88, column: 27, scope: !532)
!578 = !DILocation(line: 102, column: 12, scope: !576)
!579 = !DILocation(line: 102, column: 7, scope: !532)
!580 = !DILocation(line: 104, column: 30, scope: !581)
!581 = distinct !DILexicalBlock(scope: !532, file: !1, line: 104, column: 7)
!582 = !DILocation(line: 104, column: 21, scope: !581)
!583 = !DILocation(line: 104, column: 28, scope: !581)
!584 = !{!585, !516, i64 8}
!585 = !{!"MHD_HTTP_Header", !516, i64 0, !516, i64 8, !519, i64 16, !516, i64 24, !519, i64 32, !517, i64 40}
!586 = !DILocation(line: 104, column: 12, scope: !581)
!587 = !DILocation(line: 104, column: 7, scope: !532)
!588 = !DILocation(line: 106, column: 5, scope: !589)
!589 = distinct !DILexicalBlock(scope: !581, file: !1, line: 105, column: 3)
!590 = !DILocation(line: 107, column: 5, scope: !589)
!591 = !DILocation(line: 109, column: 22, scope: !532)
!592 = !DILocation(line: 109, column: 8, scope: !532)
!593 = !DILocation(line: 109, column: 20, scope: !532)
!594 = !{!585, !519, i64 16}
!595 = !DILocation(line: 110, column: 29, scope: !596)
!596 = distinct !DILexicalBlock(scope: !532, file: !1, line: 110, column: 7)
!597 = !DILocation(line: 110, column: 21, scope: !596)
!598 = !DILocation(line: 110, column: 27, scope: !596)
!599 = !{!585, !516, i64 24}
!600 = !DILocation(line: 110, column: 12, scope: !596)
!601 = !DILocation(line: 110, column: 7, scope: !532)
!602 = !DILocation(line: 112, column: 5, scope: !603)
!603 = distinct !DILexicalBlock(scope: !596, file: !1, line: 111, column: 3)
!604 = !DILocation(line: 113, column: 5, scope: !603)
!605 = !DILocation(line: 114, column: 5, scope: !603)
!606 = !DILocation(line: 116, column: 21, scope: !532)
!607 = !DILocation(line: 116, column: 8, scope: !532)
!608 = !DILocation(line: 116, column: 19, scope: !532)
!609 = !{!585, !519, i64 32}
!610 = !DILocation(line: 117, column: 8, scope: !532)
!611 = !DILocation(line: 117, column: 13, scope: !532)
!612 = !{!585, !517, i64 40}
!613 = !DILocation(line: 118, column: 25, scope: !532)
!614 = !{!515, !516, i64 0}
!615 = !DILocation(line: 118, column: 13, scope: !532)
!616 = !{!585, !516, i64 0}
!617 = !DILocation(line: 119, column: 26, scope: !532)
!618 = !DILocation(line: 120, column: 3, scope: !532)
!619 = !DILocation(line: 0, scope: !532)
!620 = !DILocation(line: 121, column: 1, scope: !532)
!621 = distinct !DISubprogram(name: "MHD_add_response_footer", scope: !1, file: !1, line: 178, type: !168, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !622)
!622 = !{!623, !624, !625}
!623 = !DILocalVariable(name: "response", arg: 1, scope: !621, file: !1, line: 178, type: !170)
!624 = !DILocalVariable(name: "footer", arg: 2, scope: !621, file: !1, line: 179, type: !225)
!625 = !DILocalVariable(name: "content", arg: 3, scope: !621, file: !1, line: 180, type: !225)
!626 = !DILocation(line: 178, column: 47, scope: !621)
!627 = !DILocation(line: 179, column: 38, scope: !621)
!628 = !DILocation(line: 180, column: 38, scope: !621)
!629 = !DILocation(line: 182, column: 10, scope: !621)
!630 = !DILocation(line: 182, column: 3, scope: !621)
!631 = distinct !DISubprogram(name: "MHD_del_response_header", scope: !1, file: !1, line: 199, type: !168, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639}
!633 = !DILocalVariable(name: "response", arg: 1, scope: !631, file: !1, line: 199, type: !170)
!634 = !DILocalVariable(name: "header", arg: 2, scope: !631, file: !1, line: 200, type: !225)
!635 = !DILocalVariable(name: "content", arg: 3, scope: !631, file: !1, line: 201, type: !225)
!636 = !DILocalVariable(name: "pos", scope: !631, file: !1, line: 203, type: !174)
!637 = !DILocalVariable(name: "prev", scope: !631, file: !1, line: 204, type: !174)
!638 = !DILocalVariable(name: "header_len", scope: !631, file: !1, line: 205, type: !150)
!639 = !DILocalVariable(name: "content_len", scope: !631, file: !1, line: 206, type: !150)
!640 = !DILocation(line: 199, column: 47, scope: !631)
!641 = !DILocation(line: 200, column: 38, scope: !631)
!642 = !DILocation(line: 201, column: 38, scope: !631)
!643 = !DILocation(line: 208, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !631, file: !1, line: 208, column: 8)
!645 = !DILocation(line: 209, column: 14, scope: !644)
!646 = !DILocation(line: 208, column: 25, scope: !644)
!647 = !DILocation(line: 211, column: 16, scope: !631)
!648 = !DILocation(line: 205, column: 10, scope: !631)
!649 = !DILocation(line: 212, column: 17, scope: !631)
!650 = !DILocation(line: 206, column: 10, scope: !631)
!651 = !DILocation(line: 204, column: 27, scope: !631)
!652 = !DILocation(line: 214, column: 19, scope: !631)
!653 = !DILocation(line: 203, column: 27, scope: !631)
!654 = !DILocation(line: 0, scope: !655)
!655 = distinct !DILexicalBlock(scope: !631, file: !1, line: 216, column: 3)
!656 = !{!516, !516, i64 0}
!657 = !DILocation(line: 215, column: 15, scope: !631)
!658 = !DILocation(line: 215, column: 3, scope: !631)
!659 = !DILocation(line: 217, column: 29, scope: !660)
!660 = distinct !DILexicalBlock(scope: !655, file: !1, line: 217, column: 9)
!661 = !DILocation(line: 217, column: 21, scope: !660)
!662 = !DILocation(line: 217, column: 42, scope: !660)
!663 = !DILocation(line: 218, column: 30, scope: !660)
!664 = !DILocation(line: 218, column: 22, scope: !660)
!665 = !DILocation(line: 218, column: 42, scope: !660)
!666 = !DILocation(line: 220, column: 28, scope: !660)
!667 = !DILocation(line: 219, column: 15, scope: !660)
!668 = !DILocation(line: 219, column: 12, scope: !660)
!669 = !DILocation(line: 221, column: 36, scope: !660)
!670 = !DILocation(line: 223, column: 28, scope: !660)
!671 = !DILocation(line: 222, column: 15, scope: !660)
!672 = !DILocation(line: 222, column: 12, scope: !660)
!673 = !DILocation(line: 217, column: 9, scope: !655)
!674 = !DILocation(line: 226, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !660, file: !1, line: 225, column: 5)
!676 = !DILocation(line: 227, column: 18, scope: !675)
!677 = !DILocation(line: 227, column: 7, scope: !675)
!678 = !DILocation(line: 228, column: 16, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !1, line: 228, column: 11)
!680 = !DILocation(line: 0, scope: !679)
!681 = !DILocation(line: 231, column: 20, scope: !679)
!682 = !DILocation(line: 229, column: 32, scope: !679)
!683 = !DILocation(line: 228, column: 11, scope: !675)
!684 = !DILocation(line: 232, column: 13, scope: !675)
!685 = !DILocation(line: 232, column: 7, scope: !675)
!686 = !DILocation(line: 233, column: 7, scope: !675)
!687 = !DILocation(line: 236, column: 16, scope: !655)
!688 = distinct !{!688, !658, !689}
!689 = !DILocation(line: 237, column: 3, scope: !631)
!690 = !DILocation(line: 0, scope: !631)
!691 = !DILocation(line: 239, column: 1, scope: !631)
!692 = distinct !DISubprogram(name: "MHD_get_response_headers", scope: !1, file: !1, line: 253, type: !693, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !699)
!693 = !DISubroutineType(types: !694)
!694 = !{!55, !170, !695, !144}
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "MHD_KeyValueIterator", file: !4, line: 2298, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!3, !144, !9, !225, !225}
!699 = !{!700, !701, !702, !703, !704}
!700 = !DILocalVariable(name: "response", arg: 1, scope: !692, file: !1, line: 253, type: !170)
!701 = !DILocalVariable(name: "iterator", arg: 2, scope: !692, file: !1, line: 254, type: !695)
!702 = !DILocalVariable(name: "iterator_cls", arg: 3, scope: !692, file: !1, line: 255, type: !144)
!703 = !DILocalVariable(name: "numHeaders", scope: !692, file: !1, line: 257, type: !55)
!704 = !DILocalVariable(name: "pos", scope: !692, file: !1, line: 258, type: !174)
!705 = !DILocation(line: 253, column: 48, scope: !692)
!706 = !DILocation(line: 254, column: 48, scope: !692)
!707 = !DILocation(line: 255, column: 33, scope: !692)
!708 = !DILocation(line: 257, column: 7, scope: !692)
!709 = !DILocation(line: 260, column: 24, scope: !710)
!710 = distinct !DILexicalBlock(scope: !692, file: !1, line: 260, column: 3)
!711 = !DILocation(line: 258, column: 27, scope: !692)
!712 = !DILocation(line: 0, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !1, line: 260, column: 3)
!714 = !DILocation(line: 261, column: 13, scope: !713)
!715 = !DILocation(line: 260, column: 3, scope: !710)
!716 = !DILocation(line: 264, column: 15, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !1, line: 263, column: 3)
!718 = !DILocation(line: 265, column: 28, scope: !719)
!719 = distinct !DILexicalBlock(scope: !717, file: !1, line: 265, column: 9)
!720 = !DILocation(line: 267, column: 35, scope: !719)
!721 = !DILocation(line: 268, column: 35, scope: !719)
!722 = !DILocation(line: 269, column: 35, scope: !719)
!723 = !DILocation(line: 266, column: 20, scope: !719)
!724 = !DILocation(line: 266, column: 17, scope: !719)
!725 = !DILocation(line: 265, column: 9, scope: !717)
!726 = !DILocation(line: 262, column: 19, scope: !713)
!727 = distinct !{!727, !715, !728}
!728 = !DILocation(line: 271, column: 3, scope: !710)
!729 = !DILocation(line: 0, scope: !692)
!730 = !DILocation(line: 272, column: 3, scope: !692)
!731 = distinct !DISubprogram(name: "MHD_get_response_header", scope: !1, file: !1, line: 285, type: !732, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!225, !170, !225}
!734 = !{!735, !736, !737, !738}
!735 = !DILocalVariable(name: "response", arg: 1, scope: !731, file: !1, line: 285, type: !170)
!736 = !DILocalVariable(name: "key", arg: 2, scope: !731, file: !1, line: 286, type: !225)
!737 = !DILocalVariable(name: "pos", scope: !731, file: !1, line: 288, type: !174)
!738 = !DILocalVariable(name: "key_size", scope: !731, file: !1, line: 289, type: !150)
!739 = !DILocation(line: 285, column: 47, scope: !731)
!740 = !DILocation(line: 286, column: 38, scope: !731)
!741 = !DILocation(line: 291, column: 12, scope: !742)
!742 = distinct !DILexicalBlock(scope: !731, file: !1, line: 291, column: 7)
!743 = !DILocation(line: 291, column: 7, scope: !731)
!744 = !DILocation(line: 294, column: 14, scope: !731)
!745 = !DILocation(line: 289, column: 10, scope: !731)
!746 = !DILocation(line: 295, column: 24, scope: !747)
!747 = distinct !DILexicalBlock(scope: !731, file: !1, line: 295, column: 3)
!748 = !DILocation(line: 288, column: 27, scope: !731)
!749 = !DILocation(line: 0, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !1, line: 295, column: 3)
!751 = !DILocation(line: 296, column: 13, scope: !750)
!752 = !DILocation(line: 295, column: 3, scope: !747)
!753 = !DILocation(line: 299, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !1, line: 299, column: 9)
!755 = distinct !DILexicalBlock(scope: !750, file: !1, line: 298, column: 3)
!756 = !DILocation(line: 299, column: 27, scope: !754)
!757 = !DILocation(line: 299, column: 40, scope: !754)
!758 = !DILocation(line: 300, column: 46, scope: !754)
!759 = !DILocation(line: 300, column: 10, scope: !754)
!760 = !DILocation(line: 299, column: 9, scope: !755)
!761 = !DILocation(line: 301, column: 19, scope: !754)
!762 = !DILocation(line: 301, column: 7, scope: !754)
!763 = !DILocation(line: 297, column: 19, scope: !750)
!764 = distinct !{!764, !752, !765}
!765 = !DILocation(line: 302, column: 3, scope: !747)
!766 = !DILocation(line: 0, scope: !731)
!767 = !DILocation(line: 304, column: 1, scope: !731)
!768 = distinct !DISubprogram(name: "MHD_check_response_header_token_ci", scope: !1, file: !1, line: 324, type: !769, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !773)
!769 = !DISubroutineType(types: !770)
!770 = !{!244, !771, !225, !150, !225, !150}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!773 = !{!774, !775, !776, !777, !778, !779}
!774 = !DILocalVariable(name: "response", arg: 1, scope: !768, file: !1, line: 324, type: !771)
!775 = !DILocalVariable(name: "key", arg: 2, scope: !768, file: !1, line: 325, type: !225)
!776 = !DILocalVariable(name: "key_len", arg: 3, scope: !768, file: !1, line: 326, type: !150)
!777 = !DILocalVariable(name: "token", arg: 4, scope: !768, file: !1, line: 327, type: !225)
!778 = !DILocalVariable(name: "token_len", arg: 5, scope: !768, file: !1, line: 328, type: !150)
!779 = !DILocalVariable(name: "pos", scope: !768, file: !1, line: 330, type: !174)
!780 = !DILocation(line: 324, column: 64, scope: !768)
!781 = !DILocation(line: 325, column: 49, scope: !768)
!782 = !DILocation(line: 326, column: 44, scope: !768)
!783 = !DILocation(line: 327, column: 49, scope: !768)
!784 = !DILocation(line: 328, column: 44, scope: !768)
!785 = !DILocation(line: 332, column: 14, scope: !786)
!786 = distinct !DILexicalBlock(scope: !768, file: !1, line: 332, column: 8)
!787 = !DILocation(line: 332, column: 22, scope: !786)
!788 = !DILocation(line: 333, column: 17, scope: !786)
!789 = !DILocation(line: 333, column: 14, scope: !786)
!790 = !DILocation(line: 334, column: 14, scope: !786)
!791 = !DILocation(line: 333, column: 25, scope: !786)
!792 = !DILocation(line: 335, column: 17, scope: !786)
!793 = !DILocation(line: 335, column: 14, scope: !786)
!794 = !DILocation(line: 332, column: 8, scope: !768)
!795 = !DILocation(line: 341, column: 24, scope: !796)
!796 = distinct !DILexicalBlock(scope: !768, file: !1, line: 341, column: 3)
!797 = !DILocation(line: 330, column: 27, scope: !768)
!798 = !DILocation(line: 0, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !1, line: 341, column: 3)
!800 = !DILocation(line: 342, column: 13, scope: !799)
!801 = !DILocation(line: 341, column: 3, scope: !796)
!802 = !DILocation(line: 345, column: 16, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !1, line: 345, column: 10)
!804 = distinct !DILexicalBlock(scope: !799, file: !1, line: 344, column: 3)
!805 = !DILocation(line: 345, column: 21, scope: !803)
!806 = !DILocation(line: 345, column: 41, scope: !803)
!807 = !DILocation(line: 346, column: 27, scope: !803)
!808 = !DILocation(line: 346, column: 19, scope: !803)
!809 = !DILocation(line: 346, column: 40, scope: !803)
!810 = !DILocation(line: 347, column: 46, scope: !803)
!811 = !DILocation(line: 347, column: 10, scope: !803)
!812 = !DILocation(line: 349, column: 50, scope: !803)
!813 = !DILocation(line: 350, column: 44, scope: !803)
!814 = !DILocation(line: 350, column: 10, scope: !803)
!815 = !DILocation(line: 345, column: 10, scope: !804)
!816 = !DILocation(line: 343, column: 19, scope: !799)
!817 = distinct !{!817, !801, !818}
!818 = !DILocation(line: 354, column: 3, scope: !796)
!819 = !DILocation(line: 0, scope: !768)
!820 = !DILocation(line: 356, column: 1, scope: !768)
!821 = distinct !DISubprogram(name: "MHD_create_response_from_callback", scope: !1, file: !1, line: 376, type: !822, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{!170, !195, !150, !188, !144, !198}
!824 = !{!825, !826, !827, !828, !829, !830}
!825 = !DILocalVariable(name: "size", arg: 1, scope: !821, file: !1, line: 376, type: !195)
!826 = !DILocalVariable(name: "block_size", arg: 2, scope: !821, file: !1, line: 377, type: !150)
!827 = !DILocalVariable(name: "crc", arg: 3, scope: !821, file: !1, line: 378, type: !188)
!828 = !DILocalVariable(name: "crc_cls", arg: 4, scope: !821, file: !1, line: 379, type: !144)
!829 = !DILocalVariable(name: "crfc", arg: 5, scope: !821, file: !1, line: 380, type: !198)
!830 = !DILocalVariable(name: "response", scope: !821, file: !1, line: 382, type: !170)
!831 = !DILocation(line: 376, column: 45, scope: !821)
!832 = !DILocation(line: 377, column: 43, scope: !821)
!833 = !DILocation(line: 378, column: 62, scope: !821)
!834 = !DILocation(line: 379, column: 42, scope: !821)
!835 = !DILocation(line: 380, column: 66, scope: !821)
!836 = !DILocation(line: 384, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !821, file: !1, line: 384, column: 7)
!838 = !DILocation(line: 384, column: 27, scope: !837)
!839 = !DILocation(line: 384, column: 21, scope: !837)
!840 = !DILocation(line: 386, column: 27, scope: !841)
!841 = distinct !DILexicalBlock(scope: !821, file: !1, line: 386, column: 7)
!842 = !DILocation(line: 382, column: 24, scope: !821)
!843 = !DILocation(line: 386, column: 12, scope: !841)
!844 = !DILocation(line: 386, column: 7, scope: !821)
!845 = !DILocation(line: 389, column: 13, scope: !821)
!846 = !DILocation(line: 389, column: 16, scope: !821)
!847 = !{!515, !520, i64 140}
!848 = !DILocation(line: 390, column: 30, scope: !821)
!849 = !DILocation(line: 390, column: 13, scope: !821)
!850 = !DILocation(line: 390, column: 18, scope: !821)
!851 = !{!515, !516, i64 8}
!852 = !DILocation(line: 391, column: 13, scope: !821)
!853 = !DILocation(line: 391, column: 30, scope: !821)
!854 = !{!515, !519, i64 128}
!855 = !DILocation(line: 393, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !821, file: !1, line: 393, column: 7)
!857 = !DILocation(line: 393, column: 7, scope: !821)
!858 = !DILocation(line: 395, column: 5, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !1, line: 394, column: 3)
!860 = !DILocation(line: 396, column: 5, scope: !859)
!861 = !DILocation(line: 399, column: 13, scope: !821)
!862 = !DILocation(line: 399, column: 17, scope: !821)
!863 = !{!515, !516, i64 24}
!864 = !DILocation(line: 400, column: 13, scope: !821)
!865 = !DILocation(line: 400, column: 18, scope: !821)
!866 = !{!515, !516, i64 32}
!867 = !DILocation(line: 401, column: 13, scope: !821)
!868 = !DILocation(line: 401, column: 21, scope: !821)
!869 = !{!515, !516, i64 16}
!870 = !DILocation(line: 402, column: 13, scope: !821)
!871 = !DILocation(line: 402, column: 29, scope: !821)
!872 = !{!515, !520, i64 136}
!873 = !DILocation(line: 403, column: 13, scope: !821)
!874 = !DILocation(line: 403, column: 24, scope: !821)
!875 = !{!515, !519, i64 96}
!876 = !DILocation(line: 404, column: 3, scope: !821)
!877 = !DILocation(line: 0, scope: !821)
!878 = !DILocation(line: 405, column: 1, scope: !821)
!879 = distinct !DISubprogram(name: "MHD_set_response_options", scope: !1, file: !1, line: 417, type: !880, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{!3, !170, !124, null}
!882 = !{!883, !884, !885, !893, !894}
!883 = !DILocalVariable(name: "response", arg: 1, scope: !879, file: !1, line: 417, type: !170)
!884 = !DILocalVariable(name: "flags", arg: 2, scope: !879, file: !1, line: 418, type: !124)
!885 = !DILocalVariable(name: "ap", scope: !879, file: !1, line: 421, type: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !193, line: 52, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !888, line: 48, baseType: !889)
!888 = !DIFile(filename: "/nix/store/9kpya70w4q7js35f34c572f1yyq0c2bh-clang-wrapper-7.1.0/resource-root/include/stdarg.h", directory: "/home/user/haskell/iiglue-bundle/examples/libmicrohttpd-0.9.73")
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 421, baseType: !890)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 192, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 1)
!893 = !DILocalVariable(name: "ret", scope: !879, file: !1, line: 422, type: !3)
!894 = !DILocalVariable(name: "ro", scope: !879, file: !1, line: 423, type: !130)
!895 = !DILocation(line: 417, column: 48, scope: !879)
!896 = !DILocation(line: 418, column: 50, scope: !879)
!897 = !DILocation(line: 421, column: 3, scope: !879)
!898 = !DILocation(line: 421, column: 11, scope: !879)
!899 = !DILocation(line: 422, column: 19, scope: !879)
!900 = !DILocation(line: 426, column: 13, scope: !879)
!901 = !DILocation(line: 426, column: 19, scope: !879)
!902 = !DILocation(line: 427, column: 3, scope: !879)
!903 = !DILocation(line: 428, column: 30, scope: !879)
!904 = !DILocation(line: 423, column: 28, scope: !879)
!905 = !DILocation(line: 428, column: 21, scope: !879)
!906 = !DILocation(line: 428, column: 3, scope: !879)
!907 = distinct !{!907, !906, !908}
!908 = !DILocation(line: 436, column: 3, scope: !879)
!909 = distinct !{!909, !906, !908, !910}
!910 = !{!"llvm.loop.unroll.disable"}
!911 = !DILocation(line: 0, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !1, line: 431, column: 5)
!913 = distinct !DILexicalBlock(scope: !879, file: !1, line: 429, column: 3)
!914 = !DILocation(line: 437, column: 3, scope: !879)
!915 = !DILocation(line: 439, column: 1, scope: !879)
!916 = !DILocation(line: 438, column: 3, scope: !879)
!917 = distinct !DISubprogram(name: "MHD_create_response_from_fd_at_offset", scope: !1, file: !1, line: 604, type: !918, isLocal: false, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !922)
!918 = !DISubroutineType(types: !919)
!919 = !{!170, !150, !55, !920}
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !193, line: 63, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !148, line: 152, baseType: !149)
!922 = !{!923, !924, !925}
!923 = !DILocalVariable(name: "size", arg: 1, scope: !917, file: !1, line: 604, type: !150)
!924 = !DILocalVariable(name: "fd", arg: 2, scope: !917, file: !1, line: 605, type: !55)
!925 = !DILocalVariable(name: "offset", arg: 3, scope: !917, file: !1, line: 606, type: !920)
!926 = !DILocation(line: 604, column: 47, scope: !917)
!927 = !DILocation(line: 605, column: 44, scope: !917)
!928 = !DILocation(line: 606, column: 46, scope: !917)
!929 = !DILocalVariable(name: "size", arg: 1, scope: !930, file: !1, line: 631, type: !195)
!930 = distinct !DISubprogram(name: "MHD_create_response_from_fd_at_offset64", scope: !1, file: !1, line: 631, type: !931, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!170, !195, !55, !195}
!933 = !{!929, !934, !935, !936}
!934 = !DILocalVariable(name: "fd", arg: 2, scope: !930, file: !1, line: 632, type: !55)
!935 = !DILocalVariable(name: "offset", arg: 3, scope: !930, file: !1, line: 633, type: !195)
!936 = !DILocalVariable(name: "response", scope: !930, file: !1, line: 635, type: !170)
!937 = !DILocation(line: 631, column: 51, scope: !930, inlinedAt: !938)
!938 = distinct !DILocation(line: 608, column: 10, scope: !917)
!939 = !DILocation(line: 632, column: 46, scope: !930, inlinedAt: !938)
!940 = !DILocation(line: 633, column: 51, scope: !930, inlinedAt: !938)
!941 = !DILocation(line: 644, column: 29, scope: !942, inlinedAt: !938)
!942 = distinct !DILexicalBlock(scope: !930, file: !1, line: 644, column: 8)
!943 = !DILocation(line: 646, column: 25, scope: !942, inlinedAt: !938)
!944 = !DILocation(line: 376, column: 45, scope: !821, inlinedAt: !945)
!945 = distinct !DILocation(line: 649, column: 14, scope: !930, inlinedAt: !938)
!946 = !DILocation(line: 377, column: 43, scope: !821, inlinedAt: !945)
!947 = !DILocation(line: 378, column: 62, scope: !821, inlinedAt: !945)
!948 = !DILocation(line: 379, column: 42, scope: !821, inlinedAt: !945)
!949 = !DILocation(line: 380, column: 66, scope: !821, inlinedAt: !945)
!950 = !DILocation(line: 386, column: 27, scope: !841, inlinedAt: !945)
!951 = !DILocation(line: 382, column: 24, scope: !821, inlinedAt: !945)
!952 = !DILocation(line: 386, column: 12, scope: !841, inlinedAt: !945)
!953 = !DILocation(line: 386, column: 7, scope: !821, inlinedAt: !945)
!954 = !DILocation(line: 389, column: 13, scope: !821, inlinedAt: !945)
!955 = !DILocation(line: 389, column: 16, scope: !821, inlinedAt: !945)
!956 = !DILocation(line: 390, column: 30, scope: !821, inlinedAt: !945)
!957 = !DILocation(line: 390, column: 13, scope: !821, inlinedAt: !945)
!958 = !DILocation(line: 390, column: 18, scope: !821, inlinedAt: !945)
!959 = !DILocation(line: 391, column: 13, scope: !821, inlinedAt: !945)
!960 = !DILocation(line: 391, column: 30, scope: !821, inlinedAt: !945)
!961 = !DILocation(line: 393, column: 9, scope: !856, inlinedAt: !945)
!962 = !DILocation(line: 393, column: 7, scope: !821, inlinedAt: !945)
!963 = !DILocation(line: 395, column: 5, scope: !859, inlinedAt: !945)
!964 = !DILocation(line: 396, column: 5, scope: !859, inlinedAt: !945)
!965 = !DILocation(line: 399, column: 13, scope: !821, inlinedAt: !945)
!966 = !DILocation(line: 399, column: 17, scope: !821, inlinedAt: !945)
!967 = !DILocation(line: 400, column: 13, scope: !821, inlinedAt: !945)
!968 = !DILocation(line: 400, column: 18, scope: !821, inlinedAt: !945)
!969 = !DILocation(line: 401, column: 13, scope: !821, inlinedAt: !945)
!970 = !DILocation(line: 402, column: 13, scope: !821, inlinedAt: !945)
!971 = !DILocation(line: 402, column: 29, scope: !821, inlinedAt: !945)
!972 = !DILocation(line: 403, column: 13, scope: !821, inlinedAt: !945)
!973 = !DILocation(line: 403, column: 24, scope: !821, inlinedAt: !945)
!974 = !DILocation(line: 635, column: 24, scope: !930, inlinedAt: !938)
!975 = !DILocation(line: 656, column: 16, scope: !930, inlinedAt: !938)
!976 = !DILocation(line: 657, column: 13, scope: !930, inlinedAt: !938)
!977 = !DILocation(line: 657, column: 21, scope: !930, inlinedAt: !938)
!978 = !{!515, !521, i64 148}
!979 = !DILocation(line: 658, column: 13, scope: !930, inlinedAt: !938)
!980 = !DILocation(line: 658, column: 20, scope: !930, inlinedAt: !938)
!981 = !{!515, !519, i64 112}
!982 = !DILocation(line: 659, column: 21, scope: !930, inlinedAt: !938)
!983 = !DILocation(line: 660, column: 3, scope: !930, inlinedAt: !938)
!984 = !DILocation(line: 0, scope: !930, inlinedAt: !938)
!985 = !DILocation(line: 608, column: 3, scope: !917)
!986 = !DILocation(line: 631, column: 51, scope: !930)
!987 = !DILocation(line: 632, column: 46, scope: !930)
!988 = !DILocation(line: 633, column: 51, scope: !930)
!989 = !DILocation(line: 644, column: 29, scope: !942)
!990 = !DILocation(line: 646, column: 25, scope: !942)
!991 = !DILocation(line: 376, column: 45, scope: !821, inlinedAt: !992)
!992 = distinct !DILocation(line: 649, column: 14, scope: !930)
!993 = !DILocation(line: 377, column: 43, scope: !821, inlinedAt: !992)
!994 = !DILocation(line: 378, column: 62, scope: !821, inlinedAt: !992)
!995 = !DILocation(line: 379, column: 42, scope: !821, inlinedAt: !992)
!996 = !DILocation(line: 380, column: 66, scope: !821, inlinedAt: !992)
!997 = !DILocation(line: 386, column: 27, scope: !841, inlinedAt: !992)
!998 = !DILocation(line: 382, column: 24, scope: !821, inlinedAt: !992)
!999 = !DILocation(line: 386, column: 12, scope: !841, inlinedAt: !992)
!1000 = !DILocation(line: 386, column: 7, scope: !821, inlinedAt: !992)
!1001 = !DILocation(line: 389, column: 13, scope: !821, inlinedAt: !992)
!1002 = !DILocation(line: 389, column: 16, scope: !821, inlinedAt: !992)
!1003 = !DILocation(line: 390, column: 30, scope: !821, inlinedAt: !992)
!1004 = !DILocation(line: 390, column: 13, scope: !821, inlinedAt: !992)
!1005 = !DILocation(line: 390, column: 18, scope: !821, inlinedAt: !992)
!1006 = !DILocation(line: 391, column: 13, scope: !821, inlinedAt: !992)
!1007 = !DILocation(line: 391, column: 30, scope: !821, inlinedAt: !992)
!1008 = !DILocation(line: 393, column: 9, scope: !856, inlinedAt: !992)
!1009 = !DILocation(line: 393, column: 7, scope: !821, inlinedAt: !992)
!1010 = !DILocation(line: 395, column: 5, scope: !859, inlinedAt: !992)
!1011 = !DILocation(line: 396, column: 5, scope: !859, inlinedAt: !992)
!1012 = !DILocation(line: 399, column: 13, scope: !821, inlinedAt: !992)
!1013 = !DILocation(line: 399, column: 17, scope: !821, inlinedAt: !992)
!1014 = !DILocation(line: 400, column: 13, scope: !821, inlinedAt: !992)
!1015 = !DILocation(line: 400, column: 18, scope: !821, inlinedAt: !992)
!1016 = !DILocation(line: 401, column: 13, scope: !821, inlinedAt: !992)
!1017 = !DILocation(line: 402, column: 13, scope: !821, inlinedAt: !992)
!1018 = !DILocation(line: 402, column: 29, scope: !821, inlinedAt: !992)
!1019 = !DILocation(line: 403, column: 13, scope: !821, inlinedAt: !992)
!1020 = !DILocation(line: 403, column: 24, scope: !821, inlinedAt: !992)
!1021 = !DILocation(line: 635, column: 24, scope: !930)
!1022 = !DILocation(line: 656, column: 16, scope: !930)
!1023 = !DILocation(line: 657, column: 13, scope: !930)
!1024 = !DILocation(line: 657, column: 21, scope: !930)
!1025 = !DILocation(line: 658, column: 13, scope: !930)
!1026 = !DILocation(line: 658, column: 20, scope: !930)
!1027 = !DILocation(line: 659, column: 21, scope: !930)
!1028 = !DILocation(line: 660, column: 3, scope: !930)
!1029 = !DILocation(line: 0, scope: !930)
!1030 = !DILocation(line: 661, column: 1, scope: !930)
!1031 = distinct !DISubprogram(name: "file_reader", scope: !1, file: !1, line: 453, type: !190, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1033 = !DILocalVariable(name: "cls", arg: 1, scope: !1031, file: !1, line: 453, type: !144)
!1034 = !DILocalVariable(name: "pos", arg: 2, scope: !1031, file: !1, line: 454, type: !195)
!1035 = !DILocalVariable(name: "buf", arg: 3, scope: !1031, file: !1, line: 455, type: !179)
!1036 = !DILocalVariable(name: "max", arg: 4, scope: !1031, file: !1, line: 456, type: !150)
!1037 = !DILocalVariable(name: "response", scope: !1031, file: !1, line: 458, type: !170)
!1038 = !DILocalVariable(name: "n", scope: !1031, file: !1, line: 460, type: !192)
!1039 = !DILocalVariable(name: "offset64", scope: !1031, file: !1, line: 464, type: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!1041 = !DILocation(line: 453, column: 20, scope: !1031)
!1042 = !DILocation(line: 454, column: 23, scope: !1031)
!1043 = !DILocation(line: 455, column: 20, scope: !1031)
!1044 = !DILocation(line: 456, column: 21, scope: !1031)
!1045 = !DILocation(line: 458, column: 24, scope: !1031)
!1046 = !DILocation(line: 464, column: 55, scope: !1031)
!1047 = !DILocation(line: 464, column: 43, scope: !1031)
!1048 = !DILocation(line: 464, column: 17, scope: !1031)
!1049 = !DILocation(line: 466, column: 16, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 466, column: 7)
!1051 = !DILocation(line: 466, column: 7, scope: !1031)
!1052 = !DILocation(line: 470, column: 7, scope: !1031)
!1053 = !DILocation(line: 474, column: 26, scope: !1031)
!1054 = !DILocation(line: 474, column: 7, scope: !1031)
!1055 = !DILocation(line: 460, column: 11, scope: !1031)
!1056 = !DILocation(line: 502, column: 9, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 502, column: 7)
!1058 = !DILocation(line: 502, column: 7, scope: !1031)
!1059 = !DILocation(line: 504, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 504, column: 7)
!1061 = !DILocation(line: 505, column: 5, scope: !1060)
!1062 = !DILocation(line: 0, scope: !1031)
!1063 = !DILocation(line: 527, column: 1, scope: !1031)
!1064 = distinct !DISubprogram(name: "free_callback", scope: !1, file: !1, line: 576, type: !200, isLocal: true, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1065)
!1065 = !{!1066, !1067}
!1066 = !DILocalVariable(name: "cls", arg: 1, scope: !1064, file: !1, line: 576, type: !144)
!1067 = !DILocalVariable(name: "response", scope: !1064, file: !1, line: 578, type: !170)
!1068 = !DILocation(line: 576, column: 22, scope: !1064)
!1069 = !DILocation(line: 578, column: 24, scope: !1064)
!1070 = !DILocation(line: 580, column: 27, scope: !1064)
!1071 = !DILocation(line: 580, column: 10, scope: !1064)
!1072 = !DILocation(line: 581, column: 16, scope: !1064)
!1073 = !DILocation(line: 582, column: 1, scope: !1064)
!1074 = distinct !DISubprogram(name: "MHD_create_response_from_pipe", scope: !1, file: !1, line: 675, type: !1075, isLocal: false, isDefinition: true, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!170, !55}
!1077 = !{!1078, !1079}
!1078 = !DILocalVariable(name: "fd", arg: 1, scope: !1074, file: !1, line: 675, type: !55)
!1079 = !DILocalVariable(name: "response", scope: !1074, file: !1, line: 677, type: !170)
!1080 = !DILocation(line: 675, column: 36, scope: !1074)
!1081 = !DILocation(line: 376, column: 45, scope: !821, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 679, column: 14, scope: !1074)
!1083 = !DILocation(line: 377, column: 43, scope: !821, inlinedAt: !1082)
!1084 = !DILocation(line: 378, column: 62, scope: !821, inlinedAt: !1082)
!1085 = !DILocation(line: 379, column: 42, scope: !821, inlinedAt: !1082)
!1086 = !DILocation(line: 380, column: 66, scope: !821, inlinedAt: !1082)
!1087 = !DILocation(line: 386, column: 27, scope: !841, inlinedAt: !1082)
!1088 = !DILocation(line: 382, column: 24, scope: !821, inlinedAt: !1082)
!1089 = !DILocation(line: 386, column: 12, scope: !841, inlinedAt: !1082)
!1090 = !DILocation(line: 386, column: 7, scope: !821, inlinedAt: !1082)
!1091 = !DILocation(line: 389, column: 13, scope: !821, inlinedAt: !1082)
!1092 = !DILocation(line: 389, column: 16, scope: !821, inlinedAt: !1082)
!1093 = !DILocation(line: 390, column: 30, scope: !821, inlinedAt: !1082)
!1094 = !DILocation(line: 390, column: 13, scope: !821, inlinedAt: !1082)
!1095 = !DILocation(line: 390, column: 18, scope: !821, inlinedAt: !1082)
!1096 = !DILocation(line: 391, column: 13, scope: !821, inlinedAt: !1082)
!1097 = !DILocation(line: 391, column: 30, scope: !821, inlinedAt: !1082)
!1098 = !DILocation(line: 393, column: 9, scope: !856, inlinedAt: !1082)
!1099 = !DILocation(line: 393, column: 7, scope: !821, inlinedAt: !1082)
!1100 = !DILocation(line: 395, column: 5, scope: !859, inlinedAt: !1082)
!1101 = !DILocation(line: 396, column: 5, scope: !859, inlinedAt: !1082)
!1102 = !DILocation(line: 399, column: 13, scope: !821, inlinedAt: !1082)
!1103 = !DILocation(line: 399, column: 17, scope: !821, inlinedAt: !1082)
!1104 = !DILocation(line: 400, column: 13, scope: !821, inlinedAt: !1082)
!1105 = !DILocation(line: 400, column: 18, scope: !821, inlinedAt: !1082)
!1106 = !DILocation(line: 401, column: 13, scope: !821, inlinedAt: !1082)
!1107 = !DILocation(line: 402, column: 13, scope: !821, inlinedAt: !1082)
!1108 = !DILocation(line: 402, column: 29, scope: !821, inlinedAt: !1082)
!1109 = !DILocation(line: 403, column: 13, scope: !821, inlinedAt: !1082)
!1110 = !DILocation(line: 403, column: 24, scope: !821, inlinedAt: !1082)
!1111 = !DILocation(line: 677, column: 24, scope: !1074)
!1112 = !DILocation(line: 686, column: 16, scope: !1074)
!1113 = !DILocation(line: 687, column: 13, scope: !1074)
!1114 = !DILocation(line: 687, column: 21, scope: !1074)
!1115 = !DILocation(line: 688, column: 21, scope: !1074)
!1116 = !DILocation(line: 689, column: 3, scope: !1074)
!1117 = !DILocation(line: 0, scope: !1074)
!1118 = !DILocation(line: 690, column: 1, scope: !1074)
!1119 = distinct !DISubprogram(name: "pipe_reader", scope: !1, file: !1, line: 541, type: !190, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126}
!1121 = !DILocalVariable(name: "cls", arg: 1, scope: !1119, file: !1, line: 541, type: !144)
!1122 = !DILocalVariable(name: "pos", arg: 2, scope: !1119, file: !1, line: 542, type: !195)
!1123 = !DILocalVariable(name: "buf", arg: 3, scope: !1119, file: !1, line: 543, type: !179)
!1124 = !DILocalVariable(name: "max", arg: 4, scope: !1119, file: !1, line: 544, type: !150)
!1125 = !DILocalVariable(name: "response", scope: !1119, file: !1, line: 546, type: !170)
!1126 = !DILocalVariable(name: "n", scope: !1119, file: !1, line: 547, type: !192)
!1127 = !DILocation(line: 541, column: 20, scope: !1119)
!1128 = !DILocation(line: 542, column: 23, scope: !1119)
!1129 = !DILocation(line: 543, column: 20, scope: !1119)
!1130 = !DILocation(line: 544, column: 21, scope: !1119)
!1131 = !DILocation(line: 546, column: 24, scope: !1119)
!1132 = !DILocation(line: 551, column: 7, scope: !1119)
!1133 = !DILocation(line: 558, column: 23, scope: !1119)
!1134 = !DILocation(line: 558, column: 7, scope: !1119)
!1135 = !DILocation(line: 547, column: 11, scope: !1119)
!1136 = !DILocation(line: 561, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 561, column: 7)
!1138 = !DILocation(line: 563, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 563, column: 7)
!1140 = !DILocation(line: 564, column: 5, scope: !1139)
!1141 = !DILocation(line: 561, column: 7, scope: !1119)
!1142 = !DILocation(line: 566, column: 1, scope: !1119)
!1143 = distinct !DISubprogram(name: "MHD_create_response_from_fd", scope: !1, file: !1, line: 703, type: !1144, isLocal: false, isDefinition: true, scopeLine: 705, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!170, !150, !55}
!1146 = !{!1147, !1148}
!1147 = !DILocalVariable(name: "size", arg: 1, scope: !1143, file: !1, line: 703, type: !150)
!1148 = !DILocalVariable(name: "fd", arg: 2, scope: !1143, file: !1, line: 704, type: !55)
!1149 = !DILocation(line: 703, column: 37, scope: !1143)
!1150 = !DILocation(line: 704, column: 34, scope: !1143)
!1151 = !DILocation(line: 631, column: 51, scope: !930, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 706, column: 10, scope: !1143)
!1153 = !DILocation(line: 632, column: 46, scope: !930, inlinedAt: !1152)
!1154 = !DILocation(line: 633, column: 51, scope: !930, inlinedAt: !1152)
!1155 = !DILocation(line: 644, column: 29, scope: !942, inlinedAt: !1152)
!1156 = !DILocation(line: 376, column: 45, scope: !821, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 649, column: 14, scope: !930, inlinedAt: !1152)
!1158 = !DILocation(line: 377, column: 43, scope: !821, inlinedAt: !1157)
!1159 = !DILocation(line: 378, column: 62, scope: !821, inlinedAt: !1157)
!1160 = !DILocation(line: 379, column: 42, scope: !821, inlinedAt: !1157)
!1161 = !DILocation(line: 380, column: 66, scope: !821, inlinedAt: !1157)
!1162 = !DILocation(line: 386, column: 27, scope: !841, inlinedAt: !1157)
!1163 = !DILocation(line: 382, column: 24, scope: !821, inlinedAt: !1157)
!1164 = !DILocation(line: 386, column: 12, scope: !841, inlinedAt: !1157)
!1165 = !DILocation(line: 386, column: 7, scope: !821, inlinedAt: !1157)
!1166 = !DILocation(line: 389, column: 13, scope: !821, inlinedAt: !1157)
!1167 = !DILocation(line: 389, column: 16, scope: !821, inlinedAt: !1157)
!1168 = !DILocation(line: 390, column: 30, scope: !821, inlinedAt: !1157)
!1169 = !DILocation(line: 390, column: 13, scope: !821, inlinedAt: !1157)
!1170 = !DILocation(line: 390, column: 18, scope: !821, inlinedAt: !1157)
!1171 = !DILocation(line: 391, column: 13, scope: !821, inlinedAt: !1157)
!1172 = !DILocation(line: 391, column: 30, scope: !821, inlinedAt: !1157)
!1173 = !DILocation(line: 393, column: 9, scope: !856, inlinedAt: !1157)
!1174 = !DILocation(line: 393, column: 7, scope: !821, inlinedAt: !1157)
!1175 = !DILocation(line: 395, column: 5, scope: !859, inlinedAt: !1157)
!1176 = !DILocation(line: 396, column: 5, scope: !859, inlinedAt: !1157)
!1177 = !DILocation(line: 399, column: 13, scope: !821, inlinedAt: !1157)
!1178 = !DILocation(line: 399, column: 17, scope: !821, inlinedAt: !1157)
!1179 = !DILocation(line: 400, column: 13, scope: !821, inlinedAt: !1157)
!1180 = !DILocation(line: 400, column: 18, scope: !821, inlinedAt: !1157)
!1181 = !DILocation(line: 401, column: 13, scope: !821, inlinedAt: !1157)
!1182 = !DILocation(line: 402, column: 13, scope: !821, inlinedAt: !1157)
!1183 = !DILocation(line: 402, column: 29, scope: !821, inlinedAt: !1157)
!1184 = !DILocation(line: 403, column: 13, scope: !821, inlinedAt: !1157)
!1185 = !DILocation(line: 403, column: 24, scope: !821, inlinedAt: !1157)
!1186 = !DILocation(line: 635, column: 24, scope: !930, inlinedAt: !1152)
!1187 = !DILocation(line: 656, column: 16, scope: !930, inlinedAt: !1152)
!1188 = !DILocation(line: 657, column: 13, scope: !930, inlinedAt: !1152)
!1189 = !DILocation(line: 657, column: 21, scope: !930, inlinedAt: !1152)
!1190 = !DILocation(line: 658, column: 13, scope: !930, inlinedAt: !1152)
!1191 = !DILocation(line: 658, column: 20, scope: !930, inlinedAt: !1152)
!1192 = !DILocation(line: 659, column: 21, scope: !930, inlinedAt: !1152)
!1193 = !DILocation(line: 660, column: 3, scope: !930, inlinedAt: !1152)
!1194 = !DILocation(line: 0, scope: !930, inlinedAt: !1152)
!1195 = !DILocation(line: 706, column: 3, scope: !1143)
!1196 = distinct !DISubprogram(name: "MHD_create_response_from_fd64", scope: !1, file: !1, line: 726, type: !1197, isLocal: false, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!170, !195, !55}
!1199 = !{!1200, !1201}
!1200 = !DILocalVariable(name: "size", arg: 1, scope: !1196, file: !1, line: 726, type: !195)
!1201 = !DILocalVariable(name: "fd", arg: 2, scope: !1196, file: !1, line: 727, type: !55)
!1202 = !DILocation(line: 726, column: 41, scope: !1196)
!1203 = !DILocation(line: 727, column: 36, scope: !1196)
!1204 = !DILocation(line: 631, column: 51, scope: !930, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 729, column: 10, scope: !1196)
!1206 = !DILocation(line: 632, column: 46, scope: !930, inlinedAt: !1205)
!1207 = !DILocation(line: 633, column: 51, scope: !930, inlinedAt: !1205)
!1208 = !DILocation(line: 644, column: 29, scope: !942, inlinedAt: !1205)
!1209 = !DILocation(line: 376, column: 45, scope: !821, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 649, column: 14, scope: !930, inlinedAt: !1205)
!1211 = !DILocation(line: 377, column: 43, scope: !821, inlinedAt: !1210)
!1212 = !DILocation(line: 378, column: 62, scope: !821, inlinedAt: !1210)
!1213 = !DILocation(line: 379, column: 42, scope: !821, inlinedAt: !1210)
!1214 = !DILocation(line: 380, column: 66, scope: !821, inlinedAt: !1210)
!1215 = !DILocation(line: 386, column: 27, scope: !841, inlinedAt: !1210)
!1216 = !DILocation(line: 382, column: 24, scope: !821, inlinedAt: !1210)
!1217 = !DILocation(line: 386, column: 12, scope: !841, inlinedAt: !1210)
!1218 = !DILocation(line: 386, column: 7, scope: !821, inlinedAt: !1210)
!1219 = !DILocation(line: 389, column: 13, scope: !821, inlinedAt: !1210)
!1220 = !DILocation(line: 389, column: 16, scope: !821, inlinedAt: !1210)
!1221 = !DILocation(line: 390, column: 30, scope: !821, inlinedAt: !1210)
!1222 = !DILocation(line: 390, column: 13, scope: !821, inlinedAt: !1210)
!1223 = !DILocation(line: 390, column: 18, scope: !821, inlinedAt: !1210)
!1224 = !DILocation(line: 391, column: 13, scope: !821, inlinedAt: !1210)
!1225 = !DILocation(line: 391, column: 30, scope: !821, inlinedAt: !1210)
!1226 = !DILocation(line: 393, column: 9, scope: !856, inlinedAt: !1210)
!1227 = !DILocation(line: 393, column: 7, scope: !821, inlinedAt: !1210)
!1228 = !DILocation(line: 395, column: 5, scope: !859, inlinedAt: !1210)
!1229 = !DILocation(line: 396, column: 5, scope: !859, inlinedAt: !1210)
!1230 = !DILocation(line: 399, column: 13, scope: !821, inlinedAt: !1210)
!1231 = !DILocation(line: 399, column: 17, scope: !821, inlinedAt: !1210)
!1232 = !DILocation(line: 400, column: 13, scope: !821, inlinedAt: !1210)
!1233 = !DILocation(line: 400, column: 18, scope: !821, inlinedAt: !1210)
!1234 = !DILocation(line: 401, column: 13, scope: !821, inlinedAt: !1210)
!1235 = !DILocation(line: 402, column: 13, scope: !821, inlinedAt: !1210)
!1236 = !DILocation(line: 402, column: 29, scope: !821, inlinedAt: !1210)
!1237 = !DILocation(line: 403, column: 13, scope: !821, inlinedAt: !1210)
!1238 = !DILocation(line: 403, column: 24, scope: !821, inlinedAt: !1210)
!1239 = !DILocation(line: 635, column: 24, scope: !930, inlinedAt: !1205)
!1240 = !DILocation(line: 656, column: 16, scope: !930, inlinedAt: !1205)
!1241 = !DILocation(line: 657, column: 13, scope: !930, inlinedAt: !1205)
!1242 = !DILocation(line: 657, column: 21, scope: !930, inlinedAt: !1205)
!1243 = !DILocation(line: 658, column: 13, scope: !930, inlinedAt: !1205)
!1244 = !DILocation(line: 658, column: 20, scope: !930, inlinedAt: !1205)
!1245 = !DILocation(line: 659, column: 21, scope: !930, inlinedAt: !1205)
!1246 = !DILocation(line: 660, column: 3, scope: !930, inlinedAt: !1205)
!1247 = !DILocation(line: 0, scope: !930, inlinedAt: !1205)
!1248 = !DILocation(line: 729, column: 3, scope: !1196)
!1249 = distinct !DISubprogram(name: "MHD_create_response_from_data", scope: !1, file: !1, line: 750, type: !1250, isLocal: false, isDefinition: true, scopeLine: 754, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!170, !150, !144, !55, !55}
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258}
!1253 = !DILocalVariable(name: "size", arg: 1, scope: !1249, file: !1, line: 750, type: !150)
!1254 = !DILocalVariable(name: "data", arg: 2, scope: !1249, file: !1, line: 751, type: !144)
!1255 = !DILocalVariable(name: "must_free", arg: 3, scope: !1249, file: !1, line: 752, type: !55)
!1256 = !DILocalVariable(name: "must_copy", arg: 4, scope: !1249, file: !1, line: 753, type: !55)
!1257 = !DILocalVariable(name: "response", scope: !1249, file: !1, line: 755, type: !170)
!1258 = !DILocalVariable(name: "tmp", scope: !1249, file: !1, line: 756, type: !144)
!1259 = !DILocation(line: 750, column: 39, scope: !1249)
!1260 = !DILocation(line: 751, column: 38, scope: !1249)
!1261 = !DILocation(line: 752, column: 36, scope: !1249)
!1262 = !DILocation(line: 753, column: 36, scope: !1249)
!1263 = !DILocation(line: 758, column: 13, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 758, column: 7)
!1265 = !DILocation(line: 758, column: 31, scope: !1264)
!1266 = !DILocation(line: 758, column: 22, scope: !1264)
!1267 = !DILocation(line: 760, column: 27, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 760, column: 7)
!1269 = !DILocation(line: 755, column: 24, scope: !1249)
!1270 = !DILocation(line: 760, column: 12, scope: !1268)
!1271 = !DILocation(line: 760, column: 7, scope: !1249)
!1272 = !DILocation(line: 762, column: 13, scope: !1249)
!1273 = !DILocation(line: 762, column: 16, scope: !1249)
!1274 = !DILocation(line: 764, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 764, column: 7)
!1276 = !DILocation(line: 764, column: 7, scope: !1249)
!1277 = !DILocation(line: 766, column: 5, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 765, column: 3)
!1279 = !DILocation(line: 767, column: 5, scope: !1278)
!1280 = !DILocation(line: 770, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 770, column: 7)
!1282 = !DILocation(line: 770, column: 19, scope: !1281)
!1283 = !DILocation(line: 772, column: 24, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 772, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 771, column: 3)
!1286 = !DILocation(line: 756, column: 9, scope: !1249)
!1287 = !DILocation(line: 772, column: 14, scope: !1284)
!1288 = !DILocation(line: 772, column: 9, scope: !1285)
!1289 = !DILocation(line: 775, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 775, column: 7)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 775, column: 7)
!1292 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 773, column: 5)
!1293 = !DILocation(line: 775, column: 7, scope: !1291)
!1294 = !DILocation(line: 775, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 775, column: 7)
!1296 = !DILocation(line: 777, column: 7, scope: !1292)
!1297 = !DILocation(line: 778, column: 7, scope: !1292)
!1298 = !DILocation(line: 780, column: 5, scope: !1285)
!1299 = !DILocation(line: 784, column: 7, scope: !1249)
!1300 = !DILocation(line: 784, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 784, column: 7)
!1302 = !DILocation(line: 786, column: 15, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 785, column: 3)
!1304 = !DILocation(line: 786, column: 20, scope: !1303)
!1305 = !DILocation(line: 787, column: 15, scope: !1303)
!1306 = !DILocation(line: 787, column: 23, scope: !1303)
!1307 = !DILocation(line: 788, column: 3, scope: !1303)
!1308 = !DILocation(line: 789, column: 13, scope: !1249)
!1309 = !DILocation(line: 789, column: 29, scope: !1249)
!1310 = !DILocation(line: 790, column: 13, scope: !1249)
!1311 = !DILocation(line: 790, column: 24, scope: !1249)
!1312 = !DILocation(line: 791, column: 13, scope: !1249)
!1313 = !DILocation(line: 791, column: 18, scope: !1249)
!1314 = !DILocation(line: 792, column: 13, scope: !1249)
!1315 = !DILocation(line: 792, column: 23, scope: !1249)
!1316 = !{!515, !519, i64 120}
!1317 = !DILocation(line: 793, column: 7, scope: !1249)
!1318 = !DILocation(line: 794, column: 15, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 793, column: 7)
!1320 = !DILocation(line: 794, column: 32, scope: !1319)
!1321 = !DILocation(line: 794, column: 5, scope: !1319)
!1322 = !DILocation(line: 0, scope: !1249)
!1323 = !DILocation(line: 796, column: 1, scope: !1249)
!1324 = distinct !DISubprogram(name: "MHD_create_response_from_buffer", scope: !1, file: !1, line: 810, type: !1325, isLocal: false, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!170, !150, !144, !133}
!1327 = !{!1328, !1329, !1330}
!1328 = !DILocalVariable(name: "size", arg: 1, scope: !1324, file: !1, line: 810, type: !150)
!1329 = !DILocalVariable(name: "buffer", arg: 2, scope: !1324, file: !1, line: 811, type: !144)
!1330 = !DILocalVariable(name: "mode", arg: 3, scope: !1324, file: !1, line: 812, type: !133)
!1331 = !DILocation(line: 810, column: 41, scope: !1324)
!1332 = !DILocation(line: 811, column: 40, scope: !1324)
!1333 = !DILocation(line: 812, column: 62, scope: !1324)
!1334 = !DILocation(line: 816, column: 46, scope: !1324)
!1335 = !DILocation(line: 817, column: 46, scope: !1324)
!1336 = !DILocation(line: 814, column: 10, scope: !1324)
!1337 = !DILocation(line: 814, column: 3, scope: !1324)
!1338 = distinct !DISubprogram(name: "MHD_create_response_from_buffer_with_free_callback", scope: !1, file: !1, line: 832, type: !1339, isLocal: false, isDefinition: true, scopeLine: 836, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1341)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!170, !150, !144, !198}
!1341 = !{!1342, !1343, !1344, !1345}
!1342 = !DILocalVariable(name: "size", arg: 1, scope: !1338, file: !1, line: 832, type: !150)
!1343 = !DILocalVariable(name: "buffer", arg: 2, scope: !1338, file: !1, line: 833, type: !144)
!1344 = !DILocalVariable(name: "crfc", arg: 3, scope: !1338, file: !1, line: 835, type: !198)
!1345 = !DILocalVariable(name: "r", scope: !1338, file: !1, line: 837, type: !170)
!1346 = !DILocation(line: 832, column: 60, scope: !1338)
!1347 = !DILocation(line: 833, column: 59, scope: !1338)
!1348 = !DILocation(line: 835, column: 53, scope: !1338)
!1349 = !DILocation(line: 750, column: 39, scope: !1249, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 839, column: 7, scope: !1338)
!1351 = !DILocation(line: 751, column: 38, scope: !1249, inlinedAt: !1350)
!1352 = !DILocation(line: 752, column: 36, scope: !1249, inlinedAt: !1350)
!1353 = !DILocation(line: 753, column: 36, scope: !1249, inlinedAt: !1350)
!1354 = !DILocation(line: 758, column: 13, scope: !1264, inlinedAt: !1350)
!1355 = !DILocation(line: 758, column: 31, scope: !1264, inlinedAt: !1350)
!1356 = !DILocation(line: 758, column: 22, scope: !1264, inlinedAt: !1350)
!1357 = !DILocation(line: 760, column: 27, scope: !1268, inlinedAt: !1350)
!1358 = !DILocation(line: 755, column: 24, scope: !1249, inlinedAt: !1350)
!1359 = !DILocation(line: 760, column: 12, scope: !1268, inlinedAt: !1350)
!1360 = !DILocation(line: 760, column: 7, scope: !1249, inlinedAt: !1350)
!1361 = !DILocation(line: 762, column: 13, scope: !1249, inlinedAt: !1350)
!1362 = !DILocation(line: 762, column: 16, scope: !1249, inlinedAt: !1350)
!1363 = !DILocation(line: 764, column: 9, scope: !1275, inlinedAt: !1350)
!1364 = !DILocation(line: 764, column: 7, scope: !1249, inlinedAt: !1350)
!1365 = !DILocation(line: 766, column: 5, scope: !1278, inlinedAt: !1350)
!1366 = !DILocation(line: 767, column: 5, scope: !1278, inlinedAt: !1350)
!1367 = !DILocation(line: 786, column: 15, scope: !1303, inlinedAt: !1350)
!1368 = !DILocation(line: 787, column: 15, scope: !1303, inlinedAt: !1350)
!1369 = !DILocation(line: 787, column: 23, scope: !1303, inlinedAt: !1350)
!1370 = !DILocation(line: 789, column: 13, scope: !1249, inlinedAt: !1350)
!1371 = !DILocation(line: 789, column: 29, scope: !1249, inlinedAt: !1350)
!1372 = !DILocation(line: 790, column: 13, scope: !1249, inlinedAt: !1350)
!1373 = !DILocation(line: 790, column: 24, scope: !1249, inlinedAt: !1350)
!1374 = !DILocation(line: 791, column: 13, scope: !1249, inlinedAt: !1350)
!1375 = !DILocation(line: 791, column: 18, scope: !1249, inlinedAt: !1350)
!1376 = !DILocation(line: 792, column: 13, scope: !1249, inlinedAt: !1350)
!1377 = !DILocation(line: 792, column: 23, scope: !1249, inlinedAt: !1350)
!1378 = !DILocation(line: 837, column: 24, scope: !1338)
!1379 = !DILocation(line: 845, column: 11, scope: !1338)
!1380 = !DILocation(line: 846, column: 3, scope: !1338)
!1381 = !DILocation(line: 847, column: 1, scope: !1338)
!1382 = distinct !DISubprogram(name: "MHD_create_response_from_iovec", scope: !1, file: !1, line: 864, type: !1383, isLocal: false, isDefinition: true, scopeLine: 868, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1393)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!170, !1385, !5, !198, !144}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_IoVec", file: !4, line: 1997, size: 128, elements: !1388)
!1388 = !{!1389, !1392}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1387, file: !4, line: 2002, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1387, file: !4, line: 2007, baseType: !150, size: 64, offset: 64)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1405, !1406, !1410}
!1394 = !DILocalVariable(name: "iov", arg: 1, scope: !1382, file: !1, line: 864, type: !1385)
!1395 = !DILocalVariable(name: "iovcnt", arg: 2, scope: !1382, file: !1, line: 865, type: !5)
!1396 = !DILocalVariable(name: "free_cb", arg: 3, scope: !1382, file: !1, line: 866, type: !198)
!1397 = !DILocalVariable(name: "cls", arg: 4, scope: !1382, file: !1, line: 867, type: !144)
!1398 = !DILocalVariable(name: "response", scope: !1382, file: !1, line: 869, type: !170)
!1399 = !DILocalVariable(name: "i", scope: !1382, file: !1, line: 870, type: !5)
!1400 = !DILocalVariable(name: "i_cp", scope: !1382, file: !1, line: 871, type: !55)
!1401 = !DILocalVariable(name: "total_size", scope: !1382, file: !1, line: 872, type: !195)
!1402 = !DILocalVariable(name: "last_valid_buffer", scope: !1382, file: !1, line: 873, type: !1390)
!1403 = !DILocalVariable(name: "iov_copy", scope: !1404, file: !1, line: 949, type: !443)
!1404 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 948, column: 3)
!1405 = !DILocalVariable(name: "num_copy_elements", scope: !1404, file: !1, line: 950, type: !55)
!1406 = !DILocalVariable(name: "element_size", scope: !1407, file: !1, line: 963, type: !150)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 962, column: 5)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 961, column: 5)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 961, column: 5)
!1410 = !DILocalVariable(name: "buf", scope: !1407, file: !1, line: 964, type: !153)
!1411 = !DILocation(line: 864, column: 57, scope: !1382)
!1412 = !DILocation(line: 865, column: 46, scope: !1382)
!1413 = !DILocation(line: 866, column: 63, scope: !1382)
!1414 = !DILocation(line: 867, column: 39, scope: !1382)
!1415 = !DILocation(line: 871, column: 7, scope: !1382)
!1416 = !DILocation(line: 872, column: 12, scope: !1382)
!1417 = !DILocation(line: 873, column: 15, scope: !1382)
!1418 = !DILocation(line: 875, column: 13, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 875, column: 7)
!1420 = !DILocation(line: 875, column: 27, scope: !1419)
!1421 = !DILocation(line: 875, column: 21, scope: !1419)
!1422 = !DILocation(line: 878, column: 14, scope: !1382)
!1423 = !DILocation(line: 869, column: 24, scope: !1382)
!1424 = !DILocation(line: 879, column: 12, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 879, column: 7)
!1426 = !DILocation(line: 879, column: 7, scope: !1382)
!1427 = !DILocation(line: 881, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 881, column: 7)
!1429 = !DILocation(line: 881, column: 7, scope: !1382)
!1430 = !DILocation(line: 870, column: 16, scope: !1382)
!1431 = !DILocation(line: 887, column: 17, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 887, column: 3)
!1433 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 887, column: 3)
!1434 = !DILocation(line: 887, column: 3, scope: !1433)
!1435 = !DILocation(line: 930, column: 13, scope: !1382)
!1436 = !DILocation(line: 930, column: 16, scope: !1382)
!1437 = !DILocation(line: 931, column: 13, scope: !1382)
!1438 = !DILocation(line: 931, column: 29, scope: !1382)
!1439 = !DILocation(line: 932, column: 13, scope: !1382)
!1440 = !DILocation(line: 932, column: 24, scope: !1382)
!1441 = !DILocation(line: 933, column: 13, scope: !1382)
!1442 = !DILocation(line: 933, column: 21, scope: !1382)
!1443 = !DILocation(line: 934, column: 13, scope: !1382)
!1444 = !DILocation(line: 934, column: 18, scope: !1382)
!1445 = !DILocation(line: 935, column: 7, scope: !1382)
!1446 = !DILocation(line: 889, column: 14, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 889, column: 9)
!1448 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 888, column: 3)
!1449 = !DILocation(line: 883, column: 5, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 882, column: 3)
!1451 = !DILocation(line: 884, column: 5, scope: !1450)
!1452 = !DILocation(line: 889, column: 21, scope: !1447)
!1453 = !{!1454, !519, i64 8}
!1454 = !{!"MHD_IoVec", !516, i64 0, !519, i64 8}
!1455 = !DILocation(line: 889, column: 11, scope: !1447)
!1456 = !DILocation(line: 889, column: 9, scope: !1448)
!1457 = !DILocation(line: 891, column: 24, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 891, column: 9)
!1459 = !{!1454, !516, i64 0}
!1460 = !DILocation(line: 891, column: 14, scope: !1458)
!1461 = !DILocation(line: 891, column: 9, scope: !1448)
!1462 = !DILocation(line: 896, column: 36, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 896, column: 10)
!1464 = !DILocation(line: 896, column: 22, scope: !1463)
!1465 = !DILocation(line: 897, column: 19, scope: !1463)
!1466 = !DILocation(line: 896, column: 55, scope: !1463)
!1467 = !DILocation(line: 898, column: 21, scope: !1463)
!1468 = !DILocation(line: 906, column: 9, scope: !1448)
!1469 = !DILocation(line: 922, column: 3, scope: !1448)
!1470 = !DILocation(line: 0, scope: !1448)
!1471 = !DILocation(line: 887, column: 27, scope: !1432)
!1472 = distinct !{!1472, !1434, !1473}
!1473 = !DILocation(line: 922, column: 3, scope: !1433)
!1474 = !DILocation(line: 923, column: 10, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 923, column: 7)
!1476 = !DILocation(line: 923, column: 7, scope: !1382)
!1477 = !DILocation(line: 926, column: 5, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 926, column: 5)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 926, column: 5)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 924, column: 3)
!1481 = !DILocation(line: 926, column: 5, scope: !1479)
!1482 = !DILocation(line: 926, column: 5, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 926, column: 5)
!1484 = !DILocation(line: 927, column: 5, scope: !1480)
!1485 = !DILocation(line: 928, column: 5, scope: !1480)
!1486 = !DILocation(line: 943, column: 15, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 941, column: 3)
!1488 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 940, column: 7)
!1489 = !DILocation(line: 943, column: 20, scope: !1487)
!1490 = !DILocation(line: 944, column: 15, scope: !1487)
!1491 = !DILocation(line: 944, column: 25, scope: !1487)
!1492 = !DILocation(line: 945, column: 5, scope: !1487)
!1493 = !DILocation(line: 950, column: 9, scope: !1404)
!1494 = !DILocation(line: 952, column: 16, scope: !1404)
!1495 = !DILocation(line: 949, column: 17, scope: !1404)
!1496 = !DILocation(line: 954, column: 14, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 954, column: 9)
!1498 = !DILocation(line: 954, column: 9, scope: !1404)
!1499 = !DILocation(line: 961, column: 5, scope: !1409)
!1500 = !DILocation(line: 963, column: 29, scope: !1407)
!1501 = !DILocation(line: 956, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 956, column: 7)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 956, column: 7)
!1504 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 955, column: 5)
!1505 = !DILocation(line: 956, column: 7, scope: !1503)
!1506 = !DILocation(line: 956, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 956, column: 7)
!1508 = !DILocation(line: 957, column: 7, scope: !1504)
!1509 = !DILocation(line: 958, column: 7, scope: !1504)
!1510 = !DILocation(line: 963, column: 36, scope: !1407)
!1511 = !DILocation(line: 963, column: 14, scope: !1407)
!1512 = !DILocation(line: 966, column: 13, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 966, column: 11)
!1514 = !DILocation(line: 966, column: 11, scope: !1407)
!1515 = !DILocation(line: 964, column: 53, scope: !1407)
!1516 = !DILocation(line: 964, column: 22, scope: !1407)
!1517 = !DILocation(line: 978, column: 7, scope: !1407)
!1518 = !DILocation(line: 978, column: 31, scope: !1407)
!1519 = !{!1520, !516, i64 0}
!1520 = !{!"iovec", !516, i64 0, !519, i64 8}
!1521 = !DILocation(line: 979, column: 22, scope: !1407)
!1522 = !DILocation(line: 979, column: 30, scope: !1407)
!1523 = !{!1520, !519, i64 8}
!1524 = !DILocation(line: 980, column: 11, scope: !1407)
!1525 = !DILocation(line: 981, column: 5, scope: !1408)
!1526 = !DILocation(line: 0, scope: !1407)
!1527 = !DILocation(line: 961, column: 29, scope: !1408)
!1528 = !DILocation(line: 961, column: 19, scope: !1408)
!1529 = distinct !{!1529, !1499, !1530}
!1530 = !DILocation(line: 981, column: 5, scope: !1409)
!1531 = !DILocation(line: 960, column: 10, scope: !1404)
!1532 = !DILocation(line: 983, column: 15, scope: !1404)
!1533 = !DILocation(line: 983, column: 24, scope: !1404)
!1534 = !{!515, !516, i64 152}
!1535 = !DILocation(line: 984, column: 15, scope: !1404)
!1536 = !DILocation(line: 984, column: 27, scope: !1404)
!1537 = !{!515, !520, i64 160}
!1538 = !DILocation(line: 985, column: 5, scope: !1404)
!1539 = !DILocation(line: 0, scope: !1504)
!1540 = !DILocation(line: 987, column: 1, scope: !1382)
!1541 = distinct !DISubprogram(name: "MHD_upgrade_action", scope: !1, file: !1, line: 1004, type: !1542, isLocal: false, isDefinition: true, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!3, !246, !138, null}
!1544 = !{!1545, !1546, !1547, !1548}
!1545 = !DILocalVariable(name: "urh", arg: 1, scope: !1541, file: !1, line: 1004, type: !246)
!1546 = !DILocalVariable(name: "action", arg: 2, scope: !1541, file: !1, line: 1005, type: !138)
!1547 = !DILocalVariable(name: "connection", scope: !1541, file: !1, line: 1008, type: !207)
!1548 = !DILocalVariable(name: "daemon", scope: !1541, file: !1, line: 1009, type: !217)
!1549 = !DILocation(line: 1004, column: 55, scope: !1541)
!1550 = !DILocation(line: 1005, column: 44, scope: !1541)
!1551 = !DILocation(line: 1011, column: 12, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 1011, column: 7)
!1553 = !DILocation(line: 1011, column: 7, scope: !1541)
!1554 = !DILocation(line: 1013, column: 21, scope: !1541)
!1555 = !{!1556, !516, i64 0}
!1556 = !{!"MHD_UpgradeResponseHandle", !516, i64 0, !521, i64 8, !521, i64 9}
!1557 = !DILocation(line: 1008, column: 26, scope: !1541)
!1558 = !DILocation(line: 1016, column: 12, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 1016, column: 7)
!1560 = !DILocation(line: 1016, column: 7, scope: !1541)
!1561 = !DILocation(line: 1018, column: 24, scope: !1541)
!1562 = !{!1563, !516, i64 48}
!1563 = !{!"MHD_Connection", !516, i64 0, !516, i64 8, !516, i64 16, !516, i64 24, !516, i64 32, !516, i64 40, !516, i64 48, !516, i64 56, !516, i64 64, !516, i64 72, !516, i64 80, !516, i64 88, !516, i64 96, !516, i64 104, !516, i64 112, !516, i64 120, !517, i64 128, !516, i64 136, !516, i64 144, !516, i64 152, !516, i64 160, !516, i64 168, !1564, i64 176, !519, i64 192, !519, i64 200, !519, i64 208, !519, i64 216, !519, i64 224, !519, i64 232, !519, i64 240, !519, i64 248, !1565, i64 256, !517, i64 280, !519, i64 288, !520, i64 296, !519, i64 304, !519, i64 312, !520, i64 320, !521, i64 324, !520, i64 328, !517, i64 332, !521, i64 336, !521, i64 337, !517, i64 340, !517, i64 344, !521, i64 348, !521, i64 349, !521, i64 350, !521, i64 351, !517, i64 352, !517, i64 356, !517, i64 360, !520, i64 364, !521, i64 368, !519, i64 376, !519, i64 384, !516, i64 392, !516, i64 400, !521, i64 408, !520, i64 412, !521, i64 416}
!1564 = !{!"_MHD_thread_handle_ID_", !519, i64 0, !519, i64 8}
!1565 = !{!"MHD_iovec_track_", !516, i64 0, !519, i64 8, !519, i64 16}
!1566 = !DILocation(line: 1009, column: 22, scope: !1541)
!1567 = !DILocation(line: 1019, column: 12, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 1019, column: 7)
!1569 = !DILocation(line: 1019, column: 7, scope: !1541)
!1570 = !DILocation(line: 1022, column: 3, scope: !1541)
!1571 = !DILocation(line: 1025, column: 14, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 1025, column: 9)
!1573 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 1023, column: 3)
!1574 = !{!1556, !521, i64 8}
!1575 = !{i8 0, i8 2}
!1576 = !DILocation(line: 1025, column: 9, scope: !1573)
!1577 = !DILocation(line: 1039, column: 21, scope: !1573)
!1578 = !DILocation(line: 1043, column: 5, scope: !1573)
!1579 = !DILocation(line: 1044, column: 5, scope: !1573)
!1580 = !DILocation(line: 1047, column: 12, scope: !1573)
!1581 = !DILocation(line: 1047, column: 5, scope: !1573)
!1582 = !DILocation(line: 1051, column: 12, scope: !1573)
!1583 = !DILocation(line: 1051, column: 5, scope: !1573)
!1584 = !DILocation(line: 0, scope: !1573)
!1585 = !DILocation(line: 1057, column: 1, scope: !1541)
!1586 = distinct !DISubprogram(name: "MHD_response_execute_upgrade_", scope: !1, file: !1, line: 1074, type: !1587, isLocal: false, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!3, !170, !207}
!1589 = !{!1590, !1591, !1592, !1593, !1594}
!1590 = !DILocalVariable(name: "response", arg: 1, scope: !1586, file: !1, line: 1074, type: !170)
!1591 = !DILocalVariable(name: "connection", arg: 2, scope: !1586, file: !1, line: 1075, type: !207)
!1592 = !DILocalVariable(name: "daemon", scope: !1586, file: !1, line: 1077, type: !217)
!1593 = !DILocalVariable(name: "urh", scope: !1586, file: !1, line: 1078, type: !246)
!1594 = !DILocalVariable(name: "rbo", scope: !1586, file: !1, line: 1079, type: !150)
!1595 = !DILocation(line: 1074, column: 53, scope: !1586)
!1596 = !DILocation(line: 1075, column: 55, scope: !1586)
!1597 = !DILocation(line: 1077, column: 43, scope: !1586)
!1598 = !DILocation(line: 1077, column: 22, scope: !1586)
!1599 = !DILocation(line: 1086, column: 21, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 1086, column: 7)
!1601 = !{!1602, !517, i64 16}
!1602 = !{!"MHD_Daemon", !516, i64 0, !516, i64 8, !517, i64 16, !516, i64 24, !516, i64 32, !516, i64 40, !516, i64 48, !516, i64 56, !516, i64 64, !516, i64 72, !516, i64 80, !517, i64 88, !516, i64 96, !516, i64 104, !520, i64 112, !521, i64 116, !516, i64 120, !516, i64 128, !516, i64 136, !516, i64 144, !516, i64 152, !516, i64 160, !516, i64 168, !516, i64 176, !516, i64 184, !516, i64 192, !516, i64 200, !516, i64 208, !516, i64 216, !516, i64 224, !516, i64 232, !516, i64 240, !1603, i64 248, !516, i64 256, !516, i64 264, !516, i64 272, !520, i64 280, !516, i64 288, !516, i64 296, !520, i64 304, !519, i64 312, !519, i64 320, !519, i64 328, !520, i64 336, !1564, i64 344, !517, i64 360, !517, i64 400, !517, i64 440, !517, i64 480, !520, i64 484, !1604, i64 488, !521, i64 492, !521, i64 493, !521, i64 494, !521, i64 495, !521, i64 496, !521, i64 497, !520, i64 500, !519, i64 504, !520, i64 512, !520, i64 516, !521, i64 520, !516, i64 528, !516, i64 536, !517, i64 544, !519, i64 584, !520, i64 592, !520, i64 596, !520, i64 600, !519, i64 608}
!1603 = !{!"short", !517, i64 0}
!1604 = !{!"MHD_itc_", !520, i64 0}
!1605 = !DILocation(line: 1086, column: 9, scope: !1600)
!1606 = !DILocation(line: 1086, column: 7, scope: !1586)
!1607 = !DILocation(line: 285, column: 47, scope: !731, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 1090, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 1089, column: 7)
!1610 = !DILocation(line: 286, column: 38, scope: !731, inlinedAt: !1608)
!1611 = !DILocation(line: 289, column: 10, scope: !731, inlinedAt: !1608)
!1612 = !DILocation(line: 295, column: 24, scope: !747, inlinedAt: !1608)
!1613 = !DILocation(line: 288, column: 27, scope: !731, inlinedAt: !1608)
!1614 = !DILocation(line: 0, scope: !750, inlinedAt: !1608)
!1615 = !DILocation(line: 296, column: 13, scope: !750, inlinedAt: !1608)
!1616 = !DILocation(line: 295, column: 3, scope: !747, inlinedAt: !1608)
!1617 = !DILocation(line: 299, column: 15, scope: !754, inlinedAt: !1608)
!1618 = !DILocation(line: 299, column: 27, scope: !754, inlinedAt: !1608)
!1619 = !DILocation(line: 299, column: 40, scope: !754, inlinedAt: !1608)
!1620 = !DILocation(line: 300, column: 46, scope: !754, inlinedAt: !1608)
!1621 = !DILocation(line: 300, column: 10, scope: !754, inlinedAt: !1608)
!1622 = !DILocation(line: 299, column: 9, scope: !755, inlinedAt: !1608)
!1623 = !DILocation(line: 297, column: 19, scope: !750, inlinedAt: !1608)
!1624 = !DILocation(line: 301, column: 19, scope: !754, inlinedAt: !1608)
!1625 = !DILocation(line: 1089, column: 12, scope: !1609)
!1626 = !DILocation(line: 1089, column: 7, scope: !1586)
!1627 = !DILocation(line: 1094, column: 5, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 1092, column: 3)
!1629 = !DILocation(line: 1098, column: 5, scope: !1628)
!1630 = !DILocation(line: 1101, column: 9, scope: !1586)
!1631 = !DILocation(line: 1102, column: 12, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 1102, column: 7)
!1633 = !DILocation(line: 1102, column: 7, scope: !1586)
!1634 = !DILocation(line: 1078, column: 37, scope: !1586)
!1635 = !DILocation(line: 1104, column: 8, scope: !1586)
!1636 = !DILocation(line: 1104, column: 19, scope: !1586)
!1637 = !DILocation(line: 1105, column: 21, scope: !1586)
!1638 = !{!1563, !519, i64 200}
!1639 = !DILocation(line: 1079, column: 10, scope: !1586)
!1640 = !DILocation(line: 1106, column: 34, scope: !1586)
!1641 = !DILocation(line: 1107, column: 3, scope: !1586)
!1642 = !DILocation(line: 1108, column: 3, scope: !1586)
!1643 = !DILocation(line: 1296, column: 8, scope: !1586)
!1644 = !DILocation(line: 1296, column: 20, scope: !1586)
!1645 = !{!1556, !521, i64 9}
!1646 = !DILocation(line: 1298, column: 15, scope: !1586)
!1647 = !DILocation(line: 1298, column: 19, scope: !1586)
!1648 = !{!1563, !516, i64 400}
!1649 = !DILocation(line: 1302, column: 3, scope: !1586)
!1650 = !DILocation(line: 1305, column: 13, scope: !1586)
!1651 = !{!515, !516, i64 40}
!1652 = !DILocation(line: 1305, column: 40, scope: !1586)
!1653 = !{!515, !516, i64 48}
!1654 = !DILocation(line: 1307, column: 42, scope: !1586)
!1655 = !{!1563, !516, i64 88}
!1656 = !DILocation(line: 1308, column: 42, scope: !1586)
!1657 = !{!1563, !516, i64 136}
!1658 = !DILocation(line: 1314, column: 42, scope: !1586)
!1659 = !{!1563, !520, i64 328}
!1660 = !DILocation(line: 1305, column: 3, scope: !1586)
!1661 = !DILocation(line: 1317, column: 3, scope: !1586)
!1662 = !DILocation(line: 0, scope: !1586)
!1663 = !DILocation(line: 1318, column: 1, scope: !1586)
!1664 = distinct !DISubprogram(name: "MHD_create_response_for_upgrade", scope: !1, file: !1, line: 1351, type: !1665, isLocal: false, isDefinition: true, scopeLine: 1353, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!170, !203, !144}
!1667 = !{!1668, !1669, !1670}
!1668 = !DILocalVariable(name: "upgrade_handler", arg: 1, scope: !1664, file: !1, line: 1351, type: !203)
!1669 = !DILocalVariable(name: "upgrade_handler_cls", arg: 2, scope: !1664, file: !1, line: 1352, type: !144)
!1670 = !DILocalVariable(name: "response", scope: !1664, file: !1, line: 1354, type: !170)
!1671 = !DILocation(line: 1351, column: 53, scope: !1664)
!1672 = !DILocation(line: 1352, column: 40, scope: !1664)
!1673 = !DILocation(line: 1356, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 1356, column: 7)
!1675 = !DILocation(line: 1356, column: 7, scope: !1664)
!1676 = !DILocation(line: 1358, column: 14, scope: !1664)
!1677 = !DILocation(line: 1354, column: 24, scope: !1664)
!1678 = !DILocation(line: 1359, column: 12, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 1359, column: 7)
!1680 = !DILocation(line: 1359, column: 7, scope: !1664)
!1681 = !DILocation(line: 1362, column: 9, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 1362, column: 7)
!1683 = !DILocation(line: 1362, column: 7, scope: !1664)
!1684 = !DILocation(line: 1364, column: 5, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 1363, column: 3)
!1686 = !DILocation(line: 1365, column: 5, scope: !1685)
!1687 = !DILocation(line: 1368, column: 13, scope: !1664)
!1688 = !DILocation(line: 1368, column: 29, scope: !1664)
!1689 = !DILocation(line: 1369, column: 13, scope: !1664)
!1690 = !DILocation(line: 1369, column: 33, scope: !1664)
!1691 = !DILocation(line: 1370, column: 13, scope: !1664)
!1692 = !DILocation(line: 1370, column: 24, scope: !1664)
!1693 = !DILocation(line: 1371, column: 13, scope: !1664)
!1694 = !DILocation(line: 1371, column: 29, scope: !1664)
!1695 = !DILocation(line: 1373, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 1372, column: 7)
!1697 = !DILocation(line: 1372, column: 14, scope: !1696)
!1698 = !DILocation(line: 1372, column: 7, scope: !1664)
!1699 = !DILocation(line: 1377, column: 5, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 1376, column: 3)
!1701 = !DILocation(line: 1378, column: 5, scope: !1700)
!1702 = !DILocation(line: 0, scope: !1664)
!1703 = !DILocation(line: 1381, column: 1, scope: !1664)
!1704 = distinct !DISubprogram(name: "MHD_destroy_response", scope: !1, file: !1, line: 1397, type: !1705, isLocal: false, isDefinition: true, scopeLine: 1398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1707)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !170}
!1707 = !{!1708, !1709}
!1708 = !DILocalVariable(name: "response", arg: 1, scope: !1704, file: !1, line: 1397, type: !170)
!1709 = !DILocalVariable(name: "pos", scope: !1704, file: !1, line: 1399, type: !174)
!1710 = !DILocation(line: 1397, column: 44, scope: !1704)
!1711 = !DILocation(line: 1401, column: 12, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 1401, column: 7)
!1713 = !DILocation(line: 1401, column: 7, scope: !1704)
!1714 = !DILocation(line: 1404, column: 3, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !1, line: 1404, column: 3)
!1716 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 1404, column: 3)
!1717 = !DILocation(line: 1404, column: 3, scope: !1716)
!1718 = !DILocation(line: 1404, column: 3, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !1, line: 1404, column: 3)
!1720 = !DILocation(line: 1406, column: 25, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 1406, column: 7)
!1722 = !DILocation(line: 1406, column: 12, scope: !1721)
!1723 = !DILocation(line: 1406, column: 9, scope: !1721)
!1724 = !DILocation(line: 0, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !1, line: 1414, column: 3)
!1726 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 1414, column: 3)
!1727 = !DILocation(line: 1406, column: 7, scope: !1704)
!1728 = !DILocation(line: 1409, column: 5, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 1409, column: 5)
!1730 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 1407, column: 3)
!1731 = !DILocation(line: 1409, column: 5, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !1, line: 1409, column: 5)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !1, line: 1409, column: 5)
!1734 = !DILocation(line: 1414, column: 3, scope: !1726)
!1735 = !DILocation(line: 1414, column: 3, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 1414, column: 3)
!1737 = !DILocation(line: 1415, column: 3, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 1415, column: 3)
!1739 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 1415, column: 3)
!1740 = !DILocation(line: 1415, column: 3, scope: !1739)
!1741 = !DILocation(line: 1415, column: 3, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !1, line: 1415, column: 3)
!1743 = !DILocation(line: 1417, column: 25, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 1417, column: 7)
!1745 = !DILocation(line: 1417, column: 12, scope: !1744)
!1746 = !DILocation(line: 1417, column: 7, scope: !1704)
!1747 = !DILocation(line: 1418, column: 31, scope: !1744)
!1748 = !DILocation(line: 1418, column: 5, scope: !1744)
!1749 = !DILocation(line: 1420, column: 25, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 1420, column: 7)
!1751 = !DILocation(line: 1420, column: 12, scope: !1750)
!1752 = !DILocation(line: 1420, column: 7, scope: !1704)
!1753 = !DILocation(line: 1422, column: 11, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !1, line: 1421, column: 3)
!1755 = !DILocation(line: 1422, column: 5, scope: !1754)
!1756 = !DILocation(line: 1423, column: 3, scope: !1754)
!1757 = !DILocation(line: 1425, column: 28, scope: !1704)
!1758 = !DILocation(line: 1425, column: 15, scope: !1704)
!1759 = !DILocation(line: 1425, column: 3, scope: !1704)
!1760 = !DILocation(line: 1399, column: 27, scope: !1704)
!1761 = !DILocation(line: 1428, column: 35, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 1426, column: 3)
!1763 = !DILocation(line: 1428, column: 28, scope: !1762)
!1764 = !DILocation(line: 1429, column: 16, scope: !1762)
!1765 = !DILocation(line: 1429, column: 5, scope: !1762)
!1766 = !DILocation(line: 1430, column: 16, scope: !1762)
!1767 = !DILocation(line: 1430, column: 5, scope: !1762)
!1768 = !DILocation(line: 1431, column: 11, scope: !1762)
!1769 = !DILocation(line: 1431, column: 5, scope: !1762)
!1770 = distinct !{!1770, !1759, !1771}
!1771 = !DILocation(line: 1432, column: 3, scope: !1704)
!1772 = !DILocation(line: 1433, column: 9, scope: !1704)
!1773 = !DILocation(line: 1433, column: 3, scope: !1704)
!1774 = !DILocation(line: 1434, column: 1, scope: !1704)
!1775 = distinct !DISubprogram(name: "MHD_increment_response_rc", scope: !1, file: !1, line: 1443, type: !1705, isLocal: false, isDefinition: true, scopeLine: 1444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1776)
!1776 = !{!1777}
!1777 = !DILocalVariable(name: "response", arg: 1, scope: !1775, file: !1, line: 1443, type: !170)
!1778 = !DILocation(line: 1443, column: 49, scope: !1775)
!1779 = !DILocation(line: 1446, column: 3, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 1446, column: 3)
!1781 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 1446, column: 3)
!1782 = !DILocation(line: 1446, column: 3, scope: !1781)
!1783 = !DILocation(line: 1446, column: 3, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 1446, column: 3)
!1785 = !DILocation(line: 1448, column: 14, scope: !1775)
!1786 = !DILocation(line: 1448, column: 30, scope: !1775)
!1787 = !DILocation(line: 1450, column: 3, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !1, line: 1450, column: 3)
!1789 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 1450, column: 3)
!1790 = !DILocation(line: 1450, column: 3, scope: !1789)
!1791 = !DILocation(line: 1450, column: 3, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 1450, column: 3)
!1793 = !DILocation(line: 1452, column: 1, scope: !1775)
