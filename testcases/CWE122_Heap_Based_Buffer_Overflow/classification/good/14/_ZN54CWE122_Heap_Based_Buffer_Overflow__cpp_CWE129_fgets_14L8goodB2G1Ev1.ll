@global_var_aa9b8 = external constant [16 x i8]
@global_var_aa9e8 = external constant [21 x i8]
@global_var_aaa00 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc084 = external local_unnamed_addr global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a42e:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-48.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_2a4b2, label %dec_label_pc_2a45b

dec_label_pc_2a45b:                               ; preds = %dec_label_pc_2a42e
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_dc090, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_2a4a3, label %dec_label_pc_2a492

dec_label_pc_2a492:                               ; preds = %dec_label_pc_2a45b
  %10 = call i32 @atoi(ptr nonnull %5)
  store i32 %10, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_2a4b2thread-pre-split

dec_label_pc_2a4a3:                               ; preds = %dec_label_pc_2a45b
  call void @printLine(ptr @global_var_aa9b8)
  store i32 -1, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_2a4b2thread-pre-split

dec_label_pc_2a4b2thread-pre-split:               ; preds = %dec_label_pc_2a492, %dec_label_pc_2a4a3
  %stack_var_-48.0.ph.reload = load i32, ptr %stack_var_-48.0.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_dc084, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-48.0.ph.reload, ptr %stack_var_-48.0.reg2mem, align 4
  store i64 14, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_2a4b2

dec_label_pc_2a4b2:                               ; preds = %dec_label_pc_2a4b2thread-pre-split, %dec_label_pc_2a42e
  %.reload = load i32, ptr %.reg2mem, align 4
  %11 = icmp eq i32 %.reload, 5
  br i1 %11, label %dec_label_pc_2a4d1, label %dec_label_pc_2a4bd

dec_label_pc_2a4bd:                               ; preds = %dec_label_pc_2a4b2
  call void @printLine(ptr @global_var_aa9e8)
  br label %dec_label_pc_2a586

dec_label_pc_2a4d1:                               ; preds = %dec_label_pc_2a4b2
  %rsi.0.reload = load i64, ptr %rsi.0.reg2mem, align 8
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %12 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_2a4e8

dec_label_pc_2a4e8:                               ; preds = %dec_label_pc_2a4e8, %dec_label_pc_2a4d1
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %13 = mul i64 %indvars.iv5.reload, 4
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_2a50c, label %dec_label_pc_2a4e8

dec_label_pc_2a50c:                               ; preds = %dec_label_pc_2a4e8
  %16 = icmp ugt i32 %stack_var_-48.0.reload, 9
  br i1 %16, label %dec_label_pc_2a564, label %dec_label_pc_2a518

dec_label_pc_2a518:                               ; preds = %dec_label_pc_2a50c
  %17 = sext i32 %stack_var_-48.0.reload to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %12, %18
  %20 = inttoptr i64 %19 to ptr
  store i32 1, ptr %20, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2a53b

dec_label_pc_2a53b:                               ; preds = %dec_label_pc_2a53b, %dec_label_pc_2a518
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %21 = mul i64 %indvars.iv.reload, 4
  %22 = add i64 %21, %12
  %23 = inttoptr i64 %22 to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2a573, label %dec_label_pc_2a53b

dec_label_pc_2a564:                               ; preds = %dec_label_pc_2a50c
  call void @printLine(ptr @global_var_aaa00)
  br label %dec_label_pc_2a573

dec_label_pc_2a573:                               ; preds = %dec_label_pc_2a53b, %dec_label_pc_2a564
  %25 = icmp eq i64 %12, 0
  br i1 %25, label %dec_label_pc_2a586, label %dec_label_pc_2a57a

dec_label_pc_2a57a:                               ; preds = %dec_label_pc_2a573
  %26 = inttoptr i64 %12 to ptr
  %27 = and i64 %rsi.0.reload, 4294967295
  %28 = inttoptr i64 %27 to ptr
  call void @_ZdaPv(ptr %26, ptr %28)
  br label %dec_label_pc_2a586

dec_label_pc_2a586:                               ; preds = %dec_label_pc_2a57a, %dec_label_pc_2a573, %dec_label_pc_2a4bd
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %0, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_2a59b, label %dec_label_pc_2a596

dec_label_pc_2a596:                               ; preds = %dec_label_pc_2a586
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a59b

dec_label_pc_2a59b:                               ; preds = %dec_label_pc_2a596, %dec_label_pc_2a586
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

