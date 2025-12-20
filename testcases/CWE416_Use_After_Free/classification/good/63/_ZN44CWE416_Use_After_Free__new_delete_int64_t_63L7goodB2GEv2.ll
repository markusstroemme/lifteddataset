@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_33fea:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  store i64 5, ptr %2, align 8
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_3403c, label %dec_label_pc_3402f

dec_label_pc_3402f:                               ; preds = %dec_label_pc_33fea
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_3403c

dec_label_pc_3403c:                               ; preds = %dec_label_pc_3402f, %dec_label_pc_33fea
  %7 = bitcast ptr %stack_var_-24 to ptr
  %8 = call i64 @anon1(ptr nonnull %7)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_3405d, label %dec_label_pc_34058

dec_label_pc_34058:                               ; preds = %dec_label_pc_3403c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3405d

dec_label_pc_3405d:                               ; preds = %dec_label_pc_34058, %dec_label_pc_3403c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_340ce:
  %0 = ptrtoint ptr %arg1 to i64
  ret i64 %0
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

