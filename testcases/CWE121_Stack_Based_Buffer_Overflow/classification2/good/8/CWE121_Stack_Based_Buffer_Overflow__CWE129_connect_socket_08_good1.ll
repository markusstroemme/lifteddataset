@global_var_b4668 = external constant [10 x i8]
@global_var_b4698 = external constant [21 x i8]
@global_var_b46b0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_c816:
  ret i32 1
}

define i32 @staticReturnsFalse() local_unnamed_addr {
dec_label_pc_c825:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_c9d1:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-88.1.reg2mem = alloca i32, align 4
  %stack_var_-88.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @staticReturnsTrue()
  %3 = icmp eq i32 %2, 0
  store i32 -1, ptr %stack_var_-88.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_cada, label %dec_label_pc_ca05

dec_label_pc_ca05:                                ; preds = %dec_label_pc_c9d1
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-88.1.reg2mem, align 4
  br i1 %5, label %dec_label_pc_cada, label %dec_label_pc_ca2d

dec_label_pc_ca2d:                                ; preds = %dec_label_pc_ca05
  %6 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b4668)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_cad0, label %dec_label_pc_ca84

dec_label_pc_ca84:                                ; preds = %dec_label_pc_ca2d
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_cad0, label %dec_label_pc_caab

dec_label_pc_caab:                                ; preds = %dec_label_pc_ca84
  %15 = sext i32 %12 to i64
  %16 = add i64 %0, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br label %dec_label_pc_cad0

dec_label_pc_cad0:                                ; preds = %dec_label_pc_ca2d, %dec_label_pc_caab, %dec_label_pc_ca84
  %stack_var_-88.0.ph.reload = load i32, ptr %stack_var_-88.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %4)
  store i32 %stack_var_-88.0.ph.reload, ptr %stack_var_-88.1.reg2mem, align 4
  br label %dec_label_pc_cada

dec_label_pc_cada:                                ; preds = %dec_label_pc_ca05, %dec_label_pc_cad0, %dec_label_pc_c9d1
  %22 = call i32 @staticReturnsFalse()
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %dec_label_pc_caf9, label %dec_label_pc_cae8

dec_label_pc_cae8:                                ; preds = %dec_label_pc_cada
  call void @printLine(ptr @global_var_b4698)
  br label %dec_label_pc_cb70

dec_label_pc_caf9:                                ; preds = %dec_label_pc_cada
  %stack_var_-88.1.reload = load i32, ptr %stack_var_-88.1.reg2mem, align 4
  store i64 0, ptr %stack_var_-72, align 8
  %24 = icmp ugt i32 %stack_var_-88.1.reload, 9
  br i1 %24, label %dec_label_pc_cb5f, label %dec_label_pc_cb2d

dec_label_pc_cb2d:                                ; preds = %dec_label_pc_caf9
  %25 = sext i32 %stack_var_-88.1.reload to i64
  %26 = mul i64 %25, 4
  %27 = add i64 %0, -64
  %28 = add i64 %26, %27
  %29 = inttoptr i64 %28 to ptr
  store i32 1, ptr %29, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_cb43

dec_label_pc_cb43:                                ; preds = %dec_label_pc_cb43, %dec_label_pc_cb2d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %30 = mul i64 %indvars.iv.reload, 4
  %31 = add i64 %30, %27
  %32 = inttoptr i64 %31 to ptr
  %33 = load i32, ptr %32, align 4
  call void @printIntLine(i32 %33)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_cb70, label %dec_label_pc_cb43

dec_label_pc_cb5f:                                ; preds = %dec_label_pc_caf9
  call void @printLine(ptr @global_var_b46b0)
  br label %dec_label_pc_cb70

dec_label_pc_cb70:                                ; preds = %dec_label_pc_cb43, %dec_label_pc_cb5f, %dec_label_pc_cae8
  %34 = call i64 @__readfsqword(i64 40)
  %35 = icmp eq i64 %1, %34
  br i1 %35, label %dec_label_pc_cb85, label %dec_label_pc_cb80

dec_label_pc_cb80:                                ; preds = %dec_label_pc_cb70
  call void @__stack_chk_fail()
  br label %dec_label_pc_cb85

dec_label_pc_cb85:                                ; preds = %dec_label_pc_cb80, %dec_label_pc_cb70
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

