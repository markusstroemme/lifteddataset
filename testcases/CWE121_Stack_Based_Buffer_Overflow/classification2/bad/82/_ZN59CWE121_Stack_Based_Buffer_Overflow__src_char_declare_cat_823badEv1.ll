@global_var_88c80 = external global i64
@0 = external global i32
@global_var_886b0 = external global %vtable_886b0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5b77d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-136 to i64
  %2 = call ptr @memset(ptr nonnull %stack_var_-136, i32 65, i32 99)
  %3 = add i64 %1, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = call i64 @_Znwm(i64 8)
  %6 = inttoptr i64 %5 to ptr
  call void @anon1(ptr %6)
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %dec_label_pc_5b826, label %dec_label_pc_5b819

dec_label_pc_5b819:                               ; preds = %dec_label_pc_5b77d
  %8 = call i64 @_ZdlPvm(ptr %6, i64 8)
  br label %dec_label_pc_5b826

dec_label_pc_5b826:                               ; preds = %dec_label_pc_5b819, %dec_label_pc_5b77d
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_5b83b, label %dec_label_pc_5b836

dec_label_pc_5b836:                               ; preds = %dec_label_pc_5b826
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5b83b

dec_label_pc_5b83b:                               ; preds = %dec_label_pc_5b836, %dec_label_pc_5b826
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_5b916:
  store i64 ptrtoint (ptr @global_var_88c80 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5b934:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_886b0 to i64), ptr %result, align 8
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

