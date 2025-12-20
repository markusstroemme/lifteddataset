@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_319ba:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  store i32 1, ptr %2, align 4
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = add i64 %3, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 2, ptr %5, align 4
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %dec_label_pc_31a16, label %dec_label_pc_31a09

dec_label_pc_31a09:                               ; preds = %dec_label_pc_319ba
  %8 = inttoptr i64 %6 to ptr
  %9 = call i64 @_ZdlPvm(ptr %8, i64 8)
  br label %dec_label_pc_31a16

dec_label_pc_31a16:                               ; preds = %dec_label_pc_31a09, %dec_label_pc_319ba
  %10 = bitcast ptr %stack_var_-24 to ptr
  %11 = call i64 @anon1(ptr nonnull %10)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_31a37, label %dec_label_pc_31a32

dec_label_pc_31a32:                               ; preds = %dec_label_pc_31a16
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_31a37

dec_label_pc_31a37:                               ; preds = %dec_label_pc_31a32, %dec_label_pc_31a16
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_31b36:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  call void @printIntLine(i32 %2)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

