@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_cd32:
  %.lcssa.reg2mem = alloca ptr, align 8
  %.reg2mem6 = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-48 = alloca ptr, align 8
  %stack_var_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_cd7b

dec_label_pc_cd7b:                                ; preds = %dec_label_pc_cd7b, %dec_label_pc_cd32
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_cd92, label %dec_label_pc_cd7b

dec_label_pc_cd92:                                ; preds = %dec_label_pc_cd7b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_cdfd

dec_label_pc_cdfd:                                ; preds = %dec_label_pc_cdfd, %dec_label_pc_cd92
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_ce14, label %dec_label_pc_cdfd

dec_label_pc_ce14:                                ; preds = %dec_label_pc_cdfd
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  store ptr %9, ptr %stack_var_-88, align 8
  %10 = bitcast ptr %stack_var_-48 to ptr
  store i64 %8, ptr %10, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %11 = bitcast ptr %stack_var_-27 to ptr
  %12 = call i32 @strlen(ptr nonnull %11)
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, 1
  %15 = icmp eq i64 %14, 0
  store ptr %9, ptr %.lcssa.reg2mem, align 8
  br i1 %15, label %dec_label_pc_ced0, label %dec_label_pc_cea2.lr.ph

dec_label_pc_cea2.lr.ph:                          ; preds = %dec_label_pc_ce14
  %16 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %9, ptr %.reg2mem, align 8
  store i64 0, ptr %.reg2mem6, align 8
  br label %dec_label_pc_cea2

dec_label_pc_cea2:                                ; preds = %dec_label_pc_cea2, %dec_label_pc_cea2.lr.ph
  %.reload7 = load i64, ptr %.reg2mem6, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %17 = ptrtoint ptr %.reload to i64
  %18 = add i64 %.reload7, %17
  %19 = add i64 %.reload7, %16
  %20 = inttoptr i64 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = inttoptr i64 %18 to ptr
  store i8 %21, ptr %22, align 1
  %23 = add nuw i64 %.reload7, 1
  %24 = load ptr, ptr %stack_var_-48, align 8
  %exitcond = icmp eq i64 %23, %14
  store ptr %24, ptr %.reg2mem, align 8
  store i64 %23, ptr %.reg2mem6, align 8
  store ptr %24, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_ced0, label %dec_label_pc_cea2

dec_label_pc_ced0:                                ; preds = %dec_label_pc_cea2, %dec_label_pc_ce14
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  br i1 %26, label %dec_label_pc_cef1, label %dec_label_pc_ceec

dec_label_pc_ceec:                                ; preds = %dec_label_pc_ced0
  call void @__stack_chk_fail()
  br label %dec_label_pc_cef1

dec_label_pc_cef1:                                ; preds = %dec_label_pc_ceec, %dec_label_pc_ced0
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

