@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_36102:
  %0 = call i64 @_Znwm(i64 4)
  %1 = bitcast ptr %arg1 to ptr
  store i64 %0, ptr %1, align 8
  store i32 5, ptr inttoptr (i64 4 to ptr), align 4
  %2 = call i64 @_ZdlPvm(ptr inttoptr (i64 4 to ptr), i64 4)
  ret i64 %2
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_3614f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_36193, label %dec_label_pc_3618e

dec_label_pc_3618e:                               ; preds = %dec_label_pc_3614f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_36193

dec_label_pc_36193:                               ; preds = %dec_label_pc_3618e, %dec_label_pc_3614f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

