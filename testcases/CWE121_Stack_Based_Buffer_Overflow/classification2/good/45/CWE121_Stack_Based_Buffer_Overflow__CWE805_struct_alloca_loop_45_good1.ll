@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_45_goodG2BData = external local_unnamed_addr global ptr
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_66235:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-832 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_45_goodG2BData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-832 to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %0, -816
  %6 = add i64 %0, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_6626e

dec_label_pc_6626e:                               ; preds = %dec_label_pc_66235, %dec_label_pc_6626e
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge24.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %6, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add i64 %7, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge24.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %15, label %dec_label_pc_662b1, label %dec_label_pc_6626e

dec_label_pc_662b1:                               ; preds = %dec_label_pc_6626e, %dec_label_pc_662b1
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %16 = ptrtoint ptr %storemerge3.reload to i64
  %17 = mul i64 %16, 8
  %18 = load ptr, ptr %stack_var_-832, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = add i64 %17, %19
  %21 = add i64 %17, %5
  %22 = inttoptr i64 %21 to ptr
  %23 = load i64, ptr %22, align 8
  %24 = inttoptr i64 %20 to ptr
  store i64 %23, ptr %24, align 8
  %25 = add i64 %16, 1
  %26 = inttoptr i64 %25 to ptr
  %27 = icmp ugt ptr %26, inttoptr (i64 99 to ptr)
  store ptr %26, ptr %storemerge3.reg2mem, align 8
  br i1 %27, label %dec_label_pc_662ee, label %dec_label_pc_662b1

dec_label_pc_662ee:                               ; preds = %dec_label_pc_662b1
  %28 = load ptr, ptr %stack_var_-832, align 8
  call void @printStructLine(ptr %28)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %1, %29
  br i1 %30, label %dec_label_pc_66312, label %dec_label_pc_6630d

dec_label_pc_6630d:                               ; preds = %dec_label_pc_662ee
  call void @__stack_chk_fail()
  br label %dec_label_pc_66312

dec_label_pc_66312:                               ; preds = %dec_label_pc_6630d, %dec_label_pc_662ee
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_66314:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6635f

dec_label_pc_6635f:                               ; preds = %dec_label_pc_6635f, %dec_label_pc_66314
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_66376, label %dec_label_pc_6635f

dec_label_pc_66376:                               ; preds = %dec_label_pc_6635f
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %8 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_663e3

dec_label_pc_663e3:                               ; preds = %dec_label_pc_663e3, %dec_label_pc_66376
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %9 = icmp eq i64 %rsp.1.reload, %8
  %10 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %10, ptr %rsp.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_663fa, label %dec_label_pc_663e3

dec_label_pc_663fa:                               ; preds = %dec_label_pc_663e3
  %constexpr9 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr10 = udiv i128 %constexpr9, 16
  %constexpr11 = trunc i128 %constexpr10 to i64
  %constexpr12 = sext i64 %constexpr11 to i128
  %constexpr13 = mul i128 %constexpr12, 16
  %constexpr14 = trunc i128 %constexpr13 to i64
  %constexpr15 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr16 = and i64 %constexpr14, %constexpr15
  %constexpr17 = sub i64 0, %constexpr16
  %constexpr18 = add i64 %constexpr17, 15
  %11 = add i64 %8, %constexpr18
  %12 = and i64 %11, -16
  store i64 %12, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_45_goodG2BData, align 8
  call void @anon0()
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %1, %13
  br i1 %14, label %dec_label_pc_66469, label %dec_label_pc_66464

dec_label_pc_66464:                               ; preds = %dec_label_pc_663fa
  call void @__stack_chk_fail()
  br label %dec_label_pc_66469

dec_label_pc_66469:                               ; preds = %dec_label_pc_66464, %dec_label_pc_663fa
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_9cdaa:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_bb9d2, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

