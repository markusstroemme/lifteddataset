@global_var_b8868 = external constant [21 x i8]
@global_var_b8880 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5a4fc:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_ec074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_5a564, label %dec_label_pc_5a51b

dec_label_pc_5a51b:                               ; preds = %dec_label_pc_5a4fc
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
  %storemerge3.in = xor i32 %12, %13
  %.pr = load i32, ptr @global_var_ec074, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_5a564

dec_label_pc_5a564:                               ; preds = %dec_label_pc_5a51b, %dec_label_pc_5a4fc
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  br i1 %14, label %dec_label_pc_5a583, label %dec_label_pc_5a56f

dec_label_pc_5a56f:                               ; preds = %dec_label_pc_5a564
  call void @printLine(ptr @global_var_b8868)
  br label %dec_label_pc_5a642

dec_label_pc_5a583:                               ; preds = %dec_label_pc_5a564
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %15 = call ptr @malloc(i32 40)
  %16 = ptrtoint ptr %15 to i64
  %17 = icmp eq ptr %15, null
  %18 = icmp eq i1 %17, false
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br i1 %18, label %dec_label_pc_5a5ab, label %dec_label_pc_5a598

dec_label_pc_5a598:                               ; preds = %dec_label_pc_5a583
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5a5ab:                               ; preds = %dec_label_pc_5a583, %dec_label_pc_5a5ab
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %19 = mul i64 %indvars.iv7.reload, 4
  %20 = add i64 %19, %16
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_5a5cf, label %dec_label_pc_5a5ab

dec_label_pc_5a5cf:                               ; preds = %dec_label_pc_5a5ab
  %22 = icmp ugt i32 %stack_var_-40.0.reload, 9
  br i1 %22, label %dec_label_pc_5a627, label %dec_label_pc_5a5db

dec_label_pc_5a5db:                               ; preds = %dec_label_pc_5a5cf
  %23 = sext i32 %stack_var_-40.0.reload to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %24, %16
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5a5fe

dec_label_pc_5a5fe:                               ; preds = %dec_label_pc_5a5fe, %dec_label_pc_5a5db
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %27 = mul i64 %indvars.iv.reload, 4
  %28 = add i64 %27, %16
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5a636, label %dec_label_pc_5a5fe

dec_label_pc_5a627:                               ; preds = %dec_label_pc_5a5cf
  call void @printLine(ptr @global_var_b8880)
  br label %dec_label_pc_5a636

dec_label_pc_5a636:                               ; preds = %dec_label_pc_5a5fe, %dec_label_pc_5a627
  call void @free(ptr %15)
  br label %dec_label_pc_5a642

dec_label_pc_5a642:                               ; preds = %dec_label_pc_5a636, %dec_label_pc_5a56f
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

