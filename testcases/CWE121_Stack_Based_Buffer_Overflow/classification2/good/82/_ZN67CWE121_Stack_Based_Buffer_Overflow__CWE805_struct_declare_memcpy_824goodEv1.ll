@global_var_3cbf8 = external global i64
@0 = external global i32
@global_var_3c9d0 = external global %vtable_3c9d0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_25ce5:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  call void @anon1(ptr %2)
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %dec_label_pc_25d6a, label %dec_label_pc_25d5d

dec_label_pc_25d5d:                               ; preds = %dec_label_pc_25ce5
  %4 = call i64 @_ZdlPvm(ptr %2, i64 8)
  br label %dec_label_pc_25d6a

dec_label_pc_25d6a:                               ; preds = %dec_label_pc_25d5d, %dec_label_pc_25ce5
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_25d7f, label %dec_label_pc_25d7a

dec_label_pc_25d7a:                               ; preds = %dec_label_pc_25d6a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25d7f

dec_label_pc_25d7f:                               ; preds = %dec_label_pc_25d7a, %dec_label_pc_25d6a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_25d96:
  store i64 ptrtoint (ptr @global_var_3cbf8 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_25de2:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_3c9d0 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

