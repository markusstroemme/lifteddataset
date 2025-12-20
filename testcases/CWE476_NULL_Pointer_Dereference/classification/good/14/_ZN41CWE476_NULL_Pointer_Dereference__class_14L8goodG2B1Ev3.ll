@global_var_4906e = external constant [21 x i8]
@global_var_4a578 = external constant [4 x i8]
@global_var_6d064 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_22bee:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_6d064, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_22c16, label %dec_label_pc_22c05

dec_label_pc_22c05:                               ; preds = %dec_label_pc_22bee
  call void @printLine(ptr @global_var_4906e)
  br label %dec_label_pc_22c41

dec_label_pc_22c16:                               ; preds = %dec_label_pc_22bee
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 0, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  store i64 %2, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_22c41

dec_label_pc_22c41:                               ; preds = %dec_label_pc_22c16, %dec_label_pc_22c05
  %6 = load i32, ptr @global_var_6d064, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp eq i32 %6, 5
  %9 = icmp eq i1 %8, false
  store i64 %7, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_22c6f, label %dec_label_pc_22c4c

dec_label_pc_22c4c:                               ; preds = %dec_label_pc_22c41
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  %10 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %12 = icmp eq i64 %stack_var_-24.0.reload, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_22c6f, label %dec_label_pc_22c62

dec_label_pc_22c62:                               ; preds = %dec_label_pc_22c4c
  %13 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %14 = call i64 @_ZdlPvm(ptr %13, i64 8)
  store i64 %14, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_22c6f

dec_label_pc_22c6f:                               ; preds = %dec_label_pc_22c62, %dec_label_pc_22c4c, %dec_label_pc_22c41
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

