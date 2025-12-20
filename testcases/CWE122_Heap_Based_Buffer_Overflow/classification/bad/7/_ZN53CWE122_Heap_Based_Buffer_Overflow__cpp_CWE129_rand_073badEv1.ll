@global_var_af818 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc054 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_628af:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc054, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store i32 %2, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %4, label %dec_label_pc_62917, label %dec_label_pc_628ce

dec_label_pc_628ce:                               ; preds = %dec_label_pc_628af
  %5 = call i32 @rand()
  %6 = urem i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = call i32 @rand()
  %9 = mul i32 %8, 1073741824
  %10 = call i32 @rand()
  %11 = mul i32 %10, 32768
  %12 = xor i32 %11, %9
  %13 = call i32 @rand()
  %14 = xor i32 %12, %13
  %15 = sext i1 %7 to i32
  %storemerge3.in = xor i32 %14, %15
  %.pre = load i32, ptr @global_var_dc054, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_62917

dec_label_pc_62917:                               ; preds = %dec_label_pc_628ce, %dec_label_pc_628af
  %.reload = load i32, ptr %.reg2mem, align 4
  %16 = zext i32 %.reload to i64
  %17 = icmp eq i32 %.reload, 5
  %18 = icmp eq i1 %17, false
  store i64 %16, ptr %rax.2.reg2mem, align 8
  br i1 %18, label %dec_label_pc_629d5, label %dec_label_pc_62926

dec_label_pc_62926:                               ; preds = %dec_label_pc_62917
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %19 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_6293d

dec_label_pc_6293d:                               ; preds = %dec_label_pc_6293d, %dec_label_pc_62926
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %20 = mul i64 %indvars.iv6.reload, 4
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i32 0, ptr %22, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_62961, label %dec_label_pc_6293d

dec_label_pc_62961:                               ; preds = %dec_label_pc_6293d
  %23 = icmp slt i32 %stack_var_-40.0.reload, 0
  br i1 %23, label %dec_label_pc_629b3, label %dec_label_pc_62967

dec_label_pc_62967:                               ; preds = %dec_label_pc_62961
  %24 = sext i32 %stack_var_-40.0.reload to i64
  %25 = mul i64 %24, 4
  %26 = add i64 %19, %25
  %27 = inttoptr i64 %26 to ptr
  store i32 1, ptr %27, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_6298a

dec_label_pc_6298a:                               ; preds = %dec_label_pc_6298a, %dec_label_pc_62967
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %28 = mul i64 %indvars.iv.reload, 4
  %29 = add i64 %28, %19
  %30 = inttoptr i64 %29 to ptr
  %31 = load i32, ptr %30, align 4
  call void @printIntLine(i32 %31)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_629c2, label %dec_label_pc_6298a

dec_label_pc_629b3:                               ; preds = %dec_label_pc_62961
  call void @printLine(ptr @global_var_af818)
  br label %dec_label_pc_629c2

dec_label_pc_629c2:                               ; preds = %dec_label_pc_6298a, %dec_label_pc_629b3
  %32 = icmp eq i64 %19, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %32, label %dec_label_pc_629d5, label %dec_label_pc_629c9

dec_label_pc_629c9:                               ; preds = %dec_label_pc_629c2
  %33 = inttoptr i64 %19 to ptr
  %34 = and i64 %1, 4294967295
  %35 = inttoptr i64 %34 to ptr
  call void @_ZdaPv(ptr %33, ptr %35)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_629d5

dec_label_pc_629d5:                               ; preds = %dec_label_pc_629c9, %dec_label_pc_629c2, %dec_label_pc_62917
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

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

