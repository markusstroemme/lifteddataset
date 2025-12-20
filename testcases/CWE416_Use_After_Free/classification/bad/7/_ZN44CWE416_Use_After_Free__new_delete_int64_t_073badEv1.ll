@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_63084 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_32689:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_63084, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_326d7, label %dec_label_pc_326a8

dec_label_pc_326a8:                               ; preds = %dec_label_pc_32689
  %3 = call i64 @_Znwm(i64 8)
  %4 = inttoptr i64 %3 to ptr
  store i64 5, ptr %4, align 8
  %5 = icmp eq i64 %3, 0
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_326d7, label %dec_label_pc_326ca

dec_label_pc_326ca:                               ; preds = %dec_label_pc_326a8
  %6 = call i64 @_ZdlPvm(ptr %4, i64 8)
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_326d7

dec_label_pc_326d7:                               ; preds = %dec_label_pc_326ca, %dec_label_pc_326a8, %dec_label_pc_32689
  %7 = load i32, ptr @global_var_63084, align 4
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 5
  %10 = icmp eq i1 %9, false
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_326f1, label %dec_label_pc_326e2

dec_label_pc_326e2:                               ; preds = %dec_label_pc_326d7
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %11 = load i64, ptr %stack_var_-16.0.reload, align 8
  call void @printLongLongLine(i64 %11)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_326f1

dec_label_pc_326f1:                               ; preds = %dec_label_pc_326e2, %dec_label_pc_326d7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

