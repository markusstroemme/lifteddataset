@global_var_a9680 = external constant [10 x i8]
@global_var_a9690 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_17d85:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %rsi.05.reg2mem = alloca i64, align 8
  %.reg2mem11 = alloca i32, align 4
  %rsi.0.ph.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %.reg2mem11, align 4
  store i64 1, ptr %rsi.05.reg2mem, align 8
  br i1 %2, label %dec_label_pc_17e89, label %dec_label_pc_17dd7

dec_label_pc_17dd7:                               ; preds = %dec_label_pc_17d85
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_a9680)
  %5 = call i16 @htons(i16 27015)
  %6 = ptrtoint ptr %stack_var_-56 to i64
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @connect(i32 %1, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  %10 = icmp eq i1 %9, false
  %11 = icmp eq i1 %10, false
  store i32 -1, ptr %.reg2mem, align 4
  store i64 %6, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %11, label %dec_label_pc_17e7f, label %dec_label_pc_17e33

dec_label_pc_17e33:                               ; preds = %dec_label_pc_17dd7
  %12 = ptrtoint ptr %stack_var_-30 to i64
  %13 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %14 = add i32 %13, 1
  %15 = icmp ult i32 %14, 2
  store i32 -1, ptr %.reg2mem, align 4
  store i64 %12, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %15, label %dec_label_pc_17e7f, label %dec_label_pc_17e5a

dec_label_pc_17e5a:                               ; preds = %dec_label_pc_17e33
  %16 = ptrtoint ptr %stack_var_-8 to i64
  %17 = sext i32 %13 to i64
  %18 = add i64 %16, -22
  %19 = add i64 %18, %17
  %20 = inttoptr i64 %19 to ptr
  store i8 0, ptr %20, align 1
  %21 = bitcast ptr %stack_var_-30 to ptr
  %22 = call i32 @atoi(ptr nonnull %21)
  store i32 %22, ptr %.reg2mem, align 4
  store i64 %12, ptr %rsi.0.ph.reg2mem, align 8
  br label %dec_label_pc_17e7f

dec_label_pc_17e7f:                               ; preds = %dec_label_pc_17dd7, %dec_label_pc_17e5a, %dec_label_pc_17e33
  %rsi.0.ph.reload = load i64, ptr %rsi.0.ph.reg2mem, align 8
  %.reload = load i32, ptr %.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  store i32 %.reload, ptr %.reg2mem11, align 4
  store i64 %rsi.0.ph.reload, ptr %rsi.05.reg2mem, align 8
  br label %dec_label_pc_17e89

dec_label_pc_17e89:                               ; preds = %dec_label_pc_17d85, %dec_label_pc_17e7f
  %rsi.05.reload = load i64, ptr %rsi.05.reg2mem, align 8
  %.reload12 = load i32, ptr %.reg2mem11, align 4
  %24 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br label %dec_label_pc_17ea9

dec_label_pc_17ea9:                               ; preds = %dec_label_pc_17ea9, %dec_label_pc_17e89
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %25 = mul i64 %indvars.iv8.reload, 4
  %26 = add i64 %25, %24
  %27 = inttoptr i64 %26 to ptr
  store i32 0, ptr %27, align 4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_17ecd, label %dec_label_pc_17ea9

dec_label_pc_17ecd:                               ; preds = %dec_label_pc_17ea9
  %28 = icmp slt i32 %.reload12, 0
  br i1 %28, label %dec_label_pc_17f1f, label %dec_label_pc_17ed3

dec_label_pc_17ed3:                               ; preds = %dec_label_pc_17ecd
  %29 = sext i32 %.reload12 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 %30, %24
  %32 = inttoptr i64 %31 to ptr
  store i32 1, ptr %32, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_17ef6

dec_label_pc_17ef6:                               ; preds = %dec_label_pc_17ef6, %dec_label_pc_17ed3
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %33 = mul i64 %indvars.iv.reload, 4
  %34 = add i64 %33, %24
  %35 = inttoptr i64 %34 to ptr
  %36 = load i32, ptr %35, align 4
  call void @printIntLine(i32 %36)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_17f2e, label %dec_label_pc_17ef6

dec_label_pc_17f1f:                               ; preds = %dec_label_pc_17ecd
  call void @printLine(ptr @global_var_a9690)
  br label %dec_label_pc_17f2e

dec_label_pc_17f2e:                               ; preds = %dec_label_pc_17ef6, %dec_label_pc_17f1f
  %37 = icmp eq i64 %24, 0
  br i1 %37, label %dec_label_pc_17f41, label %dec_label_pc_17f35

dec_label_pc_17f35:                               ; preds = %dec_label_pc_17f2e
  %38 = inttoptr i64 %24 to ptr
  %39 = and i64 %rsi.05.reload, 4294967295
  %40 = inttoptr i64 %39 to ptr
  call void @_ZdaPv(ptr %38, ptr %40)
  br label %dec_label_pc_17f41

dec_label_pc_17f41:                               ; preds = %dec_label_pc_17f35, %dec_label_pc_17f2e
  %41 = call i64 @__readfsqword(i64 40)
  %42 = icmp eq i64 %0, %41
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %42, label %dec_label_pc_17f56, label %dec_label_pc_17f51

dec_label_pc_17f51:                               ; preds = %dec_label_pc_17f41
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_17f56

dec_label_pc_17f56:                               ; preds = %dec_label_pc_17f51, %dec_label_pc_17f41
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

