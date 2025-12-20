@global_var_4a95b = external constant [6 x i8]
@0 = external global i32
@global_var_63070 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2d7bf:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63070, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2d80d, label %dec_label_pc_2d7f2

dec_label_pc_2d7f2:                               ; preds = %dec_label_pc_2d7bf
  %2 = call i64 @_Znwm(i64 1)
  %3 = inttoptr i64 %2 to ptr
  store i8 65, ptr %3, align 1
  %.pr = load i32, ptr @global_var_63070, align 4
  %4 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_2d80d, label %dec_label_pc_2d7fc

dec_label_pc_2d7fc:                               ; preds = %dec_label_pc_2d7f2
  call void @printHexCharLine(i8 65)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2d80d

dec_label_pc_2d80d:                               ; preds = %dec_label_pc_2d7bf, %dec_label_pc_2d7fc, %dec_label_pc_2d7f2
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

