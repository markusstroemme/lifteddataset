@global_var_bdc48 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_83438:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_83584.thread, label %dec_label_pc_83491

dec_label_pc_83491:                               ; preds = %dec_label_pc_83438
  %3 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_83574.thread5, label %dec_label_pc_834e2

dec_label_pc_834e2:                               ; preds = %dec_label_pc_83491
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_83574.thread5, label %dec_label_pc_834fb

dec_label_pc_834fb:                               ; preds = %dec_label_pc_834e2
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_83574.thread5, label %dec_label_pc_83518

dec_label_pc_83518:                               ; preds = %dec_label_pc_834fb
  %16 = ptrtoint ptr %stack_var_-8 to i64
  %17 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %18 = add i32 %17, 1
  %19 = icmp ult i32 %18, 2
  store i32 -1, ptr %.reg2mem, align 4
  br i1 %19, label %dec_label_pc_83584, label %dec_label_pc_8353f

dec_label_pc_8353f:                               ; preds = %dec_label_pc_83518
  %20 = sext i32 %17 to i64
  %21 = add i64 %16, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  store i32 %25, ptr %.reg2mem, align 4
  br label %dec_label_pc_83584

dec_label_pc_83574.thread5:                       ; preds = %dec_label_pc_834fb, %dec_label_pc_834e2, %dec_label_pc_83491
  %26 = call i32 @close(i32 %1)
  br label %dec_label_pc_83584.thread

dec_label_pc_83584.thread:                        ; preds = %dec_label_pc_83438, %dec_label_pc_83574.thread5
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_835ed

dec_label_pc_83584:                               ; preds = %dec_label_pc_83518, %dec_label_pc_8353f
  %.reload = load i32, ptr %.reg2mem, align 4
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  store i64 0, ptr %stack_var_-72, align 8
  %29 = icmp slt i32 %.reload, 0
  br i1 %29, label %dec_label_pc_835ed, label %dec_label_pc_835bb

dec_label_pc_835bb:                               ; preds = %dec_label_pc_83584
  %30 = sext i32 %.reload to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %16, -64
  %33 = add i64 %31, %32
  %34 = inttoptr i64 %33 to ptr
  store i32 1, ptr %34, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_835d1

dec_label_pc_835d1:                               ; preds = %dec_label_pc_835d1, %dec_label_pc_835bb
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %35 = mul i64 %indvars.iv.reload, 4
  %36 = add i64 %35, %32
  %37 = inttoptr i64 %36 to ptr
  %38 = load i32, ptr %37, align 4
  call void @printIntLine(i32 %38)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_835fc, label %dec_label_pc_835d1

dec_label_pc_835ed:                               ; preds = %dec_label_pc_83584.thread, %dec_label_pc_83584
  call void @printLine(ptr @global_var_bdc48)
  br label %dec_label_pc_835fc

dec_label_pc_835fc:                               ; preds = %dec_label_pc_835d1, %dec_label_pc_835ed
  %39 = call i64 @__readfsqword(i64 40)
  %40 = icmp eq i64 %0, %39
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %40, label %dec_label_pc_83611, label %dec_label_pc_8360c

dec_label_pc_8360c:                               ; preds = %dec_label_pc_835fc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_83611

dec_label_pc_83611:                               ; preds = %dec_label_pc_8360c, %dec_label_pc_835fc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

