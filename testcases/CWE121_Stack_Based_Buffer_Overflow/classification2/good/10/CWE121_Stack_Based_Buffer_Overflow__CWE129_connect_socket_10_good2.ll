@global_var_b4748 = external constant [10 x i8]
@global_var_b4790 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef080 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_d8f3:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-88.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-88.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef080, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_da79, label %dec_label_pc_d923

dec_label_pc_d923:                                ; preds = %dec_label_pc_d8f3
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-88.1.ph.reg2mem, align 4
  br i1 %5, label %dec_label_pc_d9f8, label %dec_label_pc_d94b

dec_label_pc_d94b:                                ; preds = %dec_label_pc_d923
  %6 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b4748)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_d9ee, label %dec_label_pc_d9a2

dec_label_pc_d9a2:                                ; preds = %dec_label_pc_d94b
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_d9ee, label %dec_label_pc_d9c9

dec_label_pc_d9c9:                                ; preds = %dec_label_pc_d9a2
  %15 = sext i32 %12 to i64
  %16 = add i64 %3, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br label %dec_label_pc_d9ee

dec_label_pc_d9ee:                                ; preds = %dec_label_pc_d94b, %dec_label_pc_d9c9, %dec_label_pc_d9a2
  %stack_var_-88.0.ph.reload = load i32, ptr %stack_var_-88.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %4)
  store i32 %stack_var_-88.0.ph.reload, ptr %stack_var_-88.1.ph.reg2mem, align 4
  br label %dec_label_pc_d9f8

dec_label_pc_d9f8:                                ; preds = %dec_label_pc_d923, %dec_label_pc_d9ee
  %.pr = load i32, ptr @global_var_ef080, align 4
  %22 = icmp eq i32 %.pr, 0
  br i1 %22, label %dec_label_pc_da79, label %dec_label_pc_da02

dec_label_pc_da02:                                ; preds = %dec_label_pc_d9f8
  %stack_var_-88.1.ph.reload = load i32, ptr %stack_var_-88.1.ph.reg2mem, align 4
  store i64 0, ptr %stack_var_-72, align 8
  %23 = icmp ugt i32 %stack_var_-88.1.ph.reload, 9
  br i1 %23, label %dec_label_pc_da68, label %dec_label_pc_da36

dec_label_pc_da36:                                ; preds = %dec_label_pc_da02
  %24 = sext i32 %stack_var_-88.1.ph.reload to i64
  %25 = mul i64 %24, 4
  %26 = add i64 %3, -64
  %27 = add i64 %25, %26
  %28 = inttoptr i64 %27 to ptr
  store i32 1, ptr %28, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_da4c

dec_label_pc_da4c:                                ; preds = %dec_label_pc_da4c, %dec_label_pc_da36
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %29 = mul i64 %indvars.iv.reload, 4
  %30 = add i64 %29, %26
  %31 = inttoptr i64 %30 to ptr
  %32 = load i32, ptr %31, align 4
  call void @printIntLine(i32 %32)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_da79, label %dec_label_pc_da4c

dec_label_pc_da68:                                ; preds = %dec_label_pc_da02
  call void @printLine(ptr @global_var_b4790)
  br label %dec_label_pc_da79

dec_label_pc_da79:                                ; preds = %dec_label_pc_da4c, %dec_label_pc_d8f3, %dec_label_pc_da68, %dec_label_pc_d9f8
  %33 = call i64 @__readfsqword(i64 40)
  %34 = icmp eq i64 %0, %33
  br i1 %34, label %dec_label_pc_da8e, label %dec_label_pc_da89

dec_label_pc_da89:                                ; preds = %dec_label_pc_da79
  call void @__stack_chk_fail()
  br label %dec_label_pc_da8e

dec_label_pc_da8e:                                ; preds = %dec_label_pc_da89, %dec_label_pc_da79
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

