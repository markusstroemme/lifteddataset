@global_var_4a95b = external constant [6 x i8]
@0 = external global i32
@global_var_63074 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2db20:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_63074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2db54, label %dec_label_pc_2db3f

dec_label_pc_2db3f:                               ; preds = %dec_label_pc_2db20
  %3 = call i64 @_Znwm(i64 1)
  %4 = inttoptr i64 %3 to ptr
  store i8 65, ptr %4, align 1
  %.pre = load i32, ptr @global_var_63074, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2db54

dec_label_pc_2db54:                               ; preds = %dec_label_pc_2db3f, %dec_label_pc_2db20
  %.reload = load i32, ptr %.reg2mem, align 4
  %5 = zext i32 %.reload to i64
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_2db70, label %dec_label_pc_2db5f

dec_label_pc_2db5f:                               ; preds = %dec_label_pc_2db54
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %8 = load i8, ptr %stack_var_-16.0.reload, align 1
  call void @printHexCharLine(i8 %8)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2db70

dec_label_pc_2db70:                               ; preds = %dec_label_pc_2db5f, %dec_label_pc_2db54
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3b981:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a95b, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

