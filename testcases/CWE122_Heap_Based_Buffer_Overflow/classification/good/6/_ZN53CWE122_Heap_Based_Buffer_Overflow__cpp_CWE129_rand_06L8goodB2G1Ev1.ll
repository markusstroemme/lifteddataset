@global_var_af7f0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_624c6:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_6253a

dec_label_pc_6253a:                               ; preds = %dec_label_pc_6253a, %dec_label_pc_624c6
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %8 = mul i64 %indvars.iv7.reload, 4
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_6255e, label %dec_label_pc_6253a

dec_label_pc_6255e:                               ; preds = %dec_label_pc_6253a
  %11 = icmp eq i32 %3, 0
  %12 = mul i32 %5, 32768
  %13 = sext i1 %11 to i32
  %14 = mul i32 %4, 1073741824
  %15 = xor i32 %12, %14
  %16 = xor i32 %15, %6
  %storemerge3.in = xor i32 %16, %13
  %17 = icmp ugt i32 %storemerge3.in, 9
  br i1 %17, label %dec_label_pc_625b6, label %dec_label_pc_6256a

dec_label_pc_6256a:                               ; preds = %dec_label_pc_6255e
  %18 = sext i32 %storemerge3.in to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %7
  %21 = inttoptr i64 %20 to ptr
  store i32 1, ptr %21, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_6258d

dec_label_pc_6258d:                               ; preds = %dec_label_pc_6258d, %dec_label_pc_6256a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %22 = mul i64 %indvars.iv.reload, 4
  %23 = add i64 %22, %7
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_625c5, label %dec_label_pc_6258d

dec_label_pc_625b6:                               ; preds = %dec_label_pc_6255e
  call void @printLine(ptr @global_var_af7f0)
  br label %dec_label_pc_625c5

dec_label_pc_625c5:                               ; preds = %dec_label_pc_6258d, %dec_label_pc_625b6
  %26 = icmp eq i64 %7, 0
  br i1 %26, label %dec_label_pc_625d8, label %dec_label_pc_625cc

dec_label_pc_625cc:                               ; preds = %dec_label_pc_625c5
  %27 = inttoptr i64 %7 to ptr
  %28 = and i64 %1, 4294967295
  %29 = inttoptr i64 %28 to ptr
  call void @_ZdaPv(ptr %27, ptr %29)
  br label %dec_label_pc_625d8

dec_label_pc_625d8:                               ; preds = %dec_label_pc_625cc, %dec_label_pc_625c5
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

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

