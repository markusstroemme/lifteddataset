@staticFive = external local_unnamed_addr global i32
@global_var_4a578 = external constant [4 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21c2d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @staticFive, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_21c6f, label %dec_label_pc_21c44

dec_label_pc_21c44:                               ; preds = %dec_label_pc_21c2d
  %3 = call i64 @_Znwm(i64 8)
  %4 = inttoptr i64 %3 to ptr
  store i32 0, ptr %4, align 4
  %5 = add i64 %3, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %.pre = load i32, ptr @staticFive, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store i64 %3, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_21c6f

dec_label_pc_21c6f:                               ; preds = %dec_label_pc_21c44, %dec_label_pc_21c2d
  %.reload = load i32, ptr %.reg2mem, align 4
  %7 = zext i32 %.reload to i64
  %8 = icmp eq i32 %.reload, 5
  %9 = icmp eq i1 %8, false
  store i64 %7, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_21c9d, label %dec_label_pc_21c7a

dec_label_pc_21c7a:                               ; preds = %dec_label_pc_21c6f
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  %10 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %12 = icmp eq i64 %stack_var_-24.0.reload, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_21c9d, label %dec_label_pc_21c90

dec_label_pc_21c90:                               ; preds = %dec_label_pc_21c7a
  %13 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %14 = call i64 @_ZdlPvm(ptr %13, i64 8)
  store i64 %14, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21c9d

dec_label_pc_21c9d:                               ; preds = %dec_label_pc_21c90, %dec_label_pc_21c7a, %dec_label_pc_21c6f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

