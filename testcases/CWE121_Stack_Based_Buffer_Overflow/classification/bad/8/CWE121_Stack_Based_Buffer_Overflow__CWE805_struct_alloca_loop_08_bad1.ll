@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define i32 @staticReturnsTrue.798() local_unnamed_addr {
dec_label_pc_60f73:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_60f91:
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
  br label %dec_label_pc_60fdf

dec_label_pc_60fdf:                               ; preds = %dec_label_pc_60fdf, %dec_label_pc_60f91
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_60ff6, label %dec_label_pc_60fdf

dec_label_pc_60ff6:                               ; preds = %dec_label_pc_60fdf
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
  br label %dec_label_pc_61066

dec_label_pc_61066:                               ; preds = %dec_label_pc_61066, %dec_label_pc_60ff6
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_6107d, label %dec_label_pc_61066

dec_label_pc_6107d:                               ; preds = %dec_label_pc_61066
  %9 = call i32 @staticReturnsTrue.798()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_610d9, label %dec_label_pc_610cb

dec_label_pc_610cb:                               ; preds = %dec_label_pc_6107d
  %11 = and i64 %5, -16
  %12 = bitcast ptr %stack_var_-864 to ptr
  store i64 %11, ptr %12, align 8
  br label %dec_label_pc_610d9

dec_label_pc_610d9:                               ; preds = %dec_label_pc_610cb, %dec_label_pc_6107d
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = add i64 %13, -816
  %15 = add i64 %13, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_610e6

dec_label_pc_610e6:                               ; preds = %dec_label_pc_610d9, %dec_label_pc_610e6
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
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %24, label %dec_label_pc_61129, label %dec_label_pc_610e6

dec_label_pc_61129:                               ; preds = %dec_label_pc_610e6, %dec_label_pc_61129
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %25 = ptrtoint ptr %storemerge3.reload to i64
  %26 = mul i64 %25, 8
  %27 = load ptr, ptr %stack_var_-864, align 8
  %28 = ptrtoint ptr %27 to i64
  %29 = add i64 %26, %28
  %30 = add i64 %26, %14
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %29 to ptr
  store i64 %32, ptr %33, align 8
  %34 = add i64 %25, 1
  %35 = inttoptr i64 %34 to ptr
  %36 = icmp ugt ptr %35, inttoptr (i64 99 to ptr)
  store ptr %35, ptr %storemerge3.reg2mem, align 8
  br i1 %36, label %dec_label_pc_61166, label %dec_label_pc_61129

dec_label_pc_61166:                               ; preds = %dec_label_pc_61129
  %37 = load ptr, ptr %stack_var_-864, align 8
  call void @printStructLine(ptr %37)
  %38 = call i64 @__readfsqword(i64 40)
  %39 = icmp eq i64 %1, %38
  br i1 %39, label %dec_label_pc_6118a, label %dec_label_pc_61185

dec_label_pc_61185:                               ; preds = %dec_label_pc_61166
  call void @__stack_chk_fail()
  br label %dec_label_pc_6118a

dec_label_pc_6118a:                               ; preds = %dec_label_pc_61185, %dec_label_pc_61166
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

