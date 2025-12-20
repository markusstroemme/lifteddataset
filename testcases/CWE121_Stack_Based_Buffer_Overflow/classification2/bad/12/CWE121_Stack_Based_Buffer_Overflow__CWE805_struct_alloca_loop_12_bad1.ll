@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_627fd:
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
  br label %dec_label_pc_6284b

dec_label_pc_6284b:                               ; preds = %dec_label_pc_6284b, %dec_label_pc_627fd
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_62862, label %dec_label_pc_6284b

dec_label_pc_62862:                               ; preds = %dec_label_pc_6284b
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
  br label %dec_label_pc_628d2

dec_label_pc_628d2:                               ; preds = %dec_label_pc_628d2, %dec_label_pc_62862
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_628e9, label %dec_label_pc_628d2

dec_label_pc_628e9:                               ; preds = %dec_label_pc_628d2
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_62947, label %dec_label_pc_62937

dec_label_pc_62937:                               ; preds = %dec_label_pc_628e9
  %11 = and i64 %5, -16
  %12 = bitcast ptr %stack_var_-864 to ptr
  store i64 %11, ptr %12, align 8
  br label %dec_label_pc_62955

dec_label_pc_62947:                               ; preds = %dec_label_pc_628e9
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
  %15 = inttoptr i64 %14 to ptr
  store ptr %15, ptr %stack_var_-864, align 8
  br label %dec_label_pc_62955

dec_label_pc_62955:                               ; preds = %dec_label_pc_62947, %dec_label_pc_62937
  %16 = ptrtoint ptr %stack_var_-8 to i64
  %17 = add i64 %16, -816
  %18 = add i64 %16, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_62962

dec_label_pc_62962:                               ; preds = %dec_label_pc_62955, %dec_label_pc_62962
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %19 = ptrtoint ptr %storemerge24.reload to i64
  %20 = mul i64 %19, 8
  %21 = add i64 %20, %17
  %22 = inttoptr i64 %21 to ptr
  store i32 0, ptr %22, align 8
  %23 = add i64 %18, %20
  %24 = inttoptr i64 %23 to ptr
  store i32 0, ptr %24, align 4
  %25 = add i64 %19, 1
  %26 = inttoptr i64 %25 to ptr
  %27 = icmp ugt ptr %26, inttoptr (i64 99 to ptr)
  store ptr %26, ptr %storemerge24.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %27, label %dec_label_pc_629a5, label %dec_label_pc_62962

dec_label_pc_629a5:                               ; preds = %dec_label_pc_62962, %dec_label_pc_629a5
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %28 = ptrtoint ptr %storemerge3.reload to i64
  %29 = mul i64 %28, 8
  %30 = load ptr, ptr %stack_var_-864, align 8
  %31 = ptrtoint ptr %30 to i64
  %32 = add i64 %29, %31
  %33 = add i64 %29, %17
  %34 = inttoptr i64 %33 to ptr
  %35 = load i64, ptr %34, align 8
  %36 = inttoptr i64 %32 to ptr
  store i64 %35, ptr %36, align 8
  %37 = add i64 %28, 1
  %38 = inttoptr i64 %37 to ptr
  %39 = icmp ugt ptr %38, inttoptr (i64 99 to ptr)
  store ptr %38, ptr %storemerge3.reg2mem, align 8
  br i1 %39, label %dec_label_pc_629e2, label %dec_label_pc_629a5

dec_label_pc_629e2:                               ; preds = %dec_label_pc_629a5
  %40 = load ptr, ptr %stack_var_-864, align 8
  call void @printStructLine(ptr %40)
  %41 = call i64 @__readfsqword(i64 40)
  %42 = icmp eq i64 %1, %41
  br i1 %42, label %dec_label_pc_62a06, label %dec_label_pc_62a01

dec_label_pc_62a01:                               ; preds = %dec_label_pc_629e2
  call void @__stack_chk_fail()
  br label %dec_label_pc_62a06

dec_label_pc_62a06:                               ; preds = %dec_label_pc_62a01, %dec_label_pc_629e2
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

