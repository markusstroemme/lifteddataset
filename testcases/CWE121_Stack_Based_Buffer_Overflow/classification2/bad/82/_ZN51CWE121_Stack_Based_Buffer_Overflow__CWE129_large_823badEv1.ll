@global_var_ee740 = external global i64
@global_var_ee0c0 = external global %vtable_ee0c0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_82a9c:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  call void @anon1(ptr %1)
  %2 = icmp eq i64 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_82afe, label %dec_label_pc_82af1

dec_label_pc_82af1:                               ; preds = %dec_label_pc_82a9c
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_82afe

dec_label_pc_82afe:                               ; preds = %dec_label_pc_82af1, %dec_label_pc_82a9c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_82bec:
  store i64 ptrtoint (ptr @global_var_ee740 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_82c0a:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_ee0c0 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

