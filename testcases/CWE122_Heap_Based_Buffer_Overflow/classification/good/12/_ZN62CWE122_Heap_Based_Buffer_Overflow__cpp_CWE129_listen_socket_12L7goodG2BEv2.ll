@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_527bc:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %indvars.iv11.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  %7 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br i1 %6, label %dec_label_pc_528ce, label %dec_label_pc_52816

dec_label_pc_52816:                               ; preds = %dec_label_pc_527bc, %dec_label_pc_52816
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %8 = mul i64 %indvars.iv14.reload, 4
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_52840, label %dec_label_pc_52816

dec_label_pc_52840:                               ; preds = %dec_label_pc_52816
  %11 = add i64 %7, 28
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv11.reg2mem, align 8
  br label %dec_label_pc_52863

dec_label_pc_52863:                               ; preds = %dec_label_pc_52863, %dec_label_pc_52840
  %indvars.iv11.reload = load i64, ptr %indvars.iv11.reg2mem, align 8
  %13 = mul i64 %indvars.iv11.reload, 4
  %14 = add i64 %13, %7
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11.reload, 1
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 10
  store i64 %indvars.iv.next12, ptr %indvars.iv11.reg2mem, align 8
  br i1 %exitcond13, label %dec_label_pc_5289b, label %dec_label_pc_52863

dec_label_pc_5289b:                               ; preds = %dec_label_pc_52863
  %17 = icmp eq i64 %7, 0
  br i1 %17, label %dec_label_pc_52966, label %dec_label_pc_528a6

dec_label_pc_528a6:                               ; preds = %dec_label_pc_5289b
  %18 = inttoptr i64 %7 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_52966

dec_label_pc_528ce:                               ; preds = %dec_label_pc_527bc, %dec_label_pc_528ce
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %21 = mul i64 %indvars.iv8.reload, 4
  %22 = add i64 %21, %7
  %23 = inttoptr i64 %22 to ptr
  store i32 0, ptr %23, align 4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_528f8, label %dec_label_pc_528ce

dec_label_pc_528f8:                               ; preds = %dec_label_pc_528ce
  %24 = add i64 %7, 28
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5291b

dec_label_pc_5291b:                               ; preds = %dec_label_pc_5291b, %dec_label_pc_528f8
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %26 = mul i64 %indvars.iv.reload, 4
  %27 = add i64 %26, %7
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_52953, label %dec_label_pc_5291b

dec_label_pc_52953:                               ; preds = %dec_label_pc_5291b
  %30 = icmp eq i64 %7, 0
  br i1 %30, label %dec_label_pc_52966, label %dec_label_pc_5295a

dec_label_pc_5295a:                               ; preds = %dec_label_pc_52953
  %31 = inttoptr i64 %7 to ptr
  %32 = and i64 %1, 4294967295
  %33 = inttoptr i64 %32 to ptr
  call void @_ZdaPv(ptr %31, ptr %33)
  br label %dec_label_pc_52966

dec_label_pc_52966:                               ; preds = %dec_label_pc_5295a, %dec_label_pc_52953, %dec_label_pc_528a6, %dec_label_pc_5289b
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

