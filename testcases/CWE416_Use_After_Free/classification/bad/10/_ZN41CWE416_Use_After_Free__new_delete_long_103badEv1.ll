@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37640:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_376a6, label %dec_label_pc_3765e

dec_label_pc_3765e:                               ; preds = %dec_label_pc_37640
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i64 5, ptr %3, align 8
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_3768d, label %dec_label_pc_37680

dec_label_pc_37680:                               ; preds = %dec_label_pc_3765e
  %5 = call i64 @_ZdlPvm(ptr %3, i64 8)
  br label %dec_label_pc_3768d

dec_label_pc_3768d:                               ; preds = %dec_label_pc_37680, %dec_label_pc_3765e
  %.pr = load i32, ptr @global_var_630a8, align 4
  %6 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_376a6, label %dec_label_pc_37697

dec_label_pc_37697:                               ; preds = %dec_label_pc_3768d
  %7 = load i64, ptr %3, align 8
  call void @printLongLine(i64 %7)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_376a6

dec_label_pc_376a6:                               ; preds = %dec_label_pc_37640, %dec_label_pc_37697, %dec_label_pc_3768d
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

