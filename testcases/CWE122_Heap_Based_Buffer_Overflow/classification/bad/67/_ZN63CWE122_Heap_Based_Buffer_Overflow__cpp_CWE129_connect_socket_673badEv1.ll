@global_var_a9c04 = external constant [10 x i8]
@global_var_a9c10 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d274:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-68.04.reg2mem = alloca i64, align 8
  %stack_var_-68.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i64 4294967295, ptr %stack_var_-68.04.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1d370, label %dec_label_pc_1d2be

dec_label_pc_1d2be:                               ; preds = %dec_label_pc_1d274
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_a9c04)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  store i64 4294967295, ptr %stack_var_-68.0.ph.reg2mem, align 8
  br i1 %10, label %dec_label_pc_1d366, label %dec_label_pc_1d31a

dec_label_pc_1d31a:                               ; preds = %dec_label_pc_1d2be
  %11 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i64 4294967295, ptr %stack_var_-68.0.ph.reg2mem, align 8
  br i1 %13, label %dec_label_pc_1d366, label %dec_label_pc_1d341

dec_label_pc_1d341:                               ; preds = %dec_label_pc_1d31a
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  %phitmp = zext i32 %20 to i64
  store i64 %phitmp, ptr %stack_var_-68.0.ph.reg2mem, align 8
  br label %dec_label_pc_1d366

dec_label_pc_1d366:                               ; preds = %dec_label_pc_1d2be, %dec_label_pc_1d341, %dec_label_pc_1d31a
  %stack_var_-68.0.ph.reload = load i64, ptr %stack_var_-68.0.ph.reg2mem, align 8
  %21 = call i32 @close(i32 %1)
  store i64 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.04.reg2mem, align 8
  br label %dec_label_pc_1d370

dec_label_pc_1d370:                               ; preds = %dec_label_pc_1d274, %dec_label_pc_1d366
  %stack_var_-68.04.reload = load i64, ptr %stack_var_-68.04.reg2mem, align 8
  %22 = call i64 @anon1(i64 %stack_var_-68.04.reload)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_1d395, label %dec_label_pc_1d390

dec_label_pc_1d390:                               ; preds = %dec_label_pc_1d370
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d395

dec_label_pc_1d395:                               ; preds = %dec_label_pc_1d390, %dec_label_pc_1d370
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_1d51f:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_1d54b

dec_label_pc_1d54b:                               ; preds = %dec_label_pc_1d54b, %dec_label_pc_1d51f
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %3 = mul i64 %indvars.iv6.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_1d56f, label %dec_label_pc_1d54b

dec_label_pc_1d56f:                               ; preds = %dec_label_pc_1d54b
  %6 = trunc i64 %arg1 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %dec_label_pc_1d5c1, label %dec_label_pc_1d575

dec_label_pc_1d575:                               ; preds = %dec_label_pc_1d56f
  %sext = mul i64 %arg1, 4294967296
  %8 = ashr exact i64 %sext, 30
  %9 = add i64 %2, %8
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1d598

dec_label_pc_1d598:                               ; preds = %dec_label_pc_1d598, %dec_label_pc_1d575
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %11 = mul i64 %indvars.iv.reload, 4
  %12 = add i64 %11, %2
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1d5d0, label %dec_label_pc_1d598

dec_label_pc_1d5c1:                               ; preds = %dec_label_pc_1d56f
  call void @printLine(ptr @global_var_a9c10)
  br label %dec_label_pc_1d5d0

dec_label_pc_1d5d0:                               ; preds = %dec_label_pc_1d598, %dec_label_pc_1d5c1
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %dec_label_pc_1d5e3, label %dec_label_pc_1d5d7

dec_label_pc_1d5d7:                               ; preds = %dec_label_pc_1d5d0
  %16 = inttoptr i64 %2 to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_1d5e3

dec_label_pc_1d5e3:                               ; preds = %dec_label_pc_1d5d7, %dec_label_pc_1d5d0
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

