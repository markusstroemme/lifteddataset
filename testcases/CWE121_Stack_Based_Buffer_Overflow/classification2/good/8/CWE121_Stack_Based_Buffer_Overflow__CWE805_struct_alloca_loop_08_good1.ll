@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_b7e2a = external constant [21 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define i32 @staticReturnsFalse.799() local_unnamed_addr {
dec_label_pc_60f82:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_6118c:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-864.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %data_-872 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %data_-872 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_611da

dec_label_pc_611da:                               ; preds = %dec_label_pc_611da, %dec_label_pc_6118c
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_611f1, label %dec_label_pc_611da

dec_label_pc_611f1:                               ; preds = %dec_label_pc_611da
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
  br label %dec_label_pc_61261

dec_label_pc_61261:                               ; preds = %dec_label_pc_61261, %dec_label_pc_611f1
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_61278, label %dec_label_pc_61261

dec_label_pc_61278:                               ; preds = %dec_label_pc_61261
  %8 = call i32 @staticReturnsFalse.799()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_612d7, label %dec_label_pc_612c6

dec_label_pc_612c6:                               ; preds = %dec_label_pc_61278
  call void @printLine(ptr @global_var_b7e2a)
  br label %dec_label_pc_612e5

dec_label_pc_612d7:                               ; preds = %dec_label_pc_61278
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
  %10 = add i64 %5, %constexpr18
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  store ptr %12, ptr %stack_var_-864.0.reg2mem, align 8
  br label %dec_label_pc_612e5

dec_label_pc_612e5:                               ; preds = %dec_label_pc_612d7, %dec_label_pc_612c6
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-864.0.reload = load ptr, ptr %stack_var_-864.0.reg2mem, align 8
  %14 = add i64 %13, -816
  %15 = add i64 %13, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_612f2

dec_label_pc_612f2:                               ; preds = %dec_label_pc_612e5, %dec_label_pc_612f2
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %16 = ptrtoint ptr %storemerge24.reload to i64
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %14
  %19 = inttoptr i64 %18 to ptr
  store i32 0, ptr %19, align 8
  %20 = add i64 %15, %17
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %22 = add i64 %16, 1
  %23 = inttoptr i64 %22 to ptr
  %24 = icmp ugt ptr %23, inttoptr (i64 99 to ptr)
  store ptr %23, ptr %storemerge24.reg2mem, align 8
  br i1 %24, label %dec_label_pc_61368.preheader, label %dec_label_pc_612f2

dec_label_pc_61368.preheader:                     ; preds = %dec_label_pc_612f2
  %25 = ptrtoint ptr %stack_var_-864.0.reload to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_61335

dec_label_pc_61335:                               ; preds = %dec_label_pc_61368.preheader, %dec_label_pc_61335
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %26 = ptrtoint ptr %storemerge3.reload to i64
  %27 = mul i64 %26, 8
  %28 = add i64 %27, %25
  %29 = add i64 %27, %14
  %30 = inttoptr i64 %29 to ptr
  %31 = load i64, ptr %30, align 8
  %32 = inttoptr i64 %28 to ptr
  store i64 %31, ptr %32, align 8
  %33 = add i64 %26, 1
  %34 = inttoptr i64 %33 to ptr
  %35 = icmp ugt ptr %34, inttoptr (i64 99 to ptr)
  store ptr %34, ptr %storemerge3.reg2mem, align 8
  br i1 %35, label %dec_label_pc_61372, label %dec_label_pc_61335

dec_label_pc_61372:                               ; preds = %dec_label_pc_61335
  call void @printStructLine(ptr %stack_var_-864.0.reload)
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %1, %36
  br i1 %37, label %dec_label_pc_61396, label %dec_label_pc_61391

dec_label_pc_61391:                               ; preds = %dec_label_pc_61372
  call void @__stack_chk_fail()
  br label %dec_label_pc_61396

dec_label_pc_61396:                               ; preds = %dec_label_pc_61391, %dec_label_pc_61372
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
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

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

