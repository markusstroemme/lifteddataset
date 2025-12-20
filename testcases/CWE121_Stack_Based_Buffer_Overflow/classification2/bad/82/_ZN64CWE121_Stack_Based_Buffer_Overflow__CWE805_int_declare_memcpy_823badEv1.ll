@global_var_e5ab8 = external global i64
@0 = external global i32
@global_var_e5260 = external global %vtable_e5260_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_92fa6:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  call void @anon1(ptr %2)
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %dec_label_pc_9302b, label %dec_label_pc_9301e

dec_label_pc_9301e:                               ; preds = %dec_label_pc_92fa6
  %4 = call i64 @_ZdlPvm(ptr %2, i64 8)
  br label %dec_label_pc_9302b

dec_label_pc_9302b:                               ; preds = %dec_label_pc_9301e, %dec_label_pc_92fa6
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_93040, label %dec_label_pc_9303b

dec_label_pc_9303b:                               ; preds = %dec_label_pc_9302b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_93040

dec_label_pc_93040:                               ; preds = %dec_label_pc_9303b, %dec_label_pc_9302b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_930f6:
  store i64 ptrtoint (ptr @global_var_e5ab8 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_93114:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_e5260 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

