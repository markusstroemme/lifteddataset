@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_36379:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 4)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  store i32 5, ptr %2, align 4
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_363ca, label %dec_label_pc_363bd

dec_label_pc_363bd:                               ; preds = %dec_label_pc_36379
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 4)
  br label %dec_label_pc_363ca

dec_label_pc_363ca:                               ; preds = %dec_label_pc_363bd, %dec_label_pc_36379
  %7 = bitcast ptr %stack_var_-24 to ptr
  %8 = call i64 @anon1(ptr nonnull %7)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_363eb, label %dec_label_pc_363e6

dec_label_pc_363e6:                               ; preds = %dec_label_pc_363ca
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_363eb

dec_label_pc_363eb:                               ; preds = %dec_label_pc_363e6, %dec_label_pc_363ca
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_364d4:
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

