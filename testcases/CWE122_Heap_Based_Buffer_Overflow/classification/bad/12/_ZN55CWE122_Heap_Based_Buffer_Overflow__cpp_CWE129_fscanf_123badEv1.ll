@global_var_abed0 = external constant [32 x i8]
@global_var_abef0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr
@global_var_abec8 = external constant [3 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37854:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %indvars.iv12.reg2mem = alloca i64, align 8
  %indvars.iv15.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca i64, align 8
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store i32 7, ptr %stack_var_-44.0.reg2mem, align 4
  br i1 %4, label %dec_label_pc_378af, label %dec_label_pc_37884

dec_label_pc_37884:                               ; preds = %dec_label_pc_37854
  %5 = load ptr, ptr @global_var_dc090, align 8
  %6 = call i32 (ptr, ptr, ...) @fscanf(ptr %5, ptr @global_var_abec8)
  store i32 -1, ptr %stack_var_-44.0.reg2mem, align 4
  store i64 ptrtoint (ptr @global_var_abec8 to i64), ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_378af

dec_label_pc_378af:                               ; preds = %dec_label_pc_37854, %dec_label_pc_37884
  %rsi.0.reload = load i64, ptr %rsi.0.reg2mem, align 8
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %7 = call i32 @globalReturnsTrueOrFalse()
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  %11 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv15.reg2mem, align 8
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br i1 %10, label %dec_label_pc_37991, label %dec_label_pc_378d8

dec_label_pc_378d8:                               ; preds = %dec_label_pc_378af, %dec_label_pc_378d8
  %indvars.iv15.reload = load i64, ptr %indvars.iv15.reg2mem, align 8
  %12 = mul i64 %indvars.iv15.reload, 4
  %13 = add i64 %12, %11
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 4
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15.reload, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 10
  store i64 %indvars.iv.next16, ptr %indvars.iv15.reg2mem, align 8
  br i1 %exitcond17, label %dec_label_pc_378fc, label %dec_label_pc_378d8

dec_label_pc_378fc:                               ; preds = %dec_label_pc_378d8
  %15 = icmp slt i32 %stack_var_-44.0.reload, 0
  br i1 %15, label %dec_label_pc_3794f, label %dec_label_pc_37903

dec_label_pc_37903:                               ; preds = %dec_label_pc_378fc
  %16 = sext i32 %stack_var_-44.0.reload to i64
  %17 = mul i64 %16, 4
  %18 = add i64 %11, %17
  %19 = inttoptr i64 %18 to ptr
  store i32 1, ptr %19, align 4
  store i64 0, ptr %indvars.iv12.reg2mem, align 8
  br label %dec_label_pc_37926

dec_label_pc_37926:                               ; preds = %dec_label_pc_37926, %dec_label_pc_37903
  %indvars.iv12.reload = load i64, ptr %indvars.iv12.reg2mem, align 8
  %20 = mul i64 %indvars.iv12.reload, 4
  %21 = add i64 %20, %11
  %22 = inttoptr i64 %21 to ptr
  %23 = load i32, ptr %22, align 4
  call void @printIntLine(i32 %23)
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12.reload, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 10
  store i64 %indvars.iv.next13, ptr %indvars.iv12.reg2mem, align 8
  br i1 %exitcond14, label %dec_label_pc_3795e, label %dec_label_pc_37926

dec_label_pc_3794f:                               ; preds = %dec_label_pc_378fc
  call void @printLine(ptr @global_var_abed0)
  br label %dec_label_pc_3795e

dec_label_pc_3795e:                               ; preds = %dec_label_pc_37926, %dec_label_pc_3794f
  %24 = icmp eq i64 %11, 0
  br i1 %24, label %dec_label_pc_37a32, label %dec_label_pc_37969

dec_label_pc_37969:                               ; preds = %dec_label_pc_3795e
  %25 = inttoptr i64 %11 to ptr
  %26 = and i64 %rsi.0.reload, 4294967295
  %27 = inttoptr i64 %26 to ptr
  call void @_ZdaPv(ptr %25, ptr %27)
  br label %dec_label_pc_37a32

dec_label_pc_37991:                               ; preds = %dec_label_pc_378af, %dec_label_pc_37991
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %28 = mul i64 %indvars.iv9.reload, 4
  %29 = add i64 %28, %11
  %30 = inttoptr i64 %29 to ptr
  store i32 0, ptr %30, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_379b5, label %dec_label_pc_37991

dec_label_pc_379b5:                               ; preds = %dec_label_pc_37991
  %31 = icmp slt i32 %stack_var_-44.0.reload, 0
  br i1 %31, label %dec_label_pc_37a10, label %dec_label_pc_379c4

dec_label_pc_379c4:                               ; preds = %dec_label_pc_379b5
  %32 = sext i32 %stack_var_-44.0.reload to i64
  %33 = mul i64 %32, 4
  %34 = add i64 %11, %33
  %35 = inttoptr i64 %34 to ptr
  store i32 1, ptr %35, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_379e7

dec_label_pc_379e7:                               ; preds = %dec_label_pc_379e7, %dec_label_pc_379c4
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %36 = mul i64 %indvars.iv.reload, 4
  %37 = add i64 %36, %11
  %38 = inttoptr i64 %37 to ptr
  %39 = load i32, ptr %38, align 4
  call void @printIntLine(i32 %39)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_37a1f, label %dec_label_pc_379e7

dec_label_pc_37a10:                               ; preds = %dec_label_pc_379b5
  call void @printLine(ptr @global_var_abef0)
  br label %dec_label_pc_37a1f

dec_label_pc_37a1f:                               ; preds = %dec_label_pc_379e7, %dec_label_pc_37a10
  %40 = icmp eq i64 %11, 0
  br i1 %40, label %dec_label_pc_37a32, label %dec_label_pc_37a26

dec_label_pc_37a26:                               ; preds = %dec_label_pc_37a1f
  %41 = inttoptr i64 %11 to ptr
  %42 = and i64 %rsi.0.reload, 4294967295
  %43 = inttoptr i64 %42 to ptr
  call void @_ZdaPv(ptr %41, ptr %43)
  br label %dec_label_pc_37a32

dec_label_pc_37a32:                               ; preds = %dec_label_pc_37a26, %dec_label_pc_37a1f, %dec_label_pc_37969, %dec_label_pc_3795e
  %44 = call i64 @__readfsqword(i64 40)
  %45 = icmp eq i64 %0, %44
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %45, label %dec_label_pc_37a47, label %dec_label_pc_37a42

dec_label_pc_37a42:                               ; preds = %dec_label_pc_37a32
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_37a47

dec_label_pc_37a47:                               ; preds = %dec_label_pc_37a42, %dec_label_pc_37a32
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

