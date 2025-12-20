@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6cdcf:
  %storemerge3.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-856 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6ce1d

dec_label_pc_6ce1d:                               ; preds = %dec_label_pc_6ce1d, %dec_label_pc_6cdcf
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6ce34, label %dec_label_pc_6ce1d

dec_label_pc_6ce34:                               ; preds = %dec_label_pc_6ce1d
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
  br label %dec_label_pc_6cea4

dec_label_pc_6cea4:                               ; preds = %dec_label_pc_6cea4, %dec_label_pc_6ce34
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_6cebb, label %dec_label_pc_6cea4

dec_label_pc_6cebb:                               ; preds = %dec_label_pc_6cea4
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_6cf19, label %dec_label_pc_6cf09

dec_label_pc_6cf09:                               ; preds = %dec_label_pc_6cebb
  %11 = and i64 %5, -16
  %12 = bitcast ptr %stack_var_-856 to ptr
  store i64 %11, ptr %12, align 8
  br label %dec_label_pc_6cf27

dec_label_pc_6cf19:                               ; preds = %dec_label_pc_6cebb
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
  %13 = add i64 %6, %constexpr18
  %14 = and i64 %13, -16
  %15 = bitcast ptr %stack_var_-856 to ptr
  store i64 %14, ptr %15, align 8
  br label %dec_label_pc_6cf27

dec_label_pc_6cf27:                               ; preds = %dec_label_pc_6cf19, %dec_label_pc_6cf09
  %16 = ptrtoint ptr %stack_var_-8 to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_6cf34

dec_label_pc_6cf34:                               ; preds = %dec_label_pc_6cf27, %dec_label_pc_6cf34
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %17 = ptrtoint ptr %storemerge3.reload to i64
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = add i64 %19, -816
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 8
  %22 = add i64 %19, -812
  %23 = inttoptr i64 %22 to ptr
  store i32 0, ptr %23, align 4
  %24 = add i64 %17, 1
  %25 = inttoptr i64 %24 to ptr
  %26 = icmp ugt ptr %25, inttoptr (i64 99 to ptr)
  store ptr %25, ptr %storemerge3.reg2mem, align 8
  br i1 %26, label %dec_label_pc_6cf6a, label %dec_label_pc_6cf34

dec_label_pc_6cf6a:                               ; preds = %dec_label_pc_6cf34
  %27 = load ptr, ptr %stack_var_-856, align 8
  %28 = bitcast ptr %27 to ptr
  %29 = call ptr @memcpy(ptr %28, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %30 = load ptr, ptr %stack_var_-856, align 8
  call void @printStructLine(ptr %30)
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %1, %31
  br i1 %32, label %dec_label_pc_6cfac, label %dec_label_pc_6cfa7

dec_label_pc_6cfa7:                               ; preds = %dec_label_pc_6cf6a
  call void @__stack_chk_fail()
  br label %dec_label_pc_6cfac

dec_label_pc_6cfac:                               ; preds = %dec_label_pc_6cfa7, %dec_label_pc_6cf6a
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_9d049:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

