@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_e607c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6095b:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-864 = alloca ptr, align 8
  %data_-872 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %data_-872 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_609a9

dec_label_pc_609a9:                               ; preds = %dec_label_pc_609a9, %dec_label_pc_6095b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_609c0, label %dec_label_pc_609a9

dec_label_pc_609c0:                               ; preds = %dec_label_pc_609a9
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %6 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_60a30

dec_label_pc_60a30:                               ; preds = %dec_label_pc_60a30, %dec_label_pc_609c0
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_60a47, label %dec_label_pc_60a30

dec_label_pc_60a47:                               ; preds = %dec_label_pc_60a30
  %9 = load i32, ptr @global_var_e607c, align 4
  %10 = icmp eq i32 %9, 5
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_60aa0, label %dec_label_pc_60a92

dec_label_pc_60a92:                               ; preds = %dec_label_pc_60a47
  %12 = and i64 %5, -16
  %13 = bitcast ptr %stack_var_-864 to ptr
  store i64 %12, ptr %13, align 8
  br label %dec_label_pc_60aa0

dec_label_pc_60aa0:                               ; preds = %dec_label_pc_60a92, %dec_label_pc_60a47
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = add i64 %14, -816
  %16 = add i64 %14, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_60aad

dec_label_pc_60aad:                               ; preds = %dec_label_pc_60aa0, %dec_label_pc_60aad
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %17 = ptrtoint ptr %storemerge24.reload to i64
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %15
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 8
  %21 = add i64 %16, %18
  %22 = inttoptr i64 %21 to ptr
  store i32 0, ptr %22, align 4
  %23 = add i64 %17, 1
  %24 = inttoptr i64 %23 to ptr
  %25 = icmp ugt ptr %24, inttoptr (i64 99 to ptr)
  store ptr %24, ptr %storemerge24.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %25, label %dec_label_pc_60af0, label %dec_label_pc_60aad

dec_label_pc_60af0:                               ; preds = %dec_label_pc_60aad, %dec_label_pc_60af0
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %26 = ptrtoint ptr %storemerge3.reload to i64
  %27 = mul i64 %26, 8
  %28 = load ptr, ptr %stack_var_-864, align 8
  %29 = ptrtoint ptr %28 to i64
  %30 = add i64 %27, %29
  %31 = add i64 %27, %15
  %32 = inttoptr i64 %31 to ptr
  %33 = load i64, ptr %32, align 8
  %34 = inttoptr i64 %30 to ptr
  store i64 %33, ptr %34, align 8
  %35 = add i64 %26, 1
  %36 = inttoptr i64 %35 to ptr
  %37 = icmp ugt ptr %36, inttoptr (i64 99 to ptr)
  store ptr %36, ptr %storemerge3.reg2mem, align 8
  br i1 %37, label %dec_label_pc_60b2d, label %dec_label_pc_60af0

dec_label_pc_60b2d:                               ; preds = %dec_label_pc_60af0
  %38 = load ptr, ptr %stack_var_-864, align 8
  call void @printStructLine(ptr %38)
  %39 = call i64 @__readfsqword(i64 40)
  %40 = icmp eq i64 %1, %39
  br i1 %40, label %dec_label_pc_60b51, label %dec_label_pc_60b4c

dec_label_pc_60b4c:                               ; preds = %dec_label_pc_60b2d
  call void @__stack_chk_fail()
  br label %dec_label_pc_60b51

dec_label_pc_60b51:                               ; preds = %dec_label_pc_60b4c, %dec_label_pc_60b2d
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

