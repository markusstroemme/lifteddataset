@global_var_b4668 = external constant [10 x i8]
@global_var_b4678 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_c816:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_c834:
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
  br i1 %3, label %dec_label_pc_c93d, label %dec_label_pc_c868

dec_label_pc_c868:                                ; preds = %dec_label_pc_c834
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-88.1.reg2mem, align 4
  br i1 %5, label %dec_label_pc_c93d, label %dec_label_pc_c890

dec_label_pc_c890:                                ; preds = %dec_label_pc_c868
  %6 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b4668)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_c933, label %dec_label_pc_c8e7

dec_label_pc_c8e7:                                ; preds = %dec_label_pc_c890
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_c933, label %dec_label_pc_c90e

dec_label_pc_c90e:                                ; preds = %dec_label_pc_c8e7
  %15 = sext i32 %12 to i64
  %16 = add i64 %0, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br label %dec_label_pc_c933

dec_label_pc_c933:                                ; preds = %dec_label_pc_c890, %dec_label_pc_c90e, %dec_label_pc_c8e7
  %stack_var_-88.0.ph.reload = load i32, ptr %stack_var_-88.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %4)
  store i32 %stack_var_-88.0.ph.reload, ptr %stack_var_-88.1.reg2mem, align 4
  br label %dec_label_pc_c93d

dec_label_pc_c93d:                                ; preds = %dec_label_pc_c868, %dec_label_pc_c933, %dec_label_pc_c834
  %22 = call i32 @staticReturnsTrue()
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %dec_label_pc_c9ba, label %dec_label_pc_c94b

dec_label_pc_c94b:                                ; preds = %dec_label_pc_c93d
  %stack_var_-88.1.reload = load i32, ptr %stack_var_-88.1.reg2mem, align 4
  store i64 0, ptr %stack_var_-72, align 8
  %24 = icmp slt i32 %stack_var_-88.1.reload, 0
  br i1 %24, label %dec_label_pc_c9ab, label %dec_label_pc_c979

dec_label_pc_c979:                                ; preds = %dec_label_pc_c94b
  %25 = sext i32 %stack_var_-88.1.reload to i64
  %26 = mul i64 %25, 4
  %27 = add i64 %0, -64
  %28 = add i64 %26, %27
  %29 = inttoptr i64 %28 to ptr
  store i32 1, ptr %29, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_c98f

dec_label_pc_c98f:                                ; preds = %dec_label_pc_c98f, %dec_label_pc_c979
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %30 = mul i64 %indvars.iv.reload, 4
  %31 = add i64 %30, %27
  %32 = inttoptr i64 %31 to ptr
  %33 = load i32, ptr %32, align 4
  call void @printIntLine(i32 %33)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c9ba, label %dec_label_pc_c98f

dec_label_pc_c9ab:                                ; preds = %dec_label_pc_c94b
  call void @printLine(ptr @global_var_b4678)
  br label %dec_label_pc_c9ba

dec_label_pc_c9ba:                                ; preds = %dec_label_pc_c98f, %dec_label_pc_c9ab, %dec_label_pc_c93d
  %34 = call i64 @__readfsqword(i64 40)
  %35 = icmp eq i64 %1, %34
  br i1 %35, label %dec_label_pc_c9cf, label %dec_label_pc_c9ca

dec_label_pc_c9ca:                                ; preds = %dec_label_pc_c9ba
  call void @__stack_chk_fail()
  br label %dec_label_pc_c9cf

dec_label_pc_c9cf:                                ; preds = %dec_label_pc_c9ca, %dec_label_pc_c9ba
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

