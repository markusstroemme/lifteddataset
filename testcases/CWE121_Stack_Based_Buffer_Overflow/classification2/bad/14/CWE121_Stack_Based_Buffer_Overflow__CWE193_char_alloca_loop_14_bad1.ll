@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_b09a:
  %.lcssa.reg2mem = alloca ptr, align 8
  %.reg2mem5 = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_b0e3

dec_label_pc_b0e3:                                ; preds = %dec_label_pc_b0e3, %dec_label_pc_b09a
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_b0fa, label %dec_label_pc_b0e3

dec_label_pc_b0fa:                                ; preds = %dec_label_pc_b0e3
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_b165

dec_label_pc_b165:                                ; preds = %dec_label_pc_b165, %dec_label_pc_b0fa
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_b17c, label %dec_label_pc_b165

dec_label_pc_b17c:                                ; preds = %dec_label_pc_b165
  %9 = load i32, ptr inttoptr (i64 491620 to ptr), align 4
  %10 = icmp eq i32 %9, 5
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_b1d3, label %dec_label_pc_b1c4

dec_label_pc_b1c4:                                ; preds = %dec_label_pc_b17c
  %12 = inttoptr i64 %6 to ptr
  %13 = bitcast ptr %stack_var_-72 to ptr
  store i64 %6, ptr %13, align 8
  store i8 0, ptr %12, align 16
  br label %dec_label_pc_b1d3

dec_label_pc_b1d3:                                ; preds = %dec_label_pc_b1c4, %dec_label_pc_b17c
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %14 = bitcast ptr %stack_var_-27 to ptr
  %15 = call i32 @strlen(ptr nonnull %14)
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, 1
  %18 = icmp eq i64 %17, 0
  %19 = load ptr, ptr %stack_var_-72, align 8
  store ptr %19, ptr %.lcssa.reg2mem, align 8
  br i1 %18, label %dec_label_pc_b233, label %dec_label_pc_b205.lr.ph

dec_label_pc_b205.lr.ph:                          ; preds = %dec_label_pc_b1d3
  %20 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %19, ptr %.reg2mem, align 8
  store i64 0, ptr %.reg2mem5, align 8
  br label %dec_label_pc_b205

dec_label_pc_b205:                                ; preds = %dec_label_pc_b205, %dec_label_pc_b205.lr.ph
  %.reload6 = load i64, ptr %.reg2mem5, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %21 = ptrtoint ptr %.reload to i64
  %22 = add i64 %.reload6, %21
  %23 = add i64 %.reload6, %20
  %24 = inttoptr i64 %23 to ptr
  %25 = load i8, ptr %24, align 1
  %26 = inttoptr i64 %22 to ptr
  store i8 %25, ptr %26, align 1
  %27 = add nuw i64 %.reload6, 1
  %28 = load ptr, ptr %stack_var_-72, align 8
  %exitcond = icmp eq i64 %27, %17
  store ptr %28, ptr %.reg2mem, align 8
  store i64 %27, ptr %.reg2mem5, align 8
  store ptr %28, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_b233, label %dec_label_pc_b205

dec_label_pc_b233:                                ; preds = %dec_label_pc_b205, %dec_label_pc_b1d3
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %1, %29
  br i1 %30, label %dec_label_pc_b254, label %dec_label_pc_b24f

dec_label_pc_b24f:                                ; preds = %dec_label_pc_b233
  call void @__stack_chk_fail()
  br label %dec_label_pc_b254

dec_label_pc_b254:                                ; preds = %dec_label_pc_b24f, %dec_label_pc_b233
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

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

