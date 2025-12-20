@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_63a46:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-872 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-872 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_63a94

dec_label_pc_63a94:                               ; preds = %dec_label_pc_63a94, %dec_label_pc_63a46
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_63aab, label %dec_label_pc_63a94

dec_label_pc_63aab:                               ; preds = %dec_label_pc_63a94
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
  br label %dec_label_pc_63b1b

dec_label_pc_63b1b:                               ; preds = %dec_label_pc_63b1b, %dec_label_pc_63aab
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_63b32, label %dec_label_pc_63b1b

dec_label_pc_63b32:                               ; preds = %dec_label_pc_63b1b
  %8 = ptrtoint ptr %stack_var_-8 to i64
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
  %9 = add i64 %5, %constexpr18
  %10 = add i64 %8, -816
  %11 = add i64 %8, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_63b8e

dec_label_pc_63b8e:                               ; preds = %dec_label_pc_63b32, %dec_label_pc_63b8e
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %12 = ptrtoint ptr %storemerge24.reload to i64
  %13 = mul i64 %12, 8
  %14 = add i64 %13, %10
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 8
  %16 = add i64 %11, %13
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %18 = add i64 %12, 1
  %19 = inttoptr i64 %18 to ptr
  %20 = icmp ugt ptr %19, inttoptr (i64 99 to ptr)
  store ptr %19, ptr %storemerge24.reg2mem, align 8
  br i1 %20, label %dec_label_pc_63c04.preheader, label %dec_label_pc_63b8e

dec_label_pc_63c04.preheader:                     ; preds = %dec_label_pc_63b8e
  %21 = and i64 %9, -16
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_63bd1

dec_label_pc_63bd1:                               ; preds = %dec_label_pc_63c04.preheader, %dec_label_pc_63bd1
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %22 = ptrtoint ptr %storemerge3.reload to i64
  %23 = mul i64 %22, 8
  %24 = add i64 %23, %21
  %25 = add i64 %23, %10
  %26 = inttoptr i64 %25 to ptr
  %27 = load i64, ptr %26, align 8
  %28 = inttoptr i64 %24 to ptr
  store i64 %27, ptr %28, align 8
  %29 = add i64 %22, 1
  %30 = inttoptr i64 %29 to ptr
  %31 = icmp ugt ptr %30, inttoptr (i64 99 to ptr)
  store ptr %30, ptr %storemerge3.reg2mem, align 8
  br i1 %31, label %dec_label_pc_63c0e, label %dec_label_pc_63bd1

dec_label_pc_63c0e:                               ; preds = %dec_label_pc_63bd1
  %32 = inttoptr i64 %21 to ptr
  call void @printStructLine(ptr %32)
  %33 = call i64 @__readfsqword(i64 40)
  %34 = icmp eq i64 %1, %33
  br i1 %34, label %dec_label_pc_63c32, label %dec_label_pc_63c2d

dec_label_pc_63c2d:                               ; preds = %dec_label_pc_63c0e
  call void @__stack_chk_fail()
  br label %dec_label_pc_63c32

dec_label_pc_63c32:                               ; preds = %dec_label_pc_63c2d, %dec_label_pc_63c0e
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

