@global_var_aa740 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.151() local_unnamed_addr {
dec_label_pc_27d7c:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_282d0:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.151()
  %3 = call i32 @staticReturnsTrue.151()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = zext i1 %5 to i64
  %7 = and i32 %3, -256
  %8 = sext i32 %7 to i64
  %9 = or i64 %6, %8
  %10 = icmp eq i1 %5, false
  store i64 %9, ptr %rax.2.reg2mem, align 8
  br i1 %10, label %dec_label_pc_283b9, label %dec_label_pc_2830a

dec_label_pc_2830a:                               ; preds = %dec_label_pc_282d0
  %11 = icmp eq i32 %2, 0
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  %14 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_28321

dec_label_pc_28321:                               ; preds = %dec_label_pc_28321, %dec_label_pc_2830a
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %15 = mul i64 %indvars.iv5.reload, 4
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_28345, label %dec_label_pc_28321

dec_label_pc_28345:                               ; preds = %dec_label_pc_28321
  br i1 %13, label %dec_label_pc_28397, label %dec_label_pc_2834b

dec_label_pc_2834b:                               ; preds = %dec_label_pc_28345
  %18 = add i64 %14, 28
  %19 = inttoptr i64 %18 to ptr
  store i32 1, ptr %19, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2836e

dec_label_pc_2836e:                               ; preds = %dec_label_pc_2836e, %dec_label_pc_2834b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %20 = mul i64 %indvars.iv.reload, 4
  %21 = add i64 %20, %14
  %22 = inttoptr i64 %21 to ptr
  %23 = load i32, ptr %22, align 4
  call void @printIntLine(i32 %23)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_283a6, label %dec_label_pc_2836e

dec_label_pc_28397:                               ; preds = %dec_label_pc_28345
  call void @printLine(ptr @global_var_aa740)
  br label %dec_label_pc_283a6

dec_label_pc_283a6:                               ; preds = %dec_label_pc_2836e, %dec_label_pc_28397
  %24 = icmp eq i64 %14, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %24, label %dec_label_pc_283b9, label %dec_label_pc_283ad

dec_label_pc_283ad:                               ; preds = %dec_label_pc_283a6
  %25 = inttoptr i64 %14 to ptr
  %26 = and i64 %1, 4294967295
  %27 = inttoptr i64 %26 to ptr
  call void @_ZdaPv(ptr %25, ptr %27)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_283b9

dec_label_pc_283b9:                               ; preds = %dec_label_pc_283ad, %dec_label_pc_283a6, %dec_label_pc_282d0
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

