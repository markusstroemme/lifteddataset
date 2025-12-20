@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5b52b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 99)
  %3 = add i64 %1, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_5b5ba, label %dec_label_pc_5b5b5

dec_label_pc_5b5b5:                               ; preds = %dec_label_pc_5b52b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5b5ba

dec_label_pc_5b5ba:                               ; preds = %dec_label_pc_5b5b5, %dec_label_pc_5b52b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

