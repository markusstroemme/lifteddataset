@global_var_a9a28 = external constant [32 x i8]
@global_var_a9a6c = external constant [10 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1b44d:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @anon1(i32 -1)
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_1b484

dec_label_pc_1b484:                               ; preds = %dec_label_pc_1b484, %dec_label_pc_1b44d
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %4 = mul i64 %indvars.iv5.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_1b4a8, label %dec_label_pc_1b484

dec_label_pc_1b4a8:                               ; preds = %dec_label_pc_1b484
  %7 = trunc i64 %2 to i32
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %dec_label_pc_1b4fa, label %dec_label_pc_1b4ae

dec_label_pc_1b4ae:                               ; preds = %dec_label_pc_1b4a8
  %sext = mul i64 %2, 4294967296
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1b4d1

dec_label_pc_1b4d1:                               ; preds = %dec_label_pc_1b4d1, %dec_label_pc_1b4ae
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1b509, label %dec_label_pc_1b4d1

dec_label_pc_1b4fa:                               ; preds = %dec_label_pc_1b4a8
  call void @printLine(ptr @global_var_a9a28)
  br label %dec_label_pc_1b509

dec_label_pc_1b509:                               ; preds = %dec_label_pc_1b4d1, %dec_label_pc_1b4fa
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_1b51c, label %dec_label_pc_1b510

dec_label_pc_1b510:                               ; preds = %dec_label_pc_1b509
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_1b51c

dec_label_pc_1b51c:                               ; preds = %dec_label_pc_1b510, %dec_label_pc_1b509
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @anon1(i32 %arg1) local_unnamed_addr {
dec_label_pc_1b6de:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-76.03.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 %arg1, ptr %stack_var_-76.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1b7d6, label %dec_label_pc_1b724

dec_label_pc_1b724:                               ; preds = %dec_label_pc_1b6de
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_a9a6c)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  store i32 %arg1, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_1b7cc, label %dec_label_pc_1b780

dec_label_pc_1b780:                               ; preds = %dec_label_pc_1b724
  %11 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 %arg1, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_1b7cc, label %dec_label_pc_1b7a7

dec_label_pc_1b7a7:                               ; preds = %dec_label_pc_1b780
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_1b7cc

dec_label_pc_1b7cc:                               ; preds = %dec_label_pc_1b724, %dec_label_pc_1b7a7, %dec_label_pc_1b780
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %1)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.03.reg2mem, align 4
  br label %dec_label_pc_1b7d6

dec_label_pc_1b7d6:                               ; preds = %dec_label_pc_1b6de, %dec_label_pc_1b7cc
  %stack_var_-76.03.reload = load i32, ptr %stack_var_-76.03.reg2mem, align 4
  %22 = zext i32 %stack_var_-76.03.reload to i64
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  store i64 %22, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_1b7ed, label %dec_label_pc_1b7e8

dec_label_pc_1b7e8:                               ; preds = %dec_label_pc_1b7d6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1b7ed

dec_label_pc_1b7ed:                               ; preds = %dec_label_pc_1b7e8, %dec_label_pc_1b7d6
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

