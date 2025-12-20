@global_var_48fb7 = external constant [21 x i8]
@global_var_4a578 = external constant [4 x i8]

define i32 @staticReturnsTrue.711() local_unnamed_addr {
dec_label_pc_21cbf:
  ret i32 1
}

define i32 @staticReturnsFalse.712() local_unnamed_addr {
dec_label_pc_21cce:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21e20:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsFalse.712()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_21e4b, label %dec_label_pc_21e3a

dec_label_pc_21e3a:                               ; preds = %dec_label_pc_21e20
  call void @printLine(ptr @global_var_48fb7)
  br label %dec_label_pc_21e76

dec_label_pc_21e4b:                               ; preds = %dec_label_pc_21e20
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  store i64 %4, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_21e76

dec_label_pc_21e76:                               ; preds = %dec_label_pc_21e4b, %dec_label_pc_21e3a
  %8 = call i32 @staticReturnsTrue.711()
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i1 %9, false
  %11 = zext i1 %10 to i64
  %12 = and i32 %8, -256
  %13 = sext i32 %12 to i64
  %14 = or i64 %11, %13
  %15 = icmp eq i1 %10, false
  store i64 %14, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_21ea7, label %dec_label_pc_21e84

dec_label_pc_21e84:                               ; preds = %dec_label_pc_21e76
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  %16 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %18 = icmp eq i64 %stack_var_-24.0.reload, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_21ea7, label %dec_label_pc_21e9a

dec_label_pc_21e9a:                               ; preds = %dec_label_pc_21e84
  %19 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %20 = call i64 @_ZdlPvm(ptr %19, i64 8)
  store i64 %20, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21ea7

dec_label_pc_21ea7:                               ; preds = %dec_label_pc_21e9a, %dec_label_pc_21e84, %dec_label_pc_21e76
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

