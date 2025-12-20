@global_var_aee28 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5cb39:
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
  br i1 %2, label %dec_label_pc_5cc7d, label %dec_label_pc_5cb8a

dec_label_pc_5cb8a:                               ; preds = %dec_label_pc_5cb39
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_5cc6d.thread7, label %dec_label_pc_5cbdb

dec_label_pc_5cbdb:                               ; preds = %dec_label_pc_5cb8a
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_5cc6d.thread7, label %dec_label_pc_5cbf4

dec_label_pc_5cbf4:                               ; preds = %dec_label_pc_5cbdb
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_5cc6d.thread7, label %dec_label_pc_5cc11

dec_label_pc_5cc11:                               ; preds = %dec_label_pc_5cbf4
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i64 4294967295, ptr %stack_var_-72.0.ph.reg2mem, align 8
  br i1 %18, label %dec_label_pc_5cc73, label %dec_label_pc_5cc38

dec_label_pc_5cc38:                               ; preds = %dec_label_pc_5cc11
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
  br label %dec_label_pc_5cc73

dec_label_pc_5cc6d.thread7:                       ; preds = %dec_label_pc_5cbf4, %dec_label_pc_5cbdb, %dec_label_pc_5cb8a
  %26 = call i32 @close(i32 %1)
  store i64 4294967295, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_5cc7d

dec_label_pc_5cc73:                               ; preds = %dec_label_pc_5cc38, %dec_label_pc_5cc11
  %stack_var_-72.0.ph.reload = load i64, ptr %stack_var_-72.0.ph.reg2mem, align 8
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  store i64 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_5cc7d

dec_label_pc_5cc7d:                               ; preds = %dec_label_pc_5cb39, %dec_label_pc_5cc6d.thread7, %dec_label_pc_5cc73
  %stack_var_-72.036.reload = load i64, ptr %stack_var_-72.036.reg2mem, align 8
  %29 = call i64 @anon1(i64 %stack_var_-72.036.reload)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %31, label %dec_label_pc_5cca2, label %dec_label_pc_5cc9d

dec_label_pc_5cc9d:                               ; preds = %dec_label_pc_5cc7d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5cca2

dec_label_pc_5cca2:                               ; preds = %dec_label_pc_5cc9d, %dec_label_pc_5cc7d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_5ce74:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_5cea0

dec_label_pc_5cea0:                               ; preds = %dec_label_pc_5cea0, %dec_label_pc_5ce74
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %3 = mul i64 %indvars.iv6.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_5cec4, label %dec_label_pc_5cea0

dec_label_pc_5cec4:                               ; preds = %dec_label_pc_5cea0
  %6 = trunc i64 %arg1 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %dec_label_pc_5cf16, label %dec_label_pc_5ceca

dec_label_pc_5ceca:                               ; preds = %dec_label_pc_5cec4
  %sext = mul i64 %arg1, 4294967296
  %8 = ashr exact i64 %sext, 30
  %9 = add i64 %2, %8
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5ceed

dec_label_pc_5ceed:                               ; preds = %dec_label_pc_5ceed, %dec_label_pc_5ceca
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %11 = mul i64 %indvars.iv.reload, 4
  %12 = add i64 %11, %2
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5cf25, label %dec_label_pc_5ceed

dec_label_pc_5cf16:                               ; preds = %dec_label_pc_5cec4
  call void @printLine(ptr @global_var_aee28)
  br label %dec_label_pc_5cf25

dec_label_pc_5cf25:                               ; preds = %dec_label_pc_5ceed, %dec_label_pc_5cf16
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %dec_label_pc_5cf38, label %dec_label_pc_5cf2c

dec_label_pc_5cf2c:                               ; preds = %dec_label_pc_5cf25
  %16 = inttoptr i64 %2 to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_5cf38

dec_label_pc_5cf38:                               ; preds = %dec_label_pc_5cf2c, %dec_label_pc_5cf25
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

