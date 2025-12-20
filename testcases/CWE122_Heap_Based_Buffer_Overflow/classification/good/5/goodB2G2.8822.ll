@global_var_b8530 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec048 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_570b3:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec048, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_571e7, label %dec_label_pc_5711a

dec_label_pc_5711a:                               ; preds = %dec_label_pc_570b3
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %.pr = load i32, ptr @global_var_ec048, align 4
  %6 = icmp eq i32 %.pr, 0
  br i1 %6, label %dec_label_pc_571e7, label %dec_label_pc_57128

dec_label_pc_57128:                               ; preds = %dec_label_pc_5711a
  %7 = urem i32 %2, 2
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %3, 1073741824
  %10 = mul i32 %4, 32768
  %11 = xor i32 %10, %9
  %12 = xor i32 %11, %5
  %13 = sext i1 %8 to i32
  %storemerge3.in = xor i32 %12, %13
  %14 = call ptr @malloc(i32 40)
  %15 = ptrtoint ptr %14 to i64
  %16 = icmp eq ptr %14, null
  %17 = icmp eq i1 %16, false
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br i1 %17, label %dec_label_pc_57150, label %dec_label_pc_5713d

dec_label_pc_5713d:                               ; preds = %dec_label_pc_57128
  call void @exit(i32 -1)
  unreachable

dec_label_pc_57150:                               ; preds = %dec_label_pc_57128, %dec_label_pc_57150
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %18 = mul i64 %indvars.iv7.reload, 4
  %19 = add i64 %18, %15
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_57174, label %dec_label_pc_57150

dec_label_pc_57174:                               ; preds = %dec_label_pc_57150
  %21 = icmp ugt i32 %storemerge3.in, 9
  br i1 %21, label %dec_label_pc_571cc, label %dec_label_pc_57180

dec_label_pc_57180:                               ; preds = %dec_label_pc_57174
  %22 = sext i32 %storemerge3.in to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %23, %15
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_571a3

dec_label_pc_571a3:                               ; preds = %dec_label_pc_571a3, %dec_label_pc_57180
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %26 = mul i64 %indvars.iv.reload, 4
  %27 = add i64 %26, %15
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_571db, label %dec_label_pc_571a3

dec_label_pc_571cc:                               ; preds = %dec_label_pc_57174
  call void @printLine(ptr @global_var_b8530)
  br label %dec_label_pc_571db

dec_label_pc_571db:                               ; preds = %dec_label_pc_571a3, %dec_label_pc_571cc
  call void @free(ptr %14)
  br label %dec_label_pc_571e7

dec_label_pc_571e7:                               ; preds = %dec_label_pc_570b3, %dec_label_pc_571db, %dec_label_pc_5711a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

