@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_789ce:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_78a43, label %dec_label_pc_78a3e

dec_label_pc_78a3e:                               ; preds = %dec_label_pc_789ce
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_78a43

dec_label_pc_78a43:                               ; preds = %dec_label_pc_78a3e, %dec_label_pc_789ce
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

