@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_30e4b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_30ea3, label %dec_label_pc_30e6a

dec_label_pc_30e6a:                               ; preds = %dec_label_pc_30e4b
  %3 = call i64 @_Znwm(i64 8)
  %4 = inttoptr i64 %3 to ptr
  store i32 1, ptr %4, align 4
  %5 = add i64 %3, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 2, ptr %6, align 4
  %7 = icmp eq i64 %3, 0
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_30ea3, label %dec_label_pc_30e96

dec_label_pc_30e96:                               ; preds = %dec_label_pc_30e6a
  %8 = inttoptr i64 %3 to ptr
  %9 = call i64 @_ZdlPvm(ptr %8, i64 8)
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_30ea3

dec_label_pc_30ea3:                               ; preds = %dec_label_pc_30e96, %dec_label_pc_30e6a, %dec_label_pc_30e4b
  %10 = load i32, ptr @global_var_630ac, align 4
  %11 = zext i32 %10 to i64
  %12 = icmp eq i32 %10, 5
  %13 = icmp eq i1 %12, false
  store i64 %11, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_30ebb, label %dec_label_pc_30eae

dec_label_pc_30eae:                               ; preds = %dec_label_pc_30ea3
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %14 = load i32, ptr %stack_var_-16.0.reload, align 4
  call void @printIntLine(i32 %14)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_30ebb

dec_label_pc_30ebb:                               ; preds = %dec_label_pc_30eae, %dec_label_pc_30ea3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

