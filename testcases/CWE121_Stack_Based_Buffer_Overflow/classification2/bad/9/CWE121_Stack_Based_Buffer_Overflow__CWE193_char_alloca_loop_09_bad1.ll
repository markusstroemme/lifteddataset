@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_9752:
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
  br label %dec_label_pc_979b

dec_label_pc_979b:                                ; preds = %dec_label_pc_979b, %dec_label_pc_9752
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_97b2, label %dec_label_pc_979b

dec_label_pc_97b2:                                ; preds = %dec_label_pc_979b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_981d

dec_label_pc_981d:                                ; preds = %dec_label_pc_981d, %dec_label_pc_97b2
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_9834, label %dec_label_pc_981d

dec_label_pc_9834:                                ; preds = %dec_label_pc_981d
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %stack_var_-72 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %11 = bitcast ptr %stack_var_-27 to ptr
  %12 = call i32 @strlen(ptr nonnull %11)
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, 1
  %15 = icmp eq i64 %14, 0
  %16 = load ptr, ptr %stack_var_-72, align 8
  store ptr %16, ptr %.lcssa.reg2mem, align 8
  br i1 %15, label %dec_label_pc_98ea, label %dec_label_pc_98bc.lr.ph

dec_label_pc_98bc.lr.ph:                          ; preds = %dec_label_pc_9834
  %17 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %16, ptr %.reg2mem, align 8
  store i64 0, ptr %.reg2mem5, align 8
  br label %dec_label_pc_98bc

dec_label_pc_98bc:                                ; preds = %dec_label_pc_98bc, %dec_label_pc_98bc.lr.ph
  %.reload6 = load i64, ptr %.reg2mem5, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %18 = ptrtoint ptr %.reload to i64
  %19 = add i64 %.reload6, %18
  %20 = add i64 %.reload6, %17
  %21 = inttoptr i64 %20 to ptr
  %22 = load i8, ptr %21, align 1
  %23 = inttoptr i64 %19 to ptr
  store i8 %22, ptr %23, align 1
  %24 = add nuw i64 %.reload6, 1
  %25 = load ptr, ptr %stack_var_-72, align 8
  %exitcond = icmp eq i64 %24, %14
  store ptr %25, ptr %.reg2mem, align 8
  store i64 %24, ptr %.reg2mem5, align 8
  store ptr %25, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_98ea, label %dec_label_pc_98bc

dec_label_pc_98ea:                                ; preds = %dec_label_pc_98bc, %dec_label_pc_9834
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_990b, label %dec_label_pc_9906

dec_label_pc_9906:                                ; preds = %dec_label_pc_98ea
  call void @__stack_chk_fail()
  br label %dec_label_pc_990b

dec_label_pc_990b:                                ; preds = %dec_label_pc_9906, %dec_label_pc_98ea
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

