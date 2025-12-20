@global_var_ae8d0 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_561fc:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %rsi.089.reg2mem = alloca i64, align 8
  %stack_var_-92.0410.reg2mem = alloca i32, align 4
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-92.0410.reg2mem, align 4
  store i64 1, ptr %rsi.089.reg2mem, align 8
  br i1 %2, label %dec_label_pc_56340, label %dec_label_pc_5624d

dec_label_pc_5624d:                               ; preds = %dec_label_pc_561fc
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = ptrtoint ptr %stack_var_-56 to i64
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @bind(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  store i64 %5, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %10, label %dec_label_pc_56330.thread11, label %dec_label_pc_5629e

dec_label_pc_5629e:                               ; preds = %dec_label_pc_5624d
  %11 = call i32 @listen(i32 %1, i32 5)
  %12 = icmp eq i32 %11, -1
  %13 = icmp eq i1 %12, false
  %14 = icmp eq i1 %13, false
  store i64 5, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %14, label %dec_label_pc_56330.thread11, label %dec_label_pc_562b7

dec_label_pc_562b7:                               ; preds = %dec_label_pc_5629e
  %15 = call i32 @accept(i32 %1, ptr null, ptr null)
  %16 = icmp eq i32 %15, -1
  store i64 0, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %16, label %dec_label_pc_56330.thread11, label %dec_label_pc_562d4

dec_label_pc_562d4:                               ; preds = %dec_label_pc_562b7
  %17 = call i32 @recv(i32 %15, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %18 = add i32 %17, 1
  %19 = icmp ult i32 %18, 2
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %19, label %dec_label_pc_56336, label %dec_label_pc_562fb

dec_label_pc_562fb:                               ; preds = %dec_label_pc_562d4
  %20 = ptrtoint ptr %stack_var_-8 to i64
  %21 = sext i32 %17 to i64
  %22 = add i64 %20, -22
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to ptr
  store i8 0, ptr %24, align 1
  %25 = bitcast ptr %stack_var_-30 to ptr
  %26 = call i32 @atoi(ptr nonnull %25)
  store i32 %26, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br label %dec_label_pc_56336

dec_label_pc_56330.thread11:                      ; preds = %dec_label_pc_562b7, %dec_label_pc_5629e, %dec_label_pc_5624d
  %rsi.0.ph.ph.reload = load i64, ptr %rsi.0.ph.ph.reg2mem, align 8
  %27 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-92.0410.reg2mem, align 4
  store i64 %rsi.0.ph.ph.reload, ptr %rsi.089.reg2mem, align 8
  br label %dec_label_pc_56340

dec_label_pc_56336:                               ; preds = %dec_label_pc_562fb, %dec_label_pc_562d4
  %28 = ptrtoint ptr %stack_var_-30 to i64
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %29 = call i32 @close(i32 %1)
  %30 = call i32 @close(i32 %15)
  store i32 %stack_var_-92.0.ph.reload, ptr %stack_var_-92.0410.reg2mem, align 4
  store i64 %28, ptr %rsi.089.reg2mem, align 8
  br label %dec_label_pc_56340

dec_label_pc_56340:                               ; preds = %dec_label_pc_561fc, %dec_label_pc_56330.thread11, %dec_label_pc_56336
  %rsi.089.reload = load i64, ptr %rsi.089.reg2mem, align 8
  %stack_var_-92.0410.reload = load i32, ptr %stack_var_-92.0410.reg2mem, align 4
  %31 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br label %dec_label_pc_56363

dec_label_pc_56363:                               ; preds = %dec_label_pc_56363, %dec_label_pc_56340
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %32 = mul i64 %indvars.iv14.reload, 4
  %33 = add i64 %32, %31
  %34 = inttoptr i64 %33 to ptr
  store i32 0, ptr %34, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_56387, label %dec_label_pc_56363

dec_label_pc_56387:                               ; preds = %dec_label_pc_56363
  %35 = icmp slt i32 %stack_var_-92.0410.reload, 0
  br i1 %35, label %dec_label_pc_563d9, label %dec_label_pc_5638d

dec_label_pc_5638d:                               ; preds = %dec_label_pc_56387
  %36 = sext i32 %stack_var_-92.0410.reload to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %31, %37
  %39 = inttoptr i64 %38 to ptr
  store i32 1, ptr %39, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_563b0

dec_label_pc_563b0:                               ; preds = %dec_label_pc_563b0, %dec_label_pc_5638d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %40 = mul i64 %indvars.iv.reload, 4
  %41 = add i64 %40, %31
  %42 = inttoptr i64 %41 to ptr
  %43 = load i32, ptr %42, align 4
  call void @printIntLine(i32 %43)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_563e8, label %dec_label_pc_563b0

dec_label_pc_563d9:                               ; preds = %dec_label_pc_56387
  call void @printLine(ptr @global_var_ae8d0)
  br label %dec_label_pc_563e8

dec_label_pc_563e8:                               ; preds = %dec_label_pc_563b0, %dec_label_pc_563d9
  %44 = icmp eq i64 %31, 0
  br i1 %44, label %dec_label_pc_563fb, label %dec_label_pc_563ef

dec_label_pc_563ef:                               ; preds = %dec_label_pc_563e8
  %45 = inttoptr i64 %31 to ptr
  %46 = and i64 %rsi.089.reload, 4294967295
  %47 = inttoptr i64 %46 to ptr
  call void @_ZdaPv(ptr %45, ptr %47)
  br label %dec_label_pc_563fb

dec_label_pc_563fb:                               ; preds = %dec_label_pc_563ef, %dec_label_pc_563e8
  %48 = call i64 @__readfsqword(i64 40)
  %49 = icmp eq i64 %0, %48
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %49, label %dec_label_pc_56410, label %dec_label_pc_5640b

dec_label_pc_5640b:                               ; preds = %dec_label_pc_563fb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_56410

dec_label_pc_56410:                               ; preds = %dec_label_pc_5640b, %dec_label_pc_563fb
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

