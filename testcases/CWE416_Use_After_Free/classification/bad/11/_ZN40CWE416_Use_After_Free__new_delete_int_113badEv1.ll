@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_35379:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_353c9, label %dec_label_pc_3539b

dec_label_pc_3539b:                               ; preds = %dec_label_pc_35379
  %4 = call i64 @_Znwm(i64 4)
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = icmp eq i64 %4, 0
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_353c9, label %dec_label_pc_353bc

dec_label_pc_353bc:                               ; preds = %dec_label_pc_3539b
  %7 = inttoptr i64 %4 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 4)
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_353c9

dec_label_pc_353c9:                               ; preds = %dec_label_pc_353bc, %dec_label_pc_3539b, %dec_label_pc_35379
  %9 = call i32 @globalReturnsTrue()
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i1 %10, false
  %12 = zext i1 %11 to i64
  %13 = and i32 %9, -256
  %14 = sext i32 %13 to i64
  %15 = or i64 %12, %14
  %16 = icmp eq i1 %11, false
  store i64 %15, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_353e4, label %dec_label_pc_353d7

dec_label_pc_353d7:                               ; preds = %dec_label_pc_353c9
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %17 = load i32, ptr %stack_var_-16.0.reload, align 4
  call void @printIntLine(i32 %17)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_353e4

dec_label_pc_353e4:                               ; preds = %dec_label_pc_353d7, %dec_label_pc_353c9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

