@global_var_a90b8 = external constant [32 x i8]
@global_var_a90d8 = external constant [21 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.149() local_unnamed_addr {
dec_label_pc_11a2f:
  ret i32 1
}

define i32 @staticReturnsFalse.150() local_unnamed_addr {
dec_label_pc_11a3e:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1201b:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsFalse.150()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  store i32 7, ptr %stack_var_-24.0.reg2mem, align 4
  br i1 %5, label %dec_label_pc_12054, label %dec_label_pc_1203c

dec_label_pc_1203c:                               ; preds = %dec_label_pc_1201b
  call void @printLine(ptr @global_var_a90d8)
  store i32 -1, ptr %stack_var_-24.0.reg2mem, align 4
  br label %dec_label_pc_12054

dec_label_pc_12054:                               ; preds = %dec_label_pc_1201b, %dec_label_pc_1203c
  %6 = call i32 @staticReturnsTrue.149()
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i1 %7, false
  %9 = zext i1 %8 to i64
  %10 = and i32 %6, -256
  %11 = sext i32 %10 to i64
  %12 = or i64 %9, %11
  %13 = icmp eq i1 %8, false
  store i64 %12, ptr %rax.2.reg2mem, align 8
  br i1 %13, label %dec_label_pc_12115, label %dec_label_pc_12066

dec_label_pc_12066:                               ; preds = %dec_label_pc_12054
  %stack_var_-24.0.reload = load i32, ptr %stack_var_-24.0.reg2mem, align 4
  %14 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_1207d

dec_label_pc_1207d:                               ; preds = %dec_label_pc_1207d, %dec_label_pc_12066
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %15 = mul i64 %indvars.iv5.reload, 4
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_120a1, label %dec_label_pc_1207d

dec_label_pc_120a1:                               ; preds = %dec_label_pc_1207d
  %18 = icmp slt i32 %stack_var_-24.0.reload, 0
  br i1 %18, label %dec_label_pc_120f3, label %dec_label_pc_120a7

dec_label_pc_120a7:                               ; preds = %dec_label_pc_120a1
  %19 = sext i32 %stack_var_-24.0.reload to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %14, %20
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_120ca

dec_label_pc_120ca:                               ; preds = %dec_label_pc_120ca, %dec_label_pc_120a7
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %23 = mul i64 %indvars.iv.reload, 4
  %24 = add i64 %23, %14
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_12102, label %dec_label_pc_120ca

dec_label_pc_120f3:                               ; preds = %dec_label_pc_120a1
  call void @printLine(ptr @global_var_a90b8)
  br label %dec_label_pc_12102

dec_label_pc_12102:                               ; preds = %dec_label_pc_120ca, %dec_label_pc_120f3
  %27 = icmp eq i64 %14, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %27, label %dec_label_pc_12115, label %dec_label_pc_12109

dec_label_pc_12109:                               ; preds = %dec_label_pc_12102
  %28 = inttoptr i64 %14 to ptr
  %29 = and i64 %1, 4294967295
  %30 = inttoptr i64 %29 to ptr
  call void @_ZdaPv(ptr %28, ptr %30)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_12115

dec_label_pc_12115:                               ; preds = %dec_label_pc_12109, %dec_label_pc_12102, %dec_label_pc_12054
  %rax.2.reload = load i64, ptr %rax.2.reg2mem, align 8
  ret i64 %rax.2.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
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

declare i32 @puts(ptr) local_unnamed_addr

