@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc084 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_53999:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc084, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  %5 = zext i32 %2 to i64
  store i64 %5, ptr %rax.2.reg2mem, align 8
  br i1 %4, label %dec_label_pc_53a7c, label %dec_label_pc_539cd

dec_label_pc_539cd:                               ; preds = %dec_label_pc_53999
  %6 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_539e4

dec_label_pc_539e4:                               ; preds = %dec_label_pc_539e4, %dec_label_pc_539cd
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_53a0e, label %dec_label_pc_539e4

dec_label_pc_53a0e:                               ; preds = %dec_label_pc_539e4
  %10 = add i64 %6, 28
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_53a31

dec_label_pc_53a31:                               ; preds = %dec_label_pc_53a31, %dec_label_pc_53a0e
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %6
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_53a69, label %dec_label_pc_53a31

dec_label_pc_53a69:                               ; preds = %dec_label_pc_53a31
  %16 = icmp eq i64 %6, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %16, label %dec_label_pc_53a7c, label %dec_label_pc_53a70

dec_label_pc_53a70:                               ; preds = %dec_label_pc_53a69
  %17 = inttoptr i64 %6 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_53a7c

dec_label_pc_53a7c:                               ; preds = %dec_label_pc_53a70, %dec_label_pc_53a69, %dec_label_pc_53999
  %rax.2.reload = load i64, ptr %rax.2.reg2mem, align 8
  ret i64 %rax.2.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

