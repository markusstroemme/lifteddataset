@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_e6078 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_60130:
  %0 = alloca ptr, align 8
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %data_-872 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %data_-872 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 %2, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6017e

dec_label_pc_6017e:                               ; preds = %dec_label_pc_6017e, %dec_label_pc_60130
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %2
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_60195, label %dec_label_pc_6017e

dec_label_pc_60195:                               ; preds = %dec_label_pc_6017e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %6 = sub i64 %2, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %7 = sub i64 %6, %constexpr8
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_60205

dec_label_pc_60205:                               ; preds = %dec_label_pc_60205, %dec_label_pc_60195
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %7
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_6021c, label %dec_label_pc_60205

dec_label_pc_6021c:                               ; preds = %dec_label_pc_60205
  %10 = ptrtoint ptr %stack_var_-8 to i64
  %11 = load i32, ptr @global_var_e6078, align 4
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
  %12 = add i64 %7, %constexpr18
  %13 = and i64 %12, -16
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %10, -816
  %16 = add i64 %10, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_60281

dec_label_pc_60281:                               ; preds = %dec_label_pc_6021c, %dec_label_pc_60281
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
  br i1 %25, label %dec_label_pc_602f7.preheader, label %dec_label_pc_60281

dec_label_pc_602f7.preheader:                     ; preds = %dec_label_pc_60281
  %26 = icmp eq i32 %11, 0
  %stack_var_-864.0 = select i1 %26, ptr %1, ptr %14
  %27 = ptrtoint ptr %stack_var_-864.0 to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_602c4

dec_label_pc_602c4:                               ; preds = %dec_label_pc_602f7.preheader, %dec_label_pc_602c4
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %28 = ptrtoint ptr %storemerge3.reload to i64
  %29 = mul i64 %28, 8
  %30 = add i64 %29, %27
  %31 = add i64 %29, %15
  %32 = inttoptr i64 %31 to ptr
  %33 = load i64, ptr %32, align 8
  %34 = inttoptr i64 %30 to ptr
  store i64 %33, ptr %34, align 8
  %35 = add i64 %28, 1
  %36 = inttoptr i64 %35 to ptr
  %37 = icmp ugt ptr %36, inttoptr (i64 99 to ptr)
  store ptr %36, ptr %storemerge3.reg2mem, align 8
  br i1 %37, label %dec_label_pc_60301, label %dec_label_pc_602c4

dec_label_pc_60301:                               ; preds = %dec_label_pc_602c4
  call void @printStructLine(ptr %stack_var_-864.0)
  %38 = call i64 @__readfsqword(i64 40)
  %39 = icmp eq i64 %3, %38
  br i1 %39, label %dec_label_pc_60325, label %dec_label_pc_60320

dec_label_pc_60320:                               ; preds = %dec_label_pc_60301
  call void @__stack_chk_fail()
  br label %dec_label_pc_60325

dec_label_pc_60325:                               ; preds = %dec_label_pc_60320, %dec_label_pc_60301
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

