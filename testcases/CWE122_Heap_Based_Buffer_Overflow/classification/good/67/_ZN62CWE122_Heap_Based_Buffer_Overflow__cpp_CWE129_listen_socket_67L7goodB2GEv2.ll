@global_var_aee48 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5ccf4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72.036.reg2mem = alloca i64, align 8
  %stack_var_-72.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i64 4294967295, ptr %stack_var_-72.036.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5ce38, label %dec_label_pc_5cd45

dec_label_pc_5cd45:                               ; preds = %dec_label_pc_5ccf4
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_5ce28.thread7, label %dec_label_pc_5cd96

dec_label_pc_5cd96:                               ; preds = %dec_label_pc_5cd45
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_5ce28.thread7, label %dec_label_pc_5cdaf

dec_label_pc_5cdaf:                               ; preds = %dec_label_pc_5cd96
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_5ce28.thread7, label %dec_label_pc_5cdcc

dec_label_pc_5cdcc:                               ; preds = %dec_label_pc_5cdaf
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i64 4294967295, ptr %stack_var_-72.0.ph.reg2mem, align 8
  br i1 %18, label %dec_label_pc_5ce2e, label %dec_label_pc_5cdf3

dec_label_pc_5cdf3:                               ; preds = %dec_label_pc_5cdcc
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  %phitmp = zext i32 %25 to i64
  store i64 %phitmp, ptr %stack_var_-72.0.ph.reg2mem, align 8
  br label %dec_label_pc_5ce2e

dec_label_pc_5ce28.thread7:                       ; preds = %dec_label_pc_5cdaf, %dec_label_pc_5cd96, %dec_label_pc_5cd45
  %26 = call i32 @close(i32 %1)
  store i64 4294967295, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_5ce38

dec_label_pc_5ce2e:                               ; preds = %dec_label_pc_5cdf3, %dec_label_pc_5cdcc
  %stack_var_-72.0.ph.reload = load i64, ptr %stack_var_-72.0.ph.reg2mem, align 8
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  store i64 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_5ce38

dec_label_pc_5ce38:                               ; preds = %dec_label_pc_5ccf4, %dec_label_pc_5ce28.thread7, %dec_label_pc_5ce2e
  %stack_var_-72.036.reload = load i64, ptr %stack_var_-72.036.reg2mem, align 8
  %29 = call i64 @anon1(i64 %stack_var_-72.036.reload)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %31, label %dec_label_pc_5ce5d, label %dec_label_pc_5ce58

dec_label_pc_5ce58:                               ; preds = %dec_label_pc_5ce38
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5ce5d

dec_label_pc_5ce5d:                               ; preds = %dec_label_pc_5ce58, %dec_label_pc_5ce38
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_5d002:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_5d02e

dec_label_pc_5d02e:                               ; preds = %dec_label_pc_5d02e, %dec_label_pc_5d002
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %3 = mul i64 %indvars.iv6.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_5d052, label %dec_label_pc_5d02e

dec_label_pc_5d052:                               ; preds = %dec_label_pc_5d02e
  %6 = trunc i64 %arg1 to i32
  %7 = icmp ugt i32 %6, 9
  br i1 %7, label %dec_label_pc_5d0aa, label %dec_label_pc_5d05e

dec_label_pc_5d05e:                               ; preds = %dec_label_pc_5d052
  %sext = mul i64 %arg1, 4294967296
  %8 = ashr exact i64 %sext, 30
  %9 = add i64 %2, %8
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5d081

dec_label_pc_5d081:                               ; preds = %dec_label_pc_5d081, %dec_label_pc_5d05e
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %11 = mul i64 %indvars.iv.reload, 4
  %12 = add i64 %11, %2
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5d0b9, label %dec_label_pc_5d081

dec_label_pc_5d0aa:                               ; preds = %dec_label_pc_5d052
  call void @printLine(ptr @global_var_aee48)
  br label %dec_label_pc_5d0b9

dec_label_pc_5d0b9:                               ; preds = %dec_label_pc_5d081, %dec_label_pc_5d0aa
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %dec_label_pc_5d0cc, label %dec_label_pc_5d0c0

dec_label_pc_5d0c0:                               ; preds = %dec_label_pc_5d0b9
  %16 = inttoptr i64 %2 to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_5d0cc

dec_label_pc_5d0cc:                               ; preds = %dec_label_pc_5d0c0, %dec_label_pc_5d0b9
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

