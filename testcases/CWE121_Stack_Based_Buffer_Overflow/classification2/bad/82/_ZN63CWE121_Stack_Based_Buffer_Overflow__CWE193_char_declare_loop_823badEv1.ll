@global_var_77ab0 = external global i64
@0 = external global i32
@global_var_775e8 = external global %vtable_775e8_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4baba:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  call void @anon1(ptr %2)
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %dec_label_pc_4bb2e, label %dec_label_pc_4bb21

dec_label_pc_4bb21:                               ; preds = %dec_label_pc_4baba
  %4 = call i64 @_ZdlPvm(ptr %2, i64 8)
  br label %dec_label_pc_4bb2e

dec_label_pc_4bb2e:                               ; preds = %dec_label_pc_4bb21, %dec_label_pc_4baba
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_4bb43, label %dec_label_pc_4bb3e

dec_label_pc_4bb3e:                               ; preds = %dec_label_pc_4bb2e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4bb43

dec_label_pc_4bb43:                               ; preds = %dec_label_pc_4bb3e, %dec_label_pc_4bb2e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_4bbe8:
  store i64 ptrtoint (ptr @global_var_77ab0 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_4bc06:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_775e8 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

