@global_var_81631 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4761a:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-136 = alloca i64, align 8
  %dataGoodBuffer_-256 = alloca [100 x i8], align 8
  %stack_var_-248 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_47658, label %dec_label_pc_47647

dec_label_pc_47647:                               ; preds = %dec_label_pc_4761a
  call void @printLine(ptr @global_var_81631)
  %.pre = bitcast ptr %dataGoodBuffer_-256 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_47670

dec_label_pc_47658:                               ; preds = %dec_label_pc_4761a
  %3 = ptrtoint ptr %stack_var_-248 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [100 x i8] undef, i8 %4, 0
  store [100 x i8] %5, ptr %dataGoodBuffer_-256, align 8
  %6 = bitcast ptr %dataGoodBuffer_-256 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_47670

dec_label_pc_47670:                               ; preds = %dec_label_pc_47658, %dec_label_pc_47647
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %10 = load i64, ptr %.pre-phi.reload, align 8
  %11 = load i64, ptr %stack_var_-136, align 8
  %12 = inttoptr i64 %10 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add i64 %10, 8
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %10, 16
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %10, 24
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %10, 32
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %10, 40
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %10, 48
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %10, 56
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %10, 64
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %10, 72
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %10, 80
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %10, 88
  %34 = inttoptr i64 %33 to ptr
  %35 = add i64 %10, 96
  %36 = inttoptr i64 %35 to ptr
  %37 = load i64, ptr %.pre-phi.reload, align 8
  %38 = add i64 %37, 99
  %39 = inttoptr i64 %38 to ptr
  store i8 0, ptr %39, align 1
  %40 = load i64, ptr %.pre-phi.reload, align 8
  %41 = inttoptr i64 %40 to ptr
  call void @printLine(ptr %41)
  %42 = call i64 @__readfsqword(i64 40)
  %43 = icmp eq i64 %0, %42
  br i1 %43, label %dec_label_pc_47728, label %dec_label_pc_47723

dec_label_pc_47723:                               ; preds = %dec_label_pc_47670
  call void @__stack_chk_fail()
  br label %dec_label_pc_47728

dec_label_pc_47728:                               ; preds = %dec_label_pc_47723, %dec_label_pc_47670
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6debc:
  ret i32 0
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

