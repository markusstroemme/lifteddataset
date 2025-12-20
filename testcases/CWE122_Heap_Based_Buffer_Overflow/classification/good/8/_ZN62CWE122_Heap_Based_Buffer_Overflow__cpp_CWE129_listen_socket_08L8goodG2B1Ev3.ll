@global_var_ae468 = external constant [32 x i8]
@global_var_ae488 = external constant [21 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.157() local_unnamed_addr {
dec_label_pc_4fe24:
  ret i32 1
}

define i32 @staticReturnsFalse.158() local_unnamed_addr {
dec_label_pc_4fe33:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_504e8:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsFalse.158()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  store i32 7, ptr %stack_var_-24.0.reg2mem, align 4
  br i1 %5, label %dec_label_pc_50521, label %dec_label_pc_50509

dec_label_pc_50509:                               ; preds = %dec_label_pc_504e8
  call void @printLine(ptr @global_var_ae488)
  store i32 -1, ptr %stack_var_-24.0.reg2mem, align 4
  br label %dec_label_pc_50521

dec_label_pc_50521:                               ; preds = %dec_label_pc_504e8, %dec_label_pc_50509
  %6 = call i32 @staticReturnsTrue.157()
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i1 %7, false
  %9 = zext i1 %8 to i64
  %10 = and i32 %6, -256
  %11 = sext i32 %10 to i64
  %12 = or i64 %9, %11
  %13 = icmp eq i1 %8, false
  store i64 %12, ptr %rax.2.reg2mem, align 8
  br i1 %13, label %dec_label_pc_505e2, label %dec_label_pc_50533

dec_label_pc_50533:                               ; preds = %dec_label_pc_50521
  %stack_var_-24.0.reload = load i32, ptr %stack_var_-24.0.reg2mem, align 4
  %14 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_5054a

dec_label_pc_5054a:                               ; preds = %dec_label_pc_5054a, %dec_label_pc_50533
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %15 = mul i64 %indvars.iv5.reload, 4
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_5056e, label %dec_label_pc_5054a

dec_label_pc_5056e:                               ; preds = %dec_label_pc_5054a
  %18 = icmp slt i32 %stack_var_-24.0.reload, 0
  br i1 %18, label %dec_label_pc_505c0, label %dec_label_pc_50574

dec_label_pc_50574:                               ; preds = %dec_label_pc_5056e
  %19 = sext i32 %stack_var_-24.0.reload to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %14, %20
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_50597

dec_label_pc_50597:                               ; preds = %dec_label_pc_50597, %dec_label_pc_50574
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %23 = mul i64 %indvars.iv.reload, 4
  %24 = add i64 %23, %14
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_505cf, label %dec_label_pc_50597

dec_label_pc_505c0:                               ; preds = %dec_label_pc_5056e
  call void @printLine(ptr @global_var_ae468)
  br label %dec_label_pc_505cf

dec_label_pc_505cf:                               ; preds = %dec_label_pc_50597, %dec_label_pc_505c0
  %27 = icmp eq i64 %14, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %27, label %dec_label_pc_505e2, label %dec_label_pc_505d6

dec_label_pc_505d6:                               ; preds = %dec_label_pc_505cf
  %28 = inttoptr i64 %14 to ptr
  %29 = and i64 %1, 4294967295
  %30 = inttoptr i64 %29 to ptr
  call void @_ZdaPv(ptr %28, ptr %30)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_505e2

dec_label_pc_505e2:                               ; preds = %dec_label_pc_505d6, %dec_label_pc_505cf, %dec_label_pc_50521
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

