@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37e10:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_37e5e, label %dec_label_pc_37e2f

dec_label_pc_37e2f:                               ; preds = %dec_label_pc_37e10
  %3 = call i64 @_Znwm(i64 8)
  %4 = inttoptr i64 %3 to ptr
  store i64 5, ptr %4, align 8
  %5 = icmp eq i64 %3, 0
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_37e5e, label %dec_label_pc_37e51

dec_label_pc_37e51:                               ; preds = %dec_label_pc_37e2f
  %6 = call i64 @_ZdlPvm(ptr %4, i64 8)
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_37e5e

dec_label_pc_37e5e:                               ; preds = %dec_label_pc_37e51, %dec_label_pc_37e2f, %dec_label_pc_37e10
  %7 = load i32, ptr @global_var_630ac, align 4
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 5
  %10 = icmp eq i1 %9, false
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_37e78, label %dec_label_pc_37e69

dec_label_pc_37e69:                               ; preds = %dec_label_pc_37e5e
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %11 = load i64, ptr %stack_var_-16.0.reload, align 8
  call void @printLongLine(i64 %11)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_37e78

dec_label_pc_37e78:                               ; preds = %dec_label_pc_37e69, %dec_label_pc_37e5e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

