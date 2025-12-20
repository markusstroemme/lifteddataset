@global_var_ee678 = external global i64
@0 = external global i32
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_ee030 = external global %vtable_ee030_type
@global_var_bd3f7 = external constant [3 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8019e:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_bd3f7)
  %3 = call i64 @_Znwm(i64 8)
  %4 = inttoptr i64 %3 to ptr
  call void @anon1(ptr %4)
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %dec_label_pc_8022a, label %dec_label_pc_8021d

dec_label_pc_8021d:                               ; preds = %dec_label_pc_8019e
  %6 = call i64 @_ZdlPvm(ptr %4, i64 8)
  br label %dec_label_pc_8022a

dec_label_pc_8022a:                               ; preds = %dec_label_pc_8021d, %dec_label_pc_8019e
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_8023f, label %dec_label_pc_8023a

dec_label_pc_8023a:                               ; preds = %dec_label_pc_8022a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8023f

dec_label_pc_8023f:                               ; preds = %dec_label_pc_8023a, %dec_label_pc_8022a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_8036a:
  store i64 ptrtoint (ptr @global_var_ee678 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_80388:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_ee030 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

