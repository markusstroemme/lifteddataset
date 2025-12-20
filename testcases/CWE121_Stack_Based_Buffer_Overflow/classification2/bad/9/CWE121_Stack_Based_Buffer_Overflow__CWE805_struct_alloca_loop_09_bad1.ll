@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_615b2:
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
  br label %dec_label_pc_61600

dec_label_pc_61600:                               ; preds = %dec_label_pc_61600, %dec_label_pc_615b2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_61617, label %dec_label_pc_61600

dec_label_pc_61617:                               ; preds = %dec_label_pc_61600
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
  br label %dec_label_pc_61687

dec_label_pc_61687:                               ; preds = %dec_label_pc_61687, %dec_label_pc_61617
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_6169e, label %dec_label_pc_61687

dec_label_pc_6169e:                               ; preds = %dec_label_pc_61687
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %10 = and i64 %5, -16
  %11 = bitcast ptr %stack_var_-864 to ptr
  store i64 %10, ptr %11, align 8
  %12 = add i64 %9, -816
  %13 = add i64 %9, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_61703

dec_label_pc_61703:                               ; preds = %dec_label_pc_6169e, %dec_label_pc_61703
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge24.reload to i64
  %15 = mul i64 %14, 8
  %16 = add i64 %15, %12
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 8
  %18 = add i64 %13, %15
  %19 = inttoptr i64 %18 to ptr
  store i32 0, ptr %19, align 4
  %20 = add i64 %14, 1
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp ugt ptr %21, inttoptr (i64 99 to ptr)
  store ptr %21, ptr %storemerge24.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %22, label %dec_label_pc_61746, label %dec_label_pc_61703

dec_label_pc_61746:                               ; preds = %dec_label_pc_61703, %dec_label_pc_61746
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %23 = ptrtoint ptr %storemerge3.reload to i64
  %24 = mul i64 %23, 8
  %25 = load ptr, ptr %stack_var_-864, align 8
  %26 = ptrtoint ptr %25 to i64
  %27 = add i64 %24, %26
  %28 = add i64 %24, %12
  %29 = inttoptr i64 %28 to ptr
  %30 = load i64, ptr %29, align 8
  %31 = inttoptr i64 %27 to ptr
  store i64 %30, ptr %31, align 8
  %32 = add i64 %23, 1
  %33 = inttoptr i64 %32 to ptr
  %34 = icmp ugt ptr %33, inttoptr (i64 99 to ptr)
  store ptr %33, ptr %storemerge3.reg2mem, align 8
  br i1 %34, label %dec_label_pc_61783, label %dec_label_pc_61746

dec_label_pc_61783:                               ; preds = %dec_label_pc_61746
  %35 = load ptr, ptr %stack_var_-864, align 8
  call void @printStructLine(ptr %35)
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %1, %36
  br i1 %37, label %dec_label_pc_617a7, label %dec_label_pc_617a2

dec_label_pc_617a2:                               ; preds = %dec_label_pc_61783
  call void @__stack_chk_fail()
  br label %dec_label_pc_617a7

dec_label_pc_617a7:                               ; preds = %dec_label_pc_617a2, %dec_label_pc_61783
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

