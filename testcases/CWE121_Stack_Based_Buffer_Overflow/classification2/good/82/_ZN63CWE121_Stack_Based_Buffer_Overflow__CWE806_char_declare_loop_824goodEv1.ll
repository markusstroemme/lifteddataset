@global_var_b3a08 = external global i64
@0 = external global i32
@global_var_b3460 = external global %vtable_b3460_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7131c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-136 to i64
  %2 = call ptr @memset(ptr nonnull %stack_var_-136, i32 65, i32 49)
  %3 = add i64 %1, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = call i64 @_Znwm(i64 8)
  %6 = inttoptr i64 %5 to ptr
  call void @anon1(ptr %6)
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %dec_label_pc_713c5, label %dec_label_pc_713b8

dec_label_pc_713b8:                               ; preds = %dec_label_pc_7131c
  %8 = call i64 @_ZdlPvm(ptr %6, i64 8)
  br label %dec_label_pc_713c5

dec_label_pc_713c5:                               ; preds = %dec_label_pc_713b8, %dec_label_pc_7131c
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_713da, label %dec_label_pc_713d5

dec_label_pc_713d5:                               ; preds = %dec_label_pc_713c5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_713da

dec_label_pc_713da:                               ; preds = %dec_label_pc_713d5, %dec_label_pc_713c5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_713f0:
  store i64 ptrtoint (ptr @global_var_b3a08 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_7143c:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_b3460 to i64), ptr %result, align 8
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

