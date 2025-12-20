@global_var_ae408 = external constant [32 x i8]
@global_var_ae428 = external constant [21 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc04c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4fc28:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-24.08.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc04c, align 4
  %3 = icmp eq i32 %2, 5
  store i32 7, ptr %stack_var_-24.08.reg2mem, align 4
  br i1 %3, label %dec_label_pc_4fc6d, label %dec_label_pc_4fc5e

dec_label_pc_4fc5e:                               ; preds = %dec_label_pc_4fc28
  call void @printLine(ptr @global_var_ae428)
  %.pre = load i32, ptr @global_var_dc04c, align 4
  %4 = zext i32 %.pre to i64
  %5 = icmp eq i32 %.pre, 5
  %6 = icmp eq i1 %5, false
  store i32 -1, ptr %stack_var_-24.08.reg2mem, align 4
  store i64 %4, ptr %rax.2.reg2mem, align 8
  br i1 %6, label %dec_label_pc_4fd1c, label %dec_label_pc_4fc6d

dec_label_pc_4fc6d:                               ; preds = %dec_label_pc_4fc28, %dec_label_pc_4fc5e
  %stack_var_-24.08.reload = load i32, ptr %stack_var_-24.08.reg2mem, align 4
  %7 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_4fc84

dec_label_pc_4fc84:                               ; preds = %dec_label_pc_4fc84, %dec_label_pc_4fc6d
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_4fca8, label %dec_label_pc_4fc84

dec_label_pc_4fca8:                               ; preds = %dec_label_pc_4fc84
  %11 = icmp slt i32 %stack_var_-24.08.reload, 0
  br i1 %11, label %dec_label_pc_4fcfa, label %dec_label_pc_4fcae

dec_label_pc_4fcae:                               ; preds = %dec_label_pc_4fca8
  %12 = sext i32 %stack_var_-24.08.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %7
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4fcd1

dec_label_pc_4fcd1:                               ; preds = %dec_label_pc_4fcd1, %dec_label_pc_4fcae
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %7
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4fd09, label %dec_label_pc_4fcd1

dec_label_pc_4fcfa:                               ; preds = %dec_label_pc_4fca8
  call void @printLine(ptr @global_var_ae408)
  br label %dec_label_pc_4fd09

dec_label_pc_4fd09:                               ; preds = %dec_label_pc_4fcd1, %dec_label_pc_4fcfa
  %20 = icmp eq i64 %7, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %20, label %dec_label_pc_4fd1c, label %dec_label_pc_4fd10

dec_label_pc_4fd10:                               ; preds = %dec_label_pc_4fd09
  %21 = inttoptr i64 %7 to ptr
  %22 = and i64 %1, 4294967295
  %23 = inttoptr i64 %22 to ptr
  call void @_ZdaPv(ptr %21, ptr %23)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_4fd1c

dec_label_pc_4fd1c:                               ; preds = %dec_label_pc_4fd10, %dec_label_pc_4fd09, %dec_label_pc_4fc5e
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

