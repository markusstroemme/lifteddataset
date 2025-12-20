@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37f9d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_37fd5, label %dec_label_pc_37fbc

dec_label_pc_37fbc:                               ; preds = %dec_label_pc_37f9d
  %3 = call i64 @_Znwm(i64 8)
  %4 = inttoptr i64 %3 to ptr
  store i64 5, ptr %4, align 8
  %.pre = load i32, ptr @global_var_630ac, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_37fd5

dec_label_pc_37fd5:                               ; preds = %dec_label_pc_37fbc, %dec_label_pc_37f9d
  %.reload = load i32, ptr %.reg2mem, align 4
  %5 = zext i32 %.reload to i64
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_37fef, label %dec_label_pc_37fe0

dec_label_pc_37fe0:                               ; preds = %dec_label_pc_37fd5
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %8 = load i64, ptr %stack_var_-16.0.reload, align 8
  call void @printLongLine(i64 %8)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_37fef

dec_label_pc_37fef:                               ; preds = %dec_label_pc_37fe0, %dec_label_pc_37fd5
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

