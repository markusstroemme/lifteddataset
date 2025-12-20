@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a951:
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
  br label %dec_label_pc_a99a

dec_label_pc_a99a:                                ; preds = %dec_label_pc_a99a, %dec_label_pc_a951
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_a9b1, label %dec_label_pc_a99a

dec_label_pc_a9b1:                                ; preds = %dec_label_pc_a99a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_aa1c

dec_label_pc_aa1c:                                ; preds = %dec_label_pc_aa1c, %dec_label_pc_a9b1
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_aa33, label %dec_label_pc_aa1c

dec_label_pc_aa33:                                ; preds = %dec_label_pc_aa1c
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = bitcast ptr %stack_var_-72 to ptr
  store i64 %8, ptr %10, align 8
  %.cast3 = inttoptr i64 %8 to ptr
  store i8 0, ptr %.cast3, align 16
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %11 = bitcast ptr %stack_var_-27 to ptr
  %12 = call i32 @strlen(ptr nonnull %11)
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, 1
  %15 = icmp eq i64 %14, 0
  %16 = load ptr, ptr %stack_var_-72, align 8
  store ptr %16, ptr %.lcssa.reg2mem, align 8
  br i1 %15, label %dec_label_pc_aafe, label %dec_label_pc_aad0.lr.ph

dec_label_pc_aad0.lr.ph:                          ; preds = %dec_label_pc_aa33
  %17 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %16, ptr %.reg2mem, align 8
  store i64 0, ptr %.reg2mem7, align 8
  br label %dec_label_pc_aad0

dec_label_pc_aad0:                                ; preds = %dec_label_pc_aad0, %dec_label_pc_aad0.lr.ph
  %.reload8 = load i64, ptr %.reg2mem7, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %18 = ptrtoint ptr %.reload to i64
  %19 = add i64 %.reload8, %18
  %20 = add i64 %.reload8, %17
  %21 = inttoptr i64 %20 to ptr
  %22 = load i8, ptr %21, align 1
  %23 = inttoptr i64 %19 to ptr
  store i8 %22, ptr %23, align 1
  %24 = add nuw i64 %.reload8, 1
  %25 = load ptr, ptr %stack_var_-72, align 8
  %exitcond = icmp eq i64 %24, %14
  store ptr %25, ptr %.reg2mem, align 8
  store i64 %24, ptr %.reg2mem7, align 8
  store ptr %25, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_aafe, label %dec_label_pc_aad0

dec_label_pc_aafe:                                ; preds = %dec_label_pc_aad0, %dec_label_pc_aa33
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_ab1f, label %dec_label_pc_ab1a

dec_label_pc_ab1a:                                ; preds = %dec_label_pc_aafe
  call void @__stack_chk_fail()
  br label %dec_label_pc_ab1f

dec_label_pc_ab1f:                                ; preds = %dec_label_pc_ab1a, %dec_label_pc_aafe
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

