@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3592f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3597c, label %dec_label_pc_3594e

dec_label_pc_3594e:                               ; preds = %dec_label_pc_3592f
  %3 = call i64 @_Znwm(i64 4)
  %4 = inttoptr i64 %3 to ptr
  store i32 5, ptr %4, align 4
  %5 = icmp eq i64 %3, 0
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3597c, label %dec_label_pc_3596f

dec_label_pc_3596f:                               ; preds = %dec_label_pc_3594e
  %6 = inttoptr i64 %3 to ptr
  %7 = call i64 @_ZdlPvm(ptr %6, i64 4)
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_3597c

dec_label_pc_3597c:                               ; preds = %dec_label_pc_3596f, %dec_label_pc_3594e, %dec_label_pc_3592f
  %8 = load i32, ptr @global_var_630ac, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp eq i32 %8, 5
  %11 = icmp eq i1 %10, false
  store i64 %9, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_35994, label %dec_label_pc_35987

dec_label_pc_35987:                               ; preds = %dec_label_pc_3597c
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %12 = load i32, ptr %stack_var_-16.0.reload, align 4
  call void @printIntLine(i32 %12)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_35994

dec_label_pc_35994:                               ; preds = %dec_label_pc_35987, %dec_label_pc_3597c
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

