@global_var_af9f8 = external constant [32 x i8]
@global_var_afa18 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_64510:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv11.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %indvars.iv17.reg2mem = alloca i64, align 8
  %storemerge5.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  store i32 7, ptr %storemerge5.reg2mem, align 4
  br i1 %5, label %dec_label_pc_64584, label %dec_label_pc_64532

dec_label_pc_64532:                               ; preds = %dec_label_pc_64510
  %6 = call i32 @rand()
  %7 = urem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = call i32 @rand()
  %10 = mul i32 %9, 1073741824
  %11 = call i32 @rand()
  %12 = mul i32 %11, 32768
  %13 = xor i32 %12, %10
  %14 = call i32 @rand()
  %15 = xor i32 %13, %14
  %16 = sext i1 %8 to i32
  %storemerge4.in = xor i32 %15, %16
  store i32 %storemerge4.in, ptr %storemerge5.reg2mem, align 4
  br label %dec_label_pc_64584

dec_label_pc_64584:                               ; preds = %dec_label_pc_64510, %dec_label_pc_64532
  %storemerge5.reload = load i32, ptr %storemerge5.reg2mem, align 4
  %17 = call i32 @globalReturnsTrueOrFalse()
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i1 %18, false
  %20 = icmp eq i1 %19, false
  %21 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv17.reg2mem, align 8
  store i64 0, ptr %indvars.iv11.reg2mem, align 8
  br i1 %20, label %dec_label_pc_64665, label %dec_label_pc_645ad

dec_label_pc_645ad:                               ; preds = %dec_label_pc_64584, %dec_label_pc_645ad
  %indvars.iv17.reload = load i64, ptr %indvars.iv17.reg2mem, align 8
  %22 = mul i64 %indvars.iv17.reload, 4
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to ptr
  store i32 0, ptr %24, align 4
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17.reload, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 10
  store i64 %indvars.iv.next18, ptr %indvars.iv17.reg2mem, align 8
  br i1 %exitcond19, label %dec_label_pc_645d1, label %dec_label_pc_645ad

dec_label_pc_645d1:                               ; preds = %dec_label_pc_645ad
  %25 = icmp slt i32 %storemerge5.reload, 0
  br i1 %25, label %dec_label_pc_64623, label %dec_label_pc_645d7

dec_label_pc_645d7:                               ; preds = %dec_label_pc_645d1
  %26 = sext i32 %storemerge5.reload to i64
  %27 = mul i64 %26, 4
  %28 = add i64 %21, %27
  %29 = inttoptr i64 %28 to ptr
  store i32 1, ptr %29, align 4
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br label %dec_label_pc_645fa

dec_label_pc_645fa:                               ; preds = %dec_label_pc_645fa, %dec_label_pc_645d7
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %30 = mul i64 %indvars.iv14.reload, 4
  %31 = add i64 %30, %21
  %32 = inttoptr i64 %31 to ptr
  %33 = load i32, ptr %32, align 4
  call void @printIntLine(i32 %33)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_64632, label %dec_label_pc_645fa

dec_label_pc_64623:                               ; preds = %dec_label_pc_645d1
  call void @printLine(ptr @global_var_af9f8)
  br label %dec_label_pc_64632

dec_label_pc_64632:                               ; preds = %dec_label_pc_645fa, %dec_label_pc_64623
  %34 = icmp eq i64 %21, 0
  br i1 %34, label %dec_label_pc_64703, label %dec_label_pc_6463d

dec_label_pc_6463d:                               ; preds = %dec_label_pc_64632
  %35 = inttoptr i64 %21 to ptr
  %36 = and i64 %1, 4294967295
  %37 = inttoptr i64 %36 to ptr
  call void @_ZdaPv(ptr %35, ptr %37)
  br label %dec_label_pc_64703

dec_label_pc_64665:                               ; preds = %dec_label_pc_64584, %dec_label_pc_64665
  %indvars.iv11.reload = load i64, ptr %indvars.iv11.reg2mem, align 8
  %38 = mul i64 %indvars.iv11.reload, 4
  %39 = add i64 %38, %21
  %40 = inttoptr i64 %39 to ptr
  store i32 0, ptr %40, align 4
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11.reload, 1
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 10
  store i64 %indvars.iv.next12, ptr %indvars.iv11.reg2mem, align 8
  br i1 %exitcond13, label %dec_label_pc_64689, label %dec_label_pc_64665

dec_label_pc_64689:                               ; preds = %dec_label_pc_64665
  %41 = icmp ugt i32 %storemerge5.reload, 9
  br i1 %41, label %dec_label_pc_646e1, label %dec_label_pc_64695

dec_label_pc_64695:                               ; preds = %dec_label_pc_64689
  %42 = sext i32 %storemerge5.reload to i64
  %43 = mul i64 %42, 4
  %44 = add i64 %21, %43
  %45 = inttoptr i64 %44 to ptr
  store i32 1, ptr %45, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_646b8

dec_label_pc_646b8:                               ; preds = %dec_label_pc_646b8, %dec_label_pc_64695
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %46 = mul i64 %indvars.iv.reload, 4
  %47 = add i64 %46, %21
  %48 = inttoptr i64 %47 to ptr
  %49 = load i32, ptr %48, align 4
  call void @printIntLine(i32 %49)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_646f0, label %dec_label_pc_646b8

dec_label_pc_646e1:                               ; preds = %dec_label_pc_64689
  call void @printLine(ptr @global_var_afa18)
  br label %dec_label_pc_646f0

dec_label_pc_646f0:                               ; preds = %dec_label_pc_646b8, %dec_label_pc_646e1
  %50 = icmp eq i64 %21, 0
  br i1 %50, label %dec_label_pc_64703, label %dec_label_pc_646f7

dec_label_pc_646f7:                               ; preds = %dec_label_pc_646f0
  %51 = inttoptr i64 %21 to ptr
  %52 = and i64 %1, 4294967295
  %53 = inttoptr i64 %52 to ptr
  call void @_ZdaPv(ptr %51, ptr %53)
  br label %dec_label_pc_64703

dec_label_pc_64703:                               ; preds = %dec_label_pc_646f7, %dec_label_pc_646f0, %dec_label_pc_6463d, %dec_label_pc_64632
  ret i64 ptrtoint (ptr @0 to i64)
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

declare i32 @puts(ptr) local_unnamed_addr

