@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_68513:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6855e

dec_label_pc_6855e:                               ; preds = %dec_label_pc_6855e, %dec_label_pc_68513
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_68575, label %dec_label_pc_6855e

dec_label_pc_68575:                               ; preds = %dec_label_pc_6855e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_685e2

dec_label_pc_685e2:                               ; preds = %dec_label_pc_685e2, %dec_label_pc_68575
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_685f9, label %dec_label_pc_685e2

dec_label_pc_685f9:                               ; preds = %dec_label_pc_685e2
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %1, %9
  br i1 %10, label %dec_label_pc_68667, label %dec_label_pc_68662

dec_label_pc_68662:                               ; preds = %dec_label_pc_685f9
  call void @__stack_chk_fail()
  br label %dec_label_pc_68667

dec_label_pc_68667:                               ; preds = %dec_label_pc_68662, %dec_label_pc_685f9
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_687d4:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %stack_var_-8 = alloca i64, align 8
  %1 = ptrtoint ptr %stack_var_-8 to i64
  %2 = call i64 @__readfsqword(i64 40)
  %3 = add i64 %0, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %1, -816
  %7 = add i64 %1, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_68818

dec_label_pc_68818:                               ; preds = %dec_label_pc_687d4, %dec_label_pc_68818
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge24.reload to i64
  %9 = mul i64 %8, 8
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 8
  %12 = add i64 %7, %9
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add i64 %8, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 99 to ptr)
  store ptr %15, ptr %storemerge24.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %16, label %dec_label_pc_6885b, label %dec_label_pc_68818

dec_label_pc_6885b:                               ; preds = %dec_label_pc_68818, %dec_label_pc_6885b
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %17 = ptrtoint ptr %storemerge3.reload to i64
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %5
  %20 = add i64 %18, %6
  %21 = inttoptr i64 %20 to ptr
  %22 = load i64, ptr %21, align 8
  %23 = inttoptr i64 %19 to ptr
  store i64 %22, ptr %23, align 8
  %24 = add i64 %17, 1
  %25 = inttoptr i64 %24 to ptr
  %26 = icmp ugt ptr %25, inttoptr (i64 99 to ptr)
  store ptr %25, ptr %storemerge3.reg2mem, align 8
  br i1 %26, label %dec_label_pc_68898, label %dec_label_pc_6885b

dec_label_pc_68898:                               ; preds = %dec_label_pc_6885b
  %27 = inttoptr i64 %5 to ptr
  call void @printStructLine(ptr %27)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %2, %28
  br i1 %29, label %dec_label_pc_688bc, label %dec_label_pc_688b7

dec_label_pc_688b7:                               ; preds = %dec_label_pc_68898
  call void @__stack_chk_fail()
  br label %dec_label_pc_688bc

dec_label_pc_688bc:                               ; preds = %dec_label_pc_688b7, %dec_label_pc_68898
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

