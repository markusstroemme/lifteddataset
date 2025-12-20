@global_var_1000 = external global ptr
@global_var_ee968 = external global i64
@0 = external global i32
@global_var_ee258 = external global %vtable_ee258_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8feaa:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_8fefc

dec_label_pc_8fefc:                               ; preds = %dec_label_pc_8fefc, %dec_label_pc_8feaa
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8ff13, label %dec_label_pc_8fefc

dec_label_pc_8ff13:                               ; preds = %dec_label_pc_8fefc
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  call void @anon1(ptr %5)
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %dec_label_pc_8ff99, label %dec_label_pc_8ff8c

dec_label_pc_8ff8c:                               ; preds = %dec_label_pc_8ff13
  %7 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_8ff99

dec_label_pc_8ff99:                               ; preds = %dec_label_pc_8ff8c, %dec_label_pc_8ff13
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %1, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_8ffae, label %dec_label_pc_8ffa9

dec_label_pc_8ffa9:                               ; preds = %dec_label_pc_8ff99
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8ffae

dec_label_pc_8ffae:                               ; preds = %dec_label_pc_8ffa9, %dec_label_pc_8ff99
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_900ce:
  store i64 ptrtoint (ptr @global_var_ee968 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_900ec:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_ee258 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

