@global_var_afa18 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6470a:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv15.reg2mem = alloca i64, align 8
  %indvars.iv18.reg2mem = alloca i64, align 8
  %indvars.iv21.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = mul i32 %6, 1073741824
  %8 = call i32 @rand()
  %9 = mul i32 %8, 32768
  %10 = xor i32 %9, %7
  %11 = call i32 @rand()
  %12 = xor i32 %10, %11
  %13 = sext i1 %5 to i32
  %storemerge6.in = xor i32 %12, %13
  %14 = call i32 @globalReturnsTrueOrFalse()
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq i1 %15, false
  %17 = icmp eq i1 %16, false
  %18 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv21.reg2mem, align 8
  store i64 0, ptr %indvars.iv15.reg2mem, align 8
  br i1 %17, label %dec_label_pc_648a7, label %dec_label_pc_647e9

dec_label_pc_647e9:                               ; preds = %dec_label_pc_6470a, %dec_label_pc_647e9
  %indvars.iv21.reload = load i64, ptr %indvars.iv21.reg2mem, align 8
  %19 = mul i64 %indvars.iv21.reload, 4
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21.reload, 1
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 10
  store i64 %indvars.iv.next22, ptr %indvars.iv21.reg2mem, align 8
  br i1 %exitcond23, label %dec_label_pc_6480d, label %dec_label_pc_647e9

dec_label_pc_6480d:                               ; preds = %dec_label_pc_647e9
  %22 = icmp ugt i32 %storemerge6.in, 9
  br i1 %22, label %dec_label_pc_64865, label %dec_label_pc_64819

dec_label_pc_64819:                               ; preds = %dec_label_pc_6480d
  %23 = sext i32 %storemerge6.in to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %24, %18
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv18.reg2mem, align 8
  br label %dec_label_pc_6483c

dec_label_pc_6483c:                               ; preds = %dec_label_pc_6483c, %dec_label_pc_64819
  %indvars.iv18.reload = load i64, ptr %indvars.iv18.reg2mem, align 8
  %27 = mul i64 %indvars.iv18.reload, 4
  %28 = add i64 %27, %18
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18.reload, 1
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 10
  store i64 %indvars.iv.next19, ptr %indvars.iv18.reg2mem, align 8
  br i1 %exitcond20, label %dec_label_pc_64874, label %dec_label_pc_6483c

dec_label_pc_64865:                               ; preds = %dec_label_pc_6480d
  call void @printLine(ptr @global_var_afa18)
  br label %dec_label_pc_64874

dec_label_pc_64874:                               ; preds = %dec_label_pc_6483c, %dec_label_pc_64865
  %31 = icmp eq i64 %18, 0
  br i1 %31, label %dec_label_pc_64945, label %dec_label_pc_6487f

dec_label_pc_6487f:                               ; preds = %dec_label_pc_64874
  %32 = inttoptr i64 %18 to ptr
  %33 = and i64 %1, 4294967295
  %34 = inttoptr i64 %33 to ptr
  call void @_ZdaPv(ptr %32, ptr %34)
  br label %dec_label_pc_64945

dec_label_pc_648a7:                               ; preds = %dec_label_pc_6470a, %dec_label_pc_648a7
  %indvars.iv15.reload = load i64, ptr %indvars.iv15.reg2mem, align 8
  %35 = mul i64 %indvars.iv15.reload, 4
  %36 = add i64 %35, %18
  %37 = inttoptr i64 %36 to ptr
  store i32 0, ptr %37, align 4
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15.reload, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 10
  store i64 %indvars.iv.next16, ptr %indvars.iv15.reg2mem, align 8
  br i1 %exitcond17, label %dec_label_pc_648cb, label %dec_label_pc_648a7

dec_label_pc_648cb:                               ; preds = %dec_label_pc_648a7
  %38 = icmp ugt i32 %storemerge6.in, 9
  br i1 %38, label %dec_label_pc_64923, label %dec_label_pc_648d7

dec_label_pc_648d7:                               ; preds = %dec_label_pc_648cb
  %39 = sext i32 %storemerge6.in to i64
  %40 = mul i64 %39, 4
  %41 = add i64 %40, %18
  %42 = inttoptr i64 %41 to ptr
  store i32 1, ptr %42, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_648fa

dec_label_pc_648fa:                               ; preds = %dec_label_pc_648fa, %dec_label_pc_648d7
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %43 = mul i64 %indvars.iv.reload, 4
  %44 = add i64 %43, %18
  %45 = inttoptr i64 %44 to ptr
  %46 = load i32, ptr %45, align 4
  call void @printIntLine(i32 %46)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_64932, label %dec_label_pc_648fa

dec_label_pc_64923:                               ; preds = %dec_label_pc_648cb
  call void @printLine(ptr @global_var_afa18)
  br label %dec_label_pc_64932

dec_label_pc_64932:                               ; preds = %dec_label_pc_648fa, %dec_label_pc_64923
  %47 = icmp eq i64 %18, 0
  br i1 %47, label %dec_label_pc_64945, label %dec_label_pc_64939

dec_label_pc_64939:                               ; preds = %dec_label_pc_64932
  %48 = inttoptr i64 %18 to ptr
  %49 = and i64 %1, 4294967295
  %50 = inttoptr i64 %49 to ptr
  call void @_ZdaPv(ptr %48, ptr %50)
  br label %dec_label_pc_64945

dec_label_pc_64945:                               ; preds = %dec_label_pc_64939, %dec_label_pc_64932, %dec_label_pc_6487f, %dec_label_pc_64874
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

