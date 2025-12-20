@global_var_b85e0 = external constant [21 x i8]
@global_var_b85f8 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec04c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_57b20:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_ec04c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_57b88, label %dec_label_pc_57b3f

dec_label_pc_57b3f:                               ; preds = %dec_label_pc_57b20
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
  %.pr = load i32, ptr @global_var_ec04c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_57b88

dec_label_pc_57b88:                               ; preds = %dec_label_pc_57b3f, %dec_label_pc_57b20
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  br i1 %14, label %dec_label_pc_57ba7, label %dec_label_pc_57b93

dec_label_pc_57b93:                               ; preds = %dec_label_pc_57b88
  call void @printLine(ptr @global_var_b85e0)
  br label %dec_label_pc_57c66

dec_label_pc_57ba7:                               ; preds = %dec_label_pc_57b88
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %15 = call ptr @malloc(i32 40)
  %16 = ptrtoint ptr %15 to i64
  %17 = icmp eq ptr %15, null
  %18 = icmp eq i1 %17, false
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br i1 %18, label %dec_label_pc_57bcf, label %dec_label_pc_57bbc

dec_label_pc_57bbc:                               ; preds = %dec_label_pc_57ba7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_57bcf:                               ; preds = %dec_label_pc_57ba7, %dec_label_pc_57bcf
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %19 = mul i64 %indvars.iv7.reload, 4
  %20 = add i64 %19, %16
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_57bf3, label %dec_label_pc_57bcf

dec_label_pc_57bf3:                               ; preds = %dec_label_pc_57bcf
  %22 = icmp ugt i32 %stack_var_-40.0.reload, 9
  br i1 %22, label %dec_label_pc_57c4b, label %dec_label_pc_57bff

dec_label_pc_57bff:                               ; preds = %dec_label_pc_57bf3
  %23 = sext i32 %stack_var_-40.0.reload to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %24, %16
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_57c22

dec_label_pc_57c22:                               ; preds = %dec_label_pc_57c22, %dec_label_pc_57bff
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %27 = mul i64 %indvars.iv.reload, 4
  %28 = add i64 %27, %16
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_57c5a, label %dec_label_pc_57c22

dec_label_pc_57c4b:                               ; preds = %dec_label_pc_57bf3
  call void @printLine(ptr @global_var_b85f8)
  br label %dec_label_pc_57c5a

dec_label_pc_57c5a:                               ; preds = %dec_label_pc_57c22, %dec_label_pc_57c4b
  call void @free(ptr %15)
  br label %dec_label_pc_57c66

dec_label_pc_57c66:                               ; preds = %dec_label_pc_57c5a, %dec_label_pc_57b93
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

