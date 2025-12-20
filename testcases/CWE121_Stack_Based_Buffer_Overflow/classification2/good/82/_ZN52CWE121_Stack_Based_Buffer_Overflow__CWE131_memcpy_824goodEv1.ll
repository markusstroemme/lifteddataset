@global_var_1000 = external global ptr
@global_var_eea00 = external global i64
@0 = external global i32
@global_var_ee2d0 = external global %vtable_ee2d0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_9169b:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_916ed

dec_label_pc_916ed:                               ; preds = %dec_label_pc_916ed, %dec_label_pc_9169b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_91704, label %dec_label_pc_916ed

dec_label_pc_91704:                               ; preds = %dec_label_pc_916ed
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  call void @anon1(ptr %5)
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %dec_label_pc_9178a, label %dec_label_pc_9177d

dec_label_pc_9177d:                               ; preds = %dec_label_pc_91704
  %7 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_9178a

dec_label_pc_9178a:                               ; preds = %dec_label_pc_9177d, %dec_label_pc_91704
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %1, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_9179f, label %dec_label_pc_9179a

dec_label_pc_9179a:                               ; preds = %dec_label_pc_9178a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9179f

dec_label_pc_9179f:                               ; preds = %dec_label_pc_9179a, %dec_label_pc_9178a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_917b6:
  store i64 ptrtoint (ptr @global_var_eea00 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_91802:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_ee2d0 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

