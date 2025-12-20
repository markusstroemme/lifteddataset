@global_var_aa8f0 = external constant [16 x i8]
@global_var_aa900 = external constant [32 x i8]
@global_var_aa920 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2964e:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv10.reg2mem = alloca i64, align 8
  %indvars.iv13.reg2mem = alloca i64, align 8
  %indvars.iv16.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca ptr, align 8
  %stack_var_-60.0.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %stack_var_-30 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_296d7, label %dec_label_pc_2967e

dec_label_pc_2967e:                               ; preds = %dec_label_pc_2964e
  store i64 0, ptr %stack_var_-30, align 8
  %7 = load ptr, ptr @global_var_dc090, align 8
  %8 = bitcast ptr %stack_var_-30 to ptr
  %9 = call ptr @fgets(ptr nonnull %8, i32 14, ptr %7)
  %10 = icmp eq ptr %9, null
  %11 = icmp eq i1 %10, false
  %12 = icmp eq i1 %11, false
  br i1 %12, label %dec_label_pc_296c6, label %dec_label_pc_296b5

dec_label_pc_296b5:                               ; preds = %dec_label_pc_2967e
  %13 = call i32 @atoi(ptr nonnull %8)
  store i32 %13, ptr %stack_var_-60.0.reg2mem, align 4
  store ptr inttoptr (i64 14 to ptr), ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_296de

dec_label_pc_296c6:                               ; preds = %dec_label_pc_2967e
  call void @printLine(ptr @global_var_aa8f0)
  store i32 -1, ptr %stack_var_-60.0.reg2mem, align 4
  store ptr inttoptr (i64 14 to ptr), ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_296de

dec_label_pc_296d7:                               ; preds = %dec_label_pc_2964e
  %phitmp = and i64 %1, 4294967295
  %phitmp5 = inttoptr i64 %phitmp to ptr
  store i32 7, ptr %stack_var_-60.0.reg2mem, align 4
  store ptr %phitmp5, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_296de

dec_label_pc_296de:                               ; preds = %dec_label_pc_296d7, %dec_label_pc_296c6, %dec_label_pc_296b5
  %rsi.0.reload = load ptr, ptr %rsi.0.reg2mem, align 8
  %stack_var_-60.0.reload = load i32, ptr %stack_var_-60.0.reg2mem, align 4
  %14 = call i32 @globalReturnsTrueOrFalse()
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq i1 %15, false
  %17 = icmp eq i1 %16, false
  %18 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv16.reg2mem, align 8
  store i64 0, ptr %indvars.iv10.reg2mem, align 8
  br i1 %17, label %dec_label_pc_297bf, label %dec_label_pc_29707

dec_label_pc_29707:                               ; preds = %dec_label_pc_296de, %dec_label_pc_29707
  %indvars.iv16.reload = load i64, ptr %indvars.iv16.reg2mem, align 8
  %19 = mul i64 %indvars.iv16.reload, 4
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16.reload, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 10
  store i64 %indvars.iv.next17, ptr %indvars.iv16.reg2mem, align 8
  br i1 %exitcond18, label %dec_label_pc_2972b, label %dec_label_pc_29707

dec_label_pc_2972b:                               ; preds = %dec_label_pc_29707
  %22 = icmp slt i32 %stack_var_-60.0.reload, 0
  br i1 %22, label %dec_label_pc_2977d, label %dec_label_pc_29731

dec_label_pc_29731:                               ; preds = %dec_label_pc_2972b
  %23 = sext i32 %stack_var_-60.0.reload to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %18, %24
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv13.reg2mem, align 8
  br label %dec_label_pc_29754

dec_label_pc_29754:                               ; preds = %dec_label_pc_29754, %dec_label_pc_29731
  %indvars.iv13.reload = load i64, ptr %indvars.iv13.reg2mem, align 8
  %27 = mul i64 %indvars.iv13.reload, 4
  %28 = add i64 %27, %18
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13.reload, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 10
  store i64 %indvars.iv.next14, ptr %indvars.iv13.reg2mem, align 8
  br i1 %exitcond15, label %dec_label_pc_2978c, label %dec_label_pc_29754

dec_label_pc_2977d:                               ; preds = %dec_label_pc_2972b
  call void @printLine(ptr @global_var_aa900)
  br label %dec_label_pc_2978c

dec_label_pc_2978c:                               ; preds = %dec_label_pc_29754, %dec_label_pc_2977d
  %31 = icmp eq i64 %18, 0
  br i1 %31, label %dec_label_pc_2985d, label %dec_label_pc_29797

dec_label_pc_29797:                               ; preds = %dec_label_pc_2978c
  %32 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %32, ptr %rsi.0.reload)
  br label %dec_label_pc_2985d

dec_label_pc_297bf:                               ; preds = %dec_label_pc_296de, %dec_label_pc_297bf
  %indvars.iv10.reload = load i64, ptr %indvars.iv10.reg2mem, align 8
  %33 = mul i64 %indvars.iv10.reload, 4
  %34 = add i64 %33, %18
  %35 = inttoptr i64 %34 to ptr
  store i32 0, ptr %35, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10.reload, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 10
  store i64 %indvars.iv.next11, ptr %indvars.iv10.reg2mem, align 8
  br i1 %exitcond12, label %dec_label_pc_297e3, label %dec_label_pc_297bf

dec_label_pc_297e3:                               ; preds = %dec_label_pc_297bf
  %36 = icmp ugt i32 %stack_var_-60.0.reload, 9
  br i1 %36, label %dec_label_pc_2983b, label %dec_label_pc_297ef

dec_label_pc_297ef:                               ; preds = %dec_label_pc_297e3
  %37 = sext i32 %stack_var_-60.0.reload to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %18, %38
  %40 = inttoptr i64 %39 to ptr
  store i32 1, ptr %40, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_29812

dec_label_pc_29812:                               ; preds = %dec_label_pc_29812, %dec_label_pc_297ef
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %41 = mul i64 %indvars.iv.reload, 4
  %42 = add i64 %41, %18
  %43 = inttoptr i64 %42 to ptr
  %44 = load i32, ptr %43, align 4
  call void @printIntLine(i32 %44)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2984a, label %dec_label_pc_29812

dec_label_pc_2983b:                               ; preds = %dec_label_pc_297e3
  call void @printLine(ptr @global_var_aa920)
  br label %dec_label_pc_2984a

dec_label_pc_2984a:                               ; preds = %dec_label_pc_29812, %dec_label_pc_2983b
  %45 = icmp eq i64 %18, 0
  br i1 %45, label %dec_label_pc_2985d, label %dec_label_pc_29851

dec_label_pc_29851:                               ; preds = %dec_label_pc_2984a
  %46 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %46, ptr %rsi.0.reload)
  br label %dec_label_pc_2985d

dec_label_pc_2985d:                               ; preds = %dec_label_pc_29851, %dec_label_pc_2984a, %dec_label_pc_29797, %dec_label_pc_2978c
  %47 = call i64 @__readfsqword(i64 40)
  %48 = icmp eq i64 %2, %47
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %48, label %dec_label_pc_29872, label %dec_label_pc_2986d

dec_label_pc_2986d:                               ; preds = %dec_label_pc_2985d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_29872

dec_label_pc_29872:                               ; preds = %dec_label_pc_2986d, %dec_label_pc_2985d
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

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

