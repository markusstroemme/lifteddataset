@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_63088 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_34813:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63088, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_34876, label %dec_label_pc_34831

dec_label_pc_34831:                               ; preds = %dec_label_pc_34813
  %2 = call i64 @_Znwm(i64 4)
  %3 = inttoptr i64 %2 to ptr
  store i32 5, ptr %3, align 4
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_3485f, label %dec_label_pc_34852

dec_label_pc_34852:                               ; preds = %dec_label_pc_34831
  %5 = inttoptr i64 %2 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 4)
  br label %dec_label_pc_3485f

dec_label_pc_3485f:                               ; preds = %dec_label_pc_34852, %dec_label_pc_34831
  %.pr = load i32, ptr @global_var_63088, align 4
  %7 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_34876, label %dec_label_pc_34869

dec_label_pc_34869:                               ; preds = %dec_label_pc_3485f
  %8 = load i32, ptr %3, align 4
  call void @printIntLine(i32 %8)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_34876

dec_label_pc_34876:                               ; preds = %dec_label_pc_34813, %dec_label_pc_34869, %dec_label_pc_3485f
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

