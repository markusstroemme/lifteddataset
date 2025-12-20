@global_var_1000 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_4e549:
  %rsp.0.reg2mem = alloca i64, align 8
  %funcPtr_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %funcPtr_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4e5a5

dec_label_pc_4e5a5:                               ; preds = %dec_label_pc_4e5a5, %dec_label_pc_4e549
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4e5bc, label %dec_label_pc_4e5a5

dec_label_pc_4e5bc:                               ; preds = %dec_label_pc_4e5a5
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %1, %4
  br i1 %5, label %dec_label_pc_4e61b, label %dec_label_pc_4e616

dec_label_pc_4e616:                               ; preds = %dec_label_pc_4e5bc
  call void @__stack_chk_fail()
  br label %dec_label_pc_4e61b

dec_label_pc_4e61b:                               ; preds = %dec_label_pc_4e616, %dec_label_pc_4e5bc
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

