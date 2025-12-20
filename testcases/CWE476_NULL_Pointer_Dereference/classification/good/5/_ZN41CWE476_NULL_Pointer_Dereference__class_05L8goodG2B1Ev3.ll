@staticTrue = external local_unnamed_addr global i32
@staticFalse = external local_unnamed_addr global i32
@global_var_48f61 = external constant [21 x i8]
@global_var_4a578 = external constant [4 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_217af:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @staticFalse, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_217d6, label %dec_label_pc_217c5

dec_label_pc_217c5:                               ; preds = %dec_label_pc_217af
  call void @printLine(ptr @global_var_48f61)
  br label %dec_label_pc_21801

dec_label_pc_217d6:                               ; preds = %dec_label_pc_217af
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 0, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  store i64 %2, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_21801

dec_label_pc_21801:                               ; preds = %dec_label_pc_217d6, %dec_label_pc_217c5
  %6 = load i32, ptr @staticTrue, align 4
  %7 = icmp eq i32 %6, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_2182e, label %dec_label_pc_2180b

dec_label_pc_2180b:                               ; preds = %dec_label_pc_21801
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  %8 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %9 = load i32, ptr %8, align 4
  call void @printIntLine(i32 %9)
  %10 = icmp eq i64 %stack_var_-24.0.reload, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2182e, label %dec_label_pc_21821

dec_label_pc_21821:                               ; preds = %dec_label_pc_2180b
  %11 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %12 = call i64 @_ZdlPvm(ptr %11, i64 8)
  store i64 %12, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2182e

dec_label_pc_2182e:                               ; preds = %dec_label_pc_21821, %dec_label_pc_2180b, %dec_label_pc_21801
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

