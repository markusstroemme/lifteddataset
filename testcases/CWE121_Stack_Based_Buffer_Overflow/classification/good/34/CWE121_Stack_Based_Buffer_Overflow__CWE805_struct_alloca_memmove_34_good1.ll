@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_30136 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a323:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-872 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-872 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_a371

dec_label_pc_a371:                                ; preds = %dec_label_pc_a371, %dec_label_pc_a323
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_a388, label %dec_label_pc_a371

dec_label_pc_a388:                                ; preds = %dec_label_pc_a371
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
  br label %dec_label_pc_a3f8

dec_label_pc_a3f8:                                ; preds = %dec_label_pc_a3f8, %dec_label_pc_a388
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_a40f, label %dec_label_pc_a3f8

dec_label_pc_a40f:                                ; preds = %dec_label_pc_a3f8
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
  %10 = and i64 %9, -16
  store i64 %10, ptr %stack_var_-872, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_a486

dec_label_pc_a486:                                ; preds = %dec_label_pc_a40f, %dec_label_pc_a486
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %11 = ptrtoint ptr %storemerge2.reload to i64
  %12 = mul i64 %11, 8
  %13 = add i64 %12, %8
  %14 = add i64 %13, -816
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 8
  %16 = add i64 %13, -812
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %18 = add i64 %11, 1
  %19 = inttoptr i64 %18 to ptr
  %20 = icmp ugt ptr %19, inttoptr (i64 99 to ptr)
  store ptr %19, ptr %storemerge2.reg2mem, align 8
  br i1 %20, label %dec_label_pc_a4bc, label %dec_label_pc_a486

dec_label_pc_a4bc:                                ; preds = %dec_label_pc_a486
  %21 = inttoptr i64 %10 to ptr
  %22 = inttoptr i64 %10 to ptr
  %23 = call ptr @memmove(ptr %22, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %21)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  br i1 %25, label %dec_label_pc_a4fe, label %dec_label_pc_a4f9

dec_label_pc_a4f9:                                ; preds = %dec_label_pc_a4bc
  call void @__stack_chk_fail()
  br label %dec_label_pc_a4fe

dec_label_pc_a4fe:                                ; preds = %dec_label_pc_a4f9, %dec_label_pc_a4bc
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

