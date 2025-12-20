@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_69f31:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %dataBadBuffer_-856 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_69f7f

dec_label_pc_69f7f:                               ; preds = %dec_label_pc_69f7f, %dec_label_pc_69f31
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_69f96, label %dec_label_pc_69f7f

dec_label_pc_69f96:                               ; preds = %dec_label_pc_69f7f
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
  br label %dec_label_pc_6a006

dec_label_pc_6a006:                               ; preds = %dec_label_pc_6a006, %dec_label_pc_69f96
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_6a01d, label %dec_label_pc_6a006

dec_label_pc_6a01d:                               ; preds = %dec_label_pc_6a006
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
  store ptr null, ptr %dataBadBuffer_-856, align 8
  %10 = add i64 %8, -816
  %11 = add i64 %8, -812
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_6a078

dec_label_pc_6a078:                               ; preds = %dec_label_pc_6a01d, %dec_label_pc_6a078
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %12 = ptrtoint ptr %storemerge2.reload to i64
  %13 = mul i64 %12, 8
  %14 = add i64 %10, %13
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 8
  %16 = load ptr, ptr %dataBadBuffer_-856, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = mul i64 %17, 8
  %19 = add i64 %11, %18
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %21 = load ptr, ptr %dataBadBuffer_-856, align 8
  %22 = ptrtoint ptr %21 to i64
  %23 = add i64 %22, 1
  %24 = inttoptr i64 %23 to ptr
  store ptr %24, ptr %dataBadBuffer_-856, align 8
  %25 = icmp ugt ptr %24, inttoptr (i64 99 to ptr)
  store ptr %24, ptr %storemerge2.reg2mem, align 8
  br i1 %25, label %dec_label_pc_6a0ae, label %dec_label_pc_6a078

dec_label_pc_6a0ae:                               ; preds = %dec_label_pc_6a078
  %26 = and i64 %9, -16
  %27 = inttoptr i64 %26 to ptr
  %28 = inttoptr i64 %26 to ptr
  %29 = call ptr @memcpy(ptr %28, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %27)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %1, %30
  br i1 %31, label %dec_label_pc_6a0f0, label %dec_label_pc_6a0eb

dec_label_pc_6a0eb:                               ; preds = %dec_label_pc_6a0ae
  call void @__stack_chk_fail()
  br label %dec_label_pc_6a0f0

dec_label_pc_6a0f0:                               ; preds = %dec_label_pc_6a0eb, %dec_label_pc_6a0ae
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

