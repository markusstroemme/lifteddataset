@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a214:
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
  br label %dec_label_pc_a25d

dec_label_pc_a25d:                                ; preds = %dec_label_pc_a25d, %dec_label_pc_a214
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_a274, label %dec_label_pc_a25d

dec_label_pc_a274:                                ; preds = %dec_label_pc_a25d
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_a2df

dec_label_pc_a2df:                                ; preds = %dec_label_pc_a2df, %dec_label_pc_a274
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_a2f6, label %dec_label_pc_a2df

dec_label_pc_a2f6:                                ; preds = %dec_label_pc_a2df
  %9 = call i32 @globalReturnsTrue()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_a350, label %dec_label_pc_a341

dec_label_pc_a341:                                ; preds = %dec_label_pc_a2f6
  %11 = inttoptr i64 %6 to ptr
  %12 = bitcast ptr %stack_var_-72 to ptr
  store i64 %6, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_a350

dec_label_pc_a350:                                ; preds = %dec_label_pc_a341, %dec_label_pc_a2f6
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %13 = bitcast ptr %stack_var_-27 to ptr
  %14 = call i32 @strlen(ptr nonnull %13)
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, 1
  %17 = icmp eq i64 %16, 0
  %18 = load ptr, ptr %stack_var_-72, align 8
  store ptr %18, ptr %.lcssa.reg2mem, align 8
  br i1 %17, label %dec_label_pc_a3b0, label %dec_label_pc_a382.lr.ph

dec_label_pc_a382.lr.ph:                          ; preds = %dec_label_pc_a350
  %19 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %18, ptr %.reg2mem, align 8
  store i64 0, ptr %.reg2mem5, align 8
  br label %dec_label_pc_a382

dec_label_pc_a382:                                ; preds = %dec_label_pc_a382, %dec_label_pc_a382.lr.ph
  %.reload6 = load i64, ptr %.reg2mem5, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %20 = ptrtoint ptr %.reload to i64
  %21 = add i64 %.reload6, %20
  %22 = add i64 %.reload6, %19
  %23 = inttoptr i64 %22 to ptr
  %24 = load i8, ptr %23, align 1
  %25 = inttoptr i64 %21 to ptr
  store i8 %24, ptr %25, align 1
  %26 = add nuw i64 %.reload6, 1
  %27 = load ptr, ptr %stack_var_-72, align 8
  %exitcond = icmp eq i64 %26, %16
  store ptr %27, ptr %.reg2mem, align 8
  store i64 %26, ptr %.reg2mem5, align 8
  store ptr %27, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_a3b0, label %dec_label_pc_a382

dec_label_pc_a3b0:                                ; preds = %dec_label_pc_a382, %dec_label_pc_a350
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %1, %28
  br i1 %29, label %dec_label_pc_a3d1, label %dec_label_pc_a3cc

dec_label_pc_a3cc:                                ; preds = %dec_label_pc_a3b0
  call void @__stack_chk_fail()
  br label %dec_label_pc_a3d1

dec_label_pc_a3d1:                                ; preds = %dec_label_pc_a3cc, %dec_label_pc_a3b0
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

