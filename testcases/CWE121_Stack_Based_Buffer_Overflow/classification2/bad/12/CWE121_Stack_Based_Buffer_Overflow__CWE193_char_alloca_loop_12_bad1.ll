@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a781:
  %.lcssa.reg2mem = alloca ptr, align 8
  %.reg2mem7 = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_a7ca

dec_label_pc_a7ca:                                ; preds = %dec_label_pc_a7ca, %dec_label_pc_a781
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_a7e1, label %dec_label_pc_a7ca

dec_label_pc_a7e1:                                ; preds = %dec_label_pc_a7ca
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_a84c

dec_label_pc_a84c:                                ; preds = %dec_label_pc_a84c, %dec_label_pc_a7e1
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_a863, label %dec_label_pc_a84c

dec_label_pc_a863:                                ; preds = %dec_label_pc_a84c
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_a8bf, label %dec_label_pc_a8ae

dec_label_pc_a8ae:                                ; preds = %dec_label_pc_a863
  %11 = inttoptr i64 %6 to ptr
  %12 = bitcast ptr %stack_var_-72 to ptr
  store i64 %6, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_a8ce

dec_label_pc_a8bf:                                ; preds = %dec_label_pc_a863
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %13 = add i64 %4, %constexpr5
  %14 = and i64 %13, -16
  %15 = inttoptr i64 %14 to ptr
  %16 = bitcast ptr %stack_var_-72 to ptr
  store i64 %14, ptr %16, align 8
  store i8 0, ptr %15, align 16
  br label %dec_label_pc_a8ce

dec_label_pc_a8ce:                                ; preds = %dec_label_pc_a8bf, %dec_label_pc_a8ae
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %17 = bitcast ptr %stack_var_-27 to ptr
  %18 = call i32 @strlen(ptr nonnull %17)
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, 1
  %21 = icmp eq i64 %20, 0
  %22 = load ptr, ptr %stack_var_-72, align 8
  store ptr %22, ptr %.lcssa.reg2mem, align 8
  br i1 %21, label %dec_label_pc_a92e, label %dec_label_pc_a900.lr.ph

dec_label_pc_a900.lr.ph:                          ; preds = %dec_label_pc_a8ce
  %23 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %22, ptr %.reg2mem, align 8
  store i64 0, ptr %.reg2mem7, align 8
  br label %dec_label_pc_a900

dec_label_pc_a900:                                ; preds = %dec_label_pc_a900, %dec_label_pc_a900.lr.ph
  %.reload8 = load i64, ptr %.reg2mem7, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %24 = ptrtoint ptr %.reload to i64
  %25 = add i64 %.reload8, %24
  %26 = add i64 %.reload8, %23
  %27 = inttoptr i64 %26 to ptr
  %28 = load i8, ptr %27, align 1
  %29 = inttoptr i64 %25 to ptr
  store i8 %28, ptr %29, align 1
  %30 = add nuw i64 %.reload8, 1
  %31 = load ptr, ptr %stack_var_-72, align 8
  %exitcond = icmp eq i64 %30, %20
  store ptr %31, ptr %.reg2mem, align 8
  store i64 %30, ptr %.reg2mem7, align 8
  store ptr %31, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_a92e, label %dec_label_pc_a900

dec_label_pc_a92e:                                ; preds = %dec_label_pc_a900, %dec_label_pc_a8ce
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %1, %32
  br i1 %33, label %dec_label_pc_a94f, label %dec_label_pc_a94a

dec_label_pc_a94a:                                ; preds = %dec_label_pc_a92e
  call void @__stack_chk_fail()
  br label %dec_label_pc_a94f

dec_label_pc_a94f:                                ; preds = %dec_label_pc_a94a, %dec_label_pc_a92e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4f4a1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

