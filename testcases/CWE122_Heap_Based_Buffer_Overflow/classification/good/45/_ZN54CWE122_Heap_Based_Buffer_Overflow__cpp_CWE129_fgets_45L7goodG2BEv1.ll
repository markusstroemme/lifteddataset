@global_var_aaf28 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc108 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2e42d:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc108, align 4
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_2e459

dec_label_pc_2e459:                               ; preds = %dec_label_pc_2e459, %dec_label_pc_2e42d
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %4 = mul i64 %indvars.iv5.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_2e47d, label %dec_label_pc_2e459

dec_label_pc_2e47d:                               ; preds = %dec_label_pc_2e459
  %7 = icmp slt i32 %2, 0
  br i1 %7, label %dec_label_pc_2e4cf, label %dec_label_pc_2e483

dec_label_pc_2e483:                               ; preds = %dec_label_pc_2e47d
  %8 = sext i32 %2 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2e4a6

dec_label_pc_2e4a6:                               ; preds = %dec_label_pc_2e4a6, %dec_label_pc_2e483
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2e4de, label %dec_label_pc_2e4a6

dec_label_pc_2e4cf:                               ; preds = %dec_label_pc_2e47d
  call void @printLine(ptr @global_var_aaf28)
  br label %dec_label_pc_2e4de

dec_label_pc_2e4de:                               ; preds = %dec_label_pc_2e4a6, %dec_label_pc_2e4cf
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_2e4f1, label %dec_label_pc_2e4e5

dec_label_pc_2e4e5:                               ; preds = %dec_label_pc_2e4de
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_2e4f1

dec_label_pc_2e4f1:                               ; preds = %dec_label_pc_2e4e5, %dec_label_pc_2e4de
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_2e4f4:
  store i32 7, ptr @global_var_dc108, align 4
  %0 = call i64 @anon0()
  ret i64 %0
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

