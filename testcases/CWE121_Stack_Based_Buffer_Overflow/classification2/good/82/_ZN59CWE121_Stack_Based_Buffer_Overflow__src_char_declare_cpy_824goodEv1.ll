@global_var_19c88 = external global i64
@0 = external global i32
@global_var_19bf0 = external global %vtable_19bf0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_eb1d:
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
  br i1 %7, label %dec_label_pc_ebc6, label %dec_label_pc_ebb9

dec_label_pc_ebb9:                                ; preds = %dec_label_pc_eb1d
  %8 = call i64 @_ZdlPvm(ptr %6, i64 8)
  br label %dec_label_pc_ebc6

dec_label_pc_ebc6:                                ; preds = %dec_label_pc_ebb9, %dec_label_pc_eb1d
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_ebdb, label %dec_label_pc_ebd6

dec_label_pc_ebd6:                                ; preds = %dec_label_pc_ebc6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_ebdb

dec_label_pc_ebdb:                                ; preds = %dec_label_pc_ebd6, %dec_label_pc_ebc6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_ebf2:
  store i64 ptrtoint (ptr @global_var_19c88 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_ec3e:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_19bf0 to i64), ptr %result, align 8
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

