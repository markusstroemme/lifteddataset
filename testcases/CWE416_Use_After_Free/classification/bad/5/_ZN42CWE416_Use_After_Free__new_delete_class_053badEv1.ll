@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_63078 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2fb35:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63078, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2fba3, label %dec_label_pc_2fb53

dec_label_pc_2fb53:                               ; preds = %dec_label_pc_2fb35
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 1, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 2, ptr %5, align 4
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %dec_label_pc_2fb8c, label %dec_label_pc_2fb7f

dec_label_pc_2fb7f:                               ; preds = %dec_label_pc_2fb53
  %7 = inttoptr i64 %2 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 8)
  br label %dec_label_pc_2fb8c

dec_label_pc_2fb8c:                               ; preds = %dec_label_pc_2fb7f, %dec_label_pc_2fb53
  %.pr = load i32, ptr @global_var_63078, align 4
  %9 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_2fba3, label %dec_label_pc_2fb96

dec_label_pc_2fb96:                               ; preds = %dec_label_pc_2fb8c
  %10 = load i32, ptr %3, align 4
  call void @printIntLine(i32 %10)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2fba3

dec_label_pc_2fba3:                               ; preds = %dec_label_pc_2fb35, %dec_label_pc_2fb96, %dec_label_pc_2fb8c
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

