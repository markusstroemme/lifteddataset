@global_var_b4a10 = external constant [10 x i8]
@global_var_b4a20 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1013a:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-88.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_10226.thread, label %dec_label_pc_10162

dec_label_pc_10226.thread:                        ; preds = %dec_label_pc_1013a
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_10286

dec_label_pc_10162:                               ; preds = %dec_label_pc_1013a
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = bitcast ptr %stack_var_-72 to ptr
  %5 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %6 = call i32 @inet_addr(ptr @global_var_b4a10)
  %7 = call i16 @htons(i16 27015)
  %8 = call i32 @connect(i32 %1, ptr nonnull %4, i32 16)
  %9 = icmp eq i32 %8, -1
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %9, label %dec_label_pc_10226, label %dec_label_pc_101b9

dec_label_pc_101b9:                               ; preds = %dec_label_pc_10162
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %12, label %dec_label_pc_10226, label %dec_label_pc_101e0

dec_label_pc_101e0:                               ; preds = %dec_label_pc_101b9
  %13 = add i64 %3, -22
  %14 = bitcast ptr %stack_var_-30 to ptr
  %15 = sext i32 %10 to i64
  %16 = add i64 %13, %15
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = call i32 @atoi(ptr nonnull %14)
  store i32 %18, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br label %dec_label_pc_10226

dec_label_pc_10226:                               ; preds = %dec_label_pc_101b9, %dec_label_pc_101e0, %dec_label_pc_10162
  %stack_var_-88.0.ph.reload = load i32, ptr %stack_var_-88.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  %20 = icmp slt i32 %stack_var_-88.0.ph.reload, 0
  store i64 0, ptr %stack_var_-72, align 8
  br i1 %20, label %dec_label_pc_10286, label %dec_label_pc_10254

dec_label_pc_10254:                               ; preds = %dec_label_pc_10226
  %21 = add i64 %3, -64
  %22 = sext i32 %stack_var_-88.0.ph.reload to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %23, %21
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1026a

dec_label_pc_1026a:                               ; preds = %dec_label_pc_1026a, %dec_label_pc_10254
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %26 = mul i64 %indvars.iv.reload, 4
  %27 = add i64 %26, %21
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1029f, label %dec_label_pc_1026a

dec_label_pc_10286:                               ; preds = %dec_label_pc_10226.thread, %dec_label_pc_10226
  call void @printLine(ptr @global_var_b4a20)
  br label %dec_label_pc_1029f

dec_label_pc_1029f:                               ; preds = %dec_label_pc_1026a, %dec_label_pc_10286
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  br i1 %31, label %dec_label_pc_102b4, label %dec_label_pc_102af

dec_label_pc_102af:                               ; preds = %dec_label_pc_1029f
  call void @__stack_chk_fail()
  br label %dec_label_pc_102b4

dec_label_pc_102b4:                               ; preds = %dec_label_pc_102af, %dec_label_pc_1029f
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

