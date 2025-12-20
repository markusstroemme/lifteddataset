@global_var_bc580 = external constant [16 x i8]
@global_var_bc5b0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32
@global_var_ef090 = external local_unnamed_addr global ptr

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_7b6c2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_7b72c, label %dec_label_pc_7b718

dec_label_pc_7b718:                               ; preds = %dec_label_pc_7b6c2
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %arg1, align 4
  br label %dec_label_pc_7b73b

dec_label_pc_7b72c:                               ; preds = %dec_label_pc_7b6c2
  call void @printLine(ptr @global_var_bc580)
  br label %dec_label_pc_7b73b

dec_label_pc_7b73b:                               ; preds = %dec_label_pc_7b72c, %dec_label_pc_7b718
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_7b750, label %dec_label_pc_7b74b

dec_label_pc_7b74b:                               ; preds = %dec_label_pc_7b73b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7b750

dec_label_pc_7b750:                               ; preds = %dec_label_pc_7b74b, %dec_label_pc_7b73b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_7b752:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-64 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-64, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-64)
  %2 = load i32, ptr %stack_var_-64, align 4
  %3 = icmp ugt i32 %2, 9
  br i1 %3, label %dec_label_pc_7b7e9, label %dec_label_pc_7b7b7

dec_label_pc_7b7b7:                               ; preds = %dec_label_pc_7b752
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %2 to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %6, %7
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_7b7cd

dec_label_pc_7b7cd:                               ; preds = %dec_label_pc_7b7cd, %dec_label_pc_7b7b7
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7b7f8, label %dec_label_pc_7b7cd

dec_label_pc_7b7e9:                               ; preds = %dec_label_pc_7b752
  call void @printLine(ptr @global_var_bc5b0)
  br label %dec_label_pc_7b7f8

dec_label_pc_7b7f8:                               ; preds = %dec_label_pc_7b7cd, %dec_label_pc_7b7e9
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_7b80d, label %dec_label_pc_7b808

dec_label_pc_7b808:                               ; preds = %dec_label_pc_7b7f8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7b80d

dec_label_pc_7b80d:                               ; preds = %dec_label_pc_7b808, %dec_label_pc_7b7f8
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

