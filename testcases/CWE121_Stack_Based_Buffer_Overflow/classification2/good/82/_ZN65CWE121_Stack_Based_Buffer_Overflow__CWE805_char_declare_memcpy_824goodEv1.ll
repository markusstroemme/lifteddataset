@global_var_9eab0 = external global i64
@0 = external global i32
@global_var_9e4d0 = external global %vtable_9e4d0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_69f4c:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  call void @anon1(ptr %2)
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %dec_label_pc_69fd8, label %dec_label_pc_69fcb

dec_label_pc_69fcb:                               ; preds = %dec_label_pc_69f4c
  %4 = call i64 @_ZdlPvm(ptr %2, i64 8)
  br label %dec_label_pc_69fd8

dec_label_pc_69fd8:                               ; preds = %dec_label_pc_69fcb, %dec_label_pc_69f4c
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_69fed, label %dec_label_pc_69fe8

dec_label_pc_69fe8:                               ; preds = %dec_label_pc_69fd8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_69fed

dec_label_pc_69fed:                               ; preds = %dec_label_pc_69fe8, %dec_label_pc_69fd8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_6a004:
  store i64 ptrtoint (ptr @global_var_9eab0 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_6a050:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_9e4d0 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

