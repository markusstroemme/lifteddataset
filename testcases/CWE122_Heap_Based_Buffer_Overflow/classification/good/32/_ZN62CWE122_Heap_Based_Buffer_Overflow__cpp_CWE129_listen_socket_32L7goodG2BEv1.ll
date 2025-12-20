@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_56950:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_569bb

dec_label_pc_569bb:                               ; preds = %dec_label_pc_569bb, %dec_label_pc_56950
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_569e5, label %dec_label_pc_569bb

dec_label_pc_569e5:                               ; preds = %dec_label_pc_569bb
  %7 = add i64 %3, 28
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_56a08

dec_label_pc_56a08:                               ; preds = %dec_label_pc_56a08, %dec_label_pc_569e5
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_56a40, label %dec_label_pc_56a08

dec_label_pc_56a40:                               ; preds = %dec_label_pc_56a08
  %13 = icmp eq i64 %3, 0
  br i1 %13, label %dec_label_pc_56a53, label %dec_label_pc_56a47

dec_label_pc_56a47:                               ; preds = %dec_label_pc_56a40
  %14 = inttoptr i64 %3 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_56a53

dec_label_pc_56a53:                               ; preds = %dec_label_pc_56a47, %dec_label_pc_56a40
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %2, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_56a68, label %dec_label_pc_56a63

dec_label_pc_56a63:                               ; preds = %dec_label_pc_56a53
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_56a68

dec_label_pc_56a68:                               ; preds = %dec_label_pc_56a63, %dec_label_pc_56a53
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

