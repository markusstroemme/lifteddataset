@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define i32 @staticReturnsTrue.851() local_unnamed_addr {
dec_label_pc_6b755:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_6b773:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-856 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6b7c1

dec_label_pc_6b7c1:                               ; preds = %dec_label_pc_6b7c1, %dec_label_pc_6b773
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6b7d8, label %dec_label_pc_6b7c1

dec_label_pc_6b7d8:                               ; preds = %dec_label_pc_6b7c1
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
  br label %dec_label_pc_6b848

dec_label_pc_6b848:                               ; preds = %dec_label_pc_6b848, %dec_label_pc_6b7d8
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_6b85f, label %dec_label_pc_6b848

dec_label_pc_6b85f:                               ; preds = %dec_label_pc_6b848
  %9 = call i32 @staticReturnsTrue.851()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_6b8bb, label %dec_label_pc_6b8ad

dec_label_pc_6b8ad:                               ; preds = %dec_label_pc_6b85f
  %11 = and i64 %5, -16
  %12 = bitcast ptr %stack_var_-856 to ptr
  store i64 %11, ptr %12, align 8
  br label %dec_label_pc_6b8bb

dec_label_pc_6b8bb:                               ; preds = %dec_label_pc_6b8ad, %dec_label_pc_6b85f
  %13 = ptrtoint ptr %stack_var_-8 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_6b8c8

dec_label_pc_6b8c8:                               ; preds = %dec_label_pc_6b8bb, %dec_label_pc_6b8c8
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge2.reload to i64
  %15 = mul i64 %14, 8
  %16 = add i64 %15, %13
  %17 = add i64 %16, -816
  %18 = inttoptr i64 %17 to ptr
  store i32 0, ptr %18, align 8
  %19 = add i64 %16, -812
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %21 = add i64 %14, 1
  %22 = inttoptr i64 %21 to ptr
  %23 = icmp ugt ptr %22, inttoptr (i64 99 to ptr)
  store ptr %22, ptr %storemerge2.reg2mem, align 8
  br i1 %23, label %dec_label_pc_6b8fe, label %dec_label_pc_6b8c8

dec_label_pc_6b8fe:                               ; preds = %dec_label_pc_6b8c8
  %24 = load ptr, ptr %stack_var_-856, align 8
  %25 = bitcast ptr %24 to ptr
  %26 = call ptr @memcpy(ptr %25, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %27 = load ptr, ptr %stack_var_-856, align 8
  call void @printStructLine(ptr %27)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %1, %28
  br i1 %29, label %dec_label_pc_6b940, label %dec_label_pc_6b93b

dec_label_pc_6b93b:                               ; preds = %dec_label_pc_6b8fe
  call void @__stack_chk_fail()
  br label %dec_label_pc_6b940

dec_label_pc_6b940:                               ; preds = %dec_label_pc_6b93b, %dec_label_pc_6b8fe
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

