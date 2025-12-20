@global_var_1000 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_4e475:
  %rsp.0.reg2mem = alloca i64, align 8
  %funcPtr_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %funcPtr_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4e4d1

dec_label_pc_4e4d1:                               ; preds = %dec_label_pc_4e4d1, %dec_label_pc_4e475
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4e4e8, label %dec_label_pc_4e4d1

dec_label_pc_4e4e8:                               ; preds = %dec_label_pc_4e4d1
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %1, %4
  br i1 %5, label %dec_label_pc_4e547, label %dec_label_pc_4e542

dec_label_pc_4e542:                               ; preds = %dec_label_pc_4e4e8
  call void @__stack_chk_fail()
  br label %dec_label_pc_4e547

dec_label_pc_4e547:                               ; preds = %dec_label_pc_4e542, %dec_label_pc_4e4e8
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

