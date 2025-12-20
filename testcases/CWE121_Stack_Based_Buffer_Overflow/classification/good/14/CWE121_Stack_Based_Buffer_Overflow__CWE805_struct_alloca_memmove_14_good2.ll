@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_30136 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32
@global_var_3d03c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_86f1:
  %storemerge3.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-856 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_873f

dec_label_pc_873f:                                ; preds = %dec_label_pc_873f, %dec_label_pc_86f1
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8756, label %dec_label_pc_873f

dec_label_pc_8756:                                ; preds = %dec_label_pc_873f
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
  br label %dec_label_pc_87c6

dec_label_pc_87c6:                                ; preds = %dec_label_pc_87c6, %dec_label_pc_8756
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_87dd, label %dec_label_pc_87c6

dec_label_pc_87dd:                                ; preds = %dec_label_pc_87c6
  %8 = load i32, ptr @global_var_3d03c, align 4
  %9 = icmp eq i32 %8, 5
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_8836, label %dec_label_pc_8828

dec_label_pc_8828:                                ; preds = %dec_label_pc_87dd
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
  %11 = add i64 %5, %constexpr18
  %12 = and i64 %11, -16
  %13 = bitcast ptr %stack_var_-856 to ptr
  store i64 %12, ptr %13, align 8
  br label %dec_label_pc_8836

dec_label_pc_8836:                                ; preds = %dec_label_pc_8828, %dec_label_pc_87dd
  %14 = ptrtoint ptr %stack_var_-8 to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_8843

dec_label_pc_8843:                                ; preds = %dec_label_pc_8836, %dec_label_pc_8843
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %15 = ptrtoint ptr %storemerge3.reload to i64
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = add i64 %17, -816
  %19 = inttoptr i64 %18 to ptr
  store i32 0, ptr %19, align 8
  %20 = add i64 %17, -812
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %22 = add i64 %15, 1
  %23 = inttoptr i64 %22 to ptr
  %24 = icmp ugt ptr %23, inttoptr (i64 99 to ptr)
  store ptr %23, ptr %storemerge3.reg2mem, align 8
  br i1 %24, label %dec_label_pc_8879, label %dec_label_pc_8843

dec_label_pc_8879:                                ; preds = %dec_label_pc_8843
  %25 = load ptr, ptr %stack_var_-856, align 8
  %26 = bitcast ptr %25 to ptr
  %27 = call ptr @memmove(ptr %26, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %28 = load ptr, ptr %stack_var_-856, align 8
  call void @printStructLine(ptr %28)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %1, %29
  br i1 %30, label %dec_label_pc_88bb, label %dec_label_pc_88b6

dec_label_pc_88b6:                                ; preds = %dec_label_pc_8879
  call void @__stack_chk_fail()
  br label %dec_label_pc_88bb

dec_label_pc_88bb:                                ; preds = %dec_label_pc_88b6, %dec_label_pc_8879
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_275a6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_30136, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

