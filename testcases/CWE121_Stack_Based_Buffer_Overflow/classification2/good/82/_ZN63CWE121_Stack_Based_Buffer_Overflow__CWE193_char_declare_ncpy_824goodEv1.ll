@global_var_77c78 = external global i64
@0 = external global i32
@global_var_77720 = external global %vtable_77720_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4ee5a:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  call void @anon1(ptr %2)
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %dec_label_pc_4eece, label %dec_label_pc_4eec1

dec_label_pc_4eec1:                               ; preds = %dec_label_pc_4ee5a
  %4 = call i64 @_ZdlPvm(ptr %2, i64 8)
  br label %dec_label_pc_4eece

dec_label_pc_4eece:                               ; preds = %dec_label_pc_4eec1, %dec_label_pc_4ee5a
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_4eee3, label %dec_label_pc_4eede

dec_label_pc_4eede:                               ; preds = %dec_label_pc_4eece
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4eee3

dec_label_pc_4eee3:                               ; preds = %dec_label_pc_4eede, %dec_label_pc_4eece
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_4eefa:
  store i64 ptrtoint (ptr @global_var_77c78 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_4ef46:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_77720 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

