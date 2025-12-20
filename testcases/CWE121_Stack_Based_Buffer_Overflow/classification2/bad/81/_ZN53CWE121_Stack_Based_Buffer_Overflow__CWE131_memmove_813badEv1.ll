@global_var_1000 = external global ptr
@0 = external global i32
@global_var_ee2e8 = external global %vtable_ee2e8_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_92987:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_929d8

dec_label_pc_929d8:                               ; preds = %dec_label_pc_929d8, %dec_label_pc_92987
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_929ef, label %dec_label_pc_929d8

dec_label_pc_929ef:                               ; preds = %dec_label_pc_929d8
  store i64 ptrtoint (ptr @global_var_ee2e8 to i64), ptr %stack_var_-40, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %1, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_92a6e, label %dec_label_pc_92a69

dec_label_pc_92a69:                               ; preds = %dec_label_pc_929ef
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_92a6e

dec_label_pc_92a6e:                               ; preds = %dec_label_pc_92a69, %dec_label_pc_929ef
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

