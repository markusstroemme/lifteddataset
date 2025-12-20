@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a5a3:
  %.lcssa.reg2mem = alloca ptr, align 8
  %.reg2mem6 = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_a5ec

dec_label_pc_a5ec:                                ; preds = %dec_label_pc_a5ec, %dec_label_pc_a5a3
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_a603, label %dec_label_pc_a5ec

dec_label_pc_a603:                                ; preds = %dec_label_pc_a5ec
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_a66e

dec_label_pc_a66e:                                ; preds = %dec_label_pc_a66e, %dec_label_pc_a603
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_a685, label %dec_label_pc_a66e

dec_label_pc_a685:                                ; preds = %dec_label_pc_a66e
  %7 = call i32 @globalReturnsTrue()
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_a6df, label %dec_label_pc_a6d0

dec_label_pc_a6d0:                                ; preds = %dec_label_pc_a685
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  %12 = bitcast ptr %stack_var_-72 to ptr
  store i64 %10, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_a6df

dec_label_pc_a6df:                                ; preds = %dec_label_pc_a6d0, %dec_label_pc_a685
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %13 = bitcast ptr %stack_var_-27 to ptr
  %14 = call i32 @strlen(ptr nonnull %13)
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, 1
  %17 = icmp eq i64 %16, 0
  %18 = load ptr, ptr %stack_var_-72, align 8
  store ptr %18, ptr %.lcssa.reg2mem, align 8
  br i1 %17, label %dec_label_pc_a73f, label %dec_label_pc_a711.lr.ph

dec_label_pc_a711.lr.ph:                          ; preds = %dec_label_pc_a6df
  %19 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %18, ptr %.reg2mem, align 8
  store i64 0, ptr %.reg2mem6, align 8
  br label %dec_label_pc_a711

dec_label_pc_a711:                                ; preds = %dec_label_pc_a711, %dec_label_pc_a711.lr.ph
  %.reload7 = load i64, ptr %.reg2mem6, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %20 = ptrtoint ptr %.reload to i64
  %21 = add i64 %.reload7, %20
  %22 = add i64 %.reload7, %19
  %23 = inttoptr i64 %22 to ptr
  %24 = load i8, ptr %23, align 1
  %25 = inttoptr i64 %21 to ptr
  store i8 %24, ptr %25, align 1
  %26 = add nuw i64 %.reload7, 1
  %27 = load ptr, ptr %stack_var_-72, align 8
  %exitcond = icmp eq i64 %26, %16
  store ptr %27, ptr %.reg2mem, align 8
  store i64 %26, ptr %.reg2mem6, align 8
  store ptr %27, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_a73f, label %dec_label_pc_a711

dec_label_pc_a73f:                                ; preds = %dec_label_pc_a711, %dec_label_pc_a6df
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %1, %28
  br i1 %29, label %dec_label_pc_a760, label %dec_label_pc_a75b

dec_label_pc_a75b:                                ; preds = %dec_label_pc_a73f
  call void @__stack_chk_fail()
  br label %dec_label_pc_a760

dec_label_pc_a760:                                ; preds = %dec_label_pc_a75b, %dec_label_pc_a73f
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_4f483:
  ret i32 1
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

