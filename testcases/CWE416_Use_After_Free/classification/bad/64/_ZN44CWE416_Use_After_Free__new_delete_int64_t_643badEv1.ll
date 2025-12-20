@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_340e8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  store i64 5, ptr %2, align 8
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_3413a, label %dec_label_pc_3412d

dec_label_pc_3412d:                               ; preds = %dec_label_pc_340e8
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_3413a

dec_label_pc_3413a:                               ; preds = %dec_label_pc_3412d, %dec_label_pc_340e8
  %7 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_3415b, label %dec_label_pc_34156

dec_label_pc_34156:                               ; preds = %dec_label_pc_3413a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3415b

dec_label_pc_3415b:                               ; preds = %dec_label_pc_34156, %dec_label_pc_3413a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_34246:
  %0 = ptrtoint ptr %arg1 to i64
  call void @printLongLongLine(i64 %0)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

